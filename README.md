FILE DESCRIPTIONS:

DAD\_TABS.TXT: This file contains the DAD file in tab-separated format.
Process.pl	 : This is the perl executable. Takes in the DAD\_TABS file as an argument.

USAGE:

Should  be used in the command line with coreutils (or similar)

$ cat DAD\_TABS.TXT | ./Process.pl;

This will print it out to stdout.

To print to a file named 'output':

$ cat DAD\_TABS.TXT | ./Process.pl > Output.txt;

