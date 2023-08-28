# TCL_Workshop_VSD

This is a workshop by VSD to learn TCl by creating a utility [my_tcl_utility], which takes an xls file as an input & provides an output as a datasheet. 

The task that we are doing in the next 5 days is depicted in the following image, design.csv is the input file, TCL box is the utility that we are going to create during this workshop & the output is the datasheet.

<img width="718" alt="image" src="https://github.com/Keshavkumar025/TCL_Workshop_VSD/assets/60691479/61370456-a6c1-438e-bfd6-7b832b525da6">


# Day 1: Introduction to TCL & VSDSYNTH Toolbox usage

A basic introduction to the utility, "my_tcl_utility": my_tcl_utility is the name that I have used & it will be a command that will take a CSV file as an input argument & process it to give us the datasheet. 

The main task is: To create the utility "my_tcl_utility"

When we see from a user perspective, There exist 3 generalized scenarios & they are as below:

  i. Input argument ".csv file " is not provided
  
 ii. The input file doesn't exist in the current directory
 
iii. Check for -help switch & display it's usage

The work area has the following files, which will be used during the execution :

<img width="369" alt="image" src="https://github.com/Keshavkumar025/TCL_Workshop_VSD/assets/60691479/527f206e-4253-4716-a887-8e075e6ccb00">

Contents of the input file openMSP430_design_details.csv

<img width="409" alt="image" src="https://github.com/Keshavkumar025/TCL_Workshop_VSD/assets/60691479/34841bf6-2bc3-4a1b-bf6c-bb27ad713309">

Step 1: Create a shell script with the name my_tcl_utility 

Case 1: When No arguments are given to the shell script 

<img width="844" alt="image" src="https://github.com/Keshavkumar025/TCL_Workshop_VSD/assets/60691479/faaba821-8861-496d-a11e-2cad57aa85d8">

Case 2 When the wrong argument is given / file doesn't exist in pwd

<img width="841" alt="image" src="https://github.com/Keshavkumar025/TCL_Workshop_VSD/assets/60691479/5a6a03e2-1ce2-4bcf-9782-5f8d6d20ebd9">

Case 3: Help switch added to let the user know about its usage 

<img width="842" alt="image" src="https://github.com/Keshavkumar025/TCL_Workshop_VSD/assets/60691479/1a786869-f7af-4263-bd6e-90f60edc3c22">


# Day 2:Variable Creation and Processing Constraints from CSV

Today's agenda will be converting all inputs into the required format i.e. format[1] & SDC format & passing it to the tool YOSYS.

Tasks involved 
1. Create variables

2. To check if directories & files are mentioned in the .csv exist or not

3. Read constraint file for the above .csv & convert it to sdc format
   
4. Read all files in  netlist directory
  
5. Create the main synthesis script in format [2]
   
6. Pass this script to Yosys

The below snapshot shows step 1 i.e. creating the variables 

<img width="842" alt="image" src="https://github.com/Keshavkumar025/TCL_Workshop_VSD/assets/60691479/09d122e1-494d-475c-8dda-f42f79998cef">

step 2 : Snapshot showing checking the existence of directories & files.

<img width="831" alt="image" src="https://github.com/Keshavkumar025/TCL_Workshop_VSD/assets/60691479/e1f55268-2da1-48e1-84ae-30b0d1e1e574">























