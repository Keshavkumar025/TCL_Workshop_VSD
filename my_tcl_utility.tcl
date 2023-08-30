#! /bin/env tclsh


set filename [lindex $argv 0]
package require csv
package require struct::matrix
struct::matrix m
set f [open $filename]
csv::read2matrix $f m , auto
close $f
set columns [m columns]
m link my_arr
set rows [m rows]
set i 0
while {$i < $rows} {
		 puts "\nInfo: Setting $my_arr(0,$i) as '$my_arr(1,$i)'"
		 if {$i == 0} {
			 set [string map {" " ""} $my_arr(0,$i)] $my_arr(1,$i)
		 } else {
			 set [string map {" " ""} $my_arr(0,$i)] [file normalize $my_arr(1,$i)]
		 }
		  set i [expr {$i+1}]
	}


puts "\nInfo: Below are the list of initial variables and their values. User can use these variables for further debug. Use 'puts <variable name>' command to query value of below variables"
puts "DesignName = $DesignName"
puts "OutputDirectory = $OutputDirectory"
puts "NetlistDirectory = $NetlistDirectory"
puts "EarlyLibraryPath = $EarlyLibraryPath"
puts "LateLibraryPath = $LateLibraryPath"
puts "ConstraintsFile = $ConstraintsFile"


#-----Below portion of the script  checks whether the  directories and files mentioned in csv file, exists or not-----#
#---------------------------------------------------------------------------------------------------------------------#

if {! [file exists $EarlyLibraryPath] } {
	puts "\nError: Cannot find early cell library in path $EarlyLibraryPath. Exiting... "
	exit
} else {
	puts "\nInfo: Early cell library found in path $EarlyLibraryPath"
}


if {! [file exists $LateLibraryPath]} {
        puts "\nError: Cannot find late cell library in path $LateLibraryPath. Exiting... "
        exit 1
} else {
	puts "\nInfo: Late cell library found in path $LateLibraryPath"
}

if {![file isdirectory $OutputDirectory]} {
	puts "\nInfo: Cannot find output directory $OutputDirectory. Creating $OutputDirectory"
	file mkdir $OutputDirectory
} else {
	puts "\nInfo: Output directory found in path $OutputDirectory"
}

if {! [file isdirectory $NetlistDirectory]} {
	puts "\nError: Cannot find RTL netlist directory in path $NetlistDirectory. Exiting..."
	exit	
} else {
	puts "\nInfo: RTL netlist directory found in path $NetlistDirectory"
}

if {! [file exists $ConstraintsFile] } {
        puts "\nError: Cannot find constraints file in path $ConstraintsFile. Exiting... "
        exit
} else {
        puts "\nInfo: Constraints file found in path $ConstraintsFile"
}


#----------------------  Constraints file creations: SDC Format -----------------------------------#
#--------------------------------------------------------------------------------------------------#


puts "\nInfo: Dumping SDC constraints for $DesignName"
struct::matrix constraints
set chan [open $ConstraintsFile]
csv::read2matrix $chan constraints , auto
close $chan
set number_of_rows [constraints rows]
set number_of_columns [constraints columns]

puts "\nTotal rows = $number_of_rows"
puts "\nTotal columns = $number_of_columns"
#-----check row number for "clocks" and column number for "IO delays and slew section" in constraints.csv---#

set clock_start [lindex [lindex [constraints search all CLOCKS] 0] 1] 
set clock_start_column [lindex [lindex [constraints search all CLOCKS] 0 ] 0] 
set clock_period_start [lindex [lindex [constraints search all frequency] 0] 0] 
set duty_cycle_start [lindex [lindex [constraints search all duty_cycle] 0] 0] 
# Finding row number starting for INPUTS section
set inputs_start [lindex [lindex [constraints search all INPUTS] 0] 1]
# Finding row number starting for OUTPUTS section
set outputs_start [lindex [lindex [constraints search all OUTPUTS] 0] 1]
puts "\nclock_start_row = $clock_start"
puts "\nclock_start_column = $clock_start_column"
#puts "clock_period = $clock_period_start"
puts "inputs starting row in constraint csv file = $inputs_start"
puts "outputs starting row in comstraints csv file = $outputs_start"
