FILE DESCRIPTIONS:

DAD\_TABS.TXT: This file contains the DAD file in tab-separated format.

Process.pl	 : This is the perl executable. Takes in the DAD\_TABS file as an argument. I used it to experiment with data structures. I'm aware of how ugly it is :) 

USAGE:

Should  be used in the command line with coreutils (or similar)

$ cat DAD\_TABS.TXT | ./Process.pl;

This will print it out to stdout.

To print to a file named 'Output.txt':

$ cat DAD\_TABS.TXT | ./Process.pl > Output.txt;

To print to a file then automatically open that file in libreoffice calc:
$ cat DAD\_TABS.TXT | ./Process.pl > Output.txt;libreoffice --calc Output.txt;
