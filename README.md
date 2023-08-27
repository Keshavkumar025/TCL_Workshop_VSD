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

Step 1: Created a shell script with the name my_tcl_utility 

Case 1: When No arguments are given to the shell script 





