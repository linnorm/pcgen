#!/usr/local/bin/python -O

#follow_conv.py
#Version: 0.0.1
#Written by: Ivan A. Finzen IV    3/10/2009
#Revised by: Ivan A. Finzen IV    3/10/2009 - Version: 0.0.1
"""This script reads in a PCGen deities file and converts the FOLLOWERALIGN tag to PREALIGN
"""

import sys, os, mymods


def convtag(aligns):
    newtag = '|PREALIGN:'
    for align in aligns:
        if align == '0':
            newtag += 'LG,'
        if align == '1':
            newtag += 'LN,'
        if align == '2':
            newtag += 'LE,'
        if align == '3':
            newtag += 'NG,'
        if align == '4':
            newtag += 'TN,'
        if align == '5':
            newtag += 'NE,'
        if align == '6':
            newtag += 'CG,'
        if align == '7':
            newtag += 'CN,'
        if align == '8':
            newtag += 'CE,'
    return newtag[:-1]


def main():
    if len(mymods.getArgs()) == 0:
        print "You must specify a file name!"
        sys.exit()
    else:
        fileName = mymods.getArgs()[0]

    deityFile = open(fileName, 'r')
    outFile = open(fileName + '.new', 'w')
    for line in deityFile:
        if 'FOLLOWERALIGN' in line:
            lineList = line.split('\t')
            while '' in lineList:
                lineList.remove('')
            for tag in lineList:
                if 'FOLLOWERALIGN' in tag:
                    newtag = convtag(tag.split(':')[1])
                    newline = lineList
                    newline[newline.index(tag) - 1] = newline[newline.index(tag) - 1] + newtag
                    del newline[newline.index(tag)]
                    outFile.write('\t'.join(newline))
        else:
            outFile.write(line)



if __name__ == "__main__":
    main()
