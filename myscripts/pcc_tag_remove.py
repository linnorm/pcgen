#!/usr/bin/python -O

#pcc_tag_remove.py
#Version: 0.0.1
#Written by: Ivan A. Finzen IV    3/06/2014
#Revised by: Ivan A. Finzen IV    3/06/2014 - Version: 0.0.1
"""This script reads in a PCGen pcc file, removes the indicated tag, and saves it in place.
"""

import sys, os


#Hard code the tag we want to remove because I'm lazy.
BADTAG = 'TAB:RESOURCES'

def main():
    if len(sys.argv) == 1:
        print "You must specify a file name!"
        sys.exit()
    else:
        fileName = sys.argv[1]

#    infile = open(fileName, 'r')
    outFile = open(fileName + '.new', 'w')
    with open(fileName, 'r') as infile:
        for line in infile:
            if BADTAG in line:
                print fileName
            else:
                outFile.write(line)
#   infile.close()
    outFile.close()
    os.remove(fileName)
    os.rename(fileName+'.new', fileName)



if __name__ == "__main__":
    main()
