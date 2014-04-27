Lab 5
===========
#Functionality
1st Program-Checked by Dr. N
2nd Program-Counts up...
#1st Program Operation
![Alt Text](https://github.com/RyanRedhead/Lab5/blob/master/Prism.PNG?raw=true)

The program begins by loading an 8 into the accumulator; it then adds 1 and displays the output to port 3 until the number becomes negative. The program uses the command jump negative and the output does not increase anymore.
#1st Program Instruction Cycles
##0 to 100ns
![Alt Text](https://github.com/RyanRedhead/Lab5/blob/master/0to100ns?raw=true)
##100 to 180ns
![Alt Text](https://github.com/RyanRedhead/Lab5/blob/master/100to180ns?raw=true)

0 to 40ns was done in the lab handout. (LDAI)

A Fetch occurs at 35ns, decode at 45ns, and execute at 55ns. (ADDI)

Another fetch occurs at 65ns, decode at 75ns, and execute at 95ns. (OUT)

Last fetch occurs at 105ns and a decode at 115ns.


#Answers
1a.PCLd-High

1b.IRLd-High

1c.ACCLd-Low

2. The next state is Direct I/O Execute and the active signals are Read, MARLoLd, PCLd, and MEMSEL.

3. IR,ALessZero,AEqZero

4. The controlller will know the where the operand will be added.

#Bugs
-Prism's auto clock stops working every now and then

#Documentation
None

5. Add more bits
