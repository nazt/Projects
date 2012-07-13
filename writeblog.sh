#!/usr/bin/env bash

ARGV="$*" 
prefix="/Users/NAzT/Documents/Blog"
template="template.md"

file_name=`coffee /Users/NAzT/Projects/coffee/writeblog.coffee ${ARGV}`
filepath="${prefix}/${file_name}" 
cat "${prefix}/${template}" >> $filepath

ascriptpath="/Users/NAzT/Desktop/openbyword.scpt ${filepath}" 
osascript $ascriptpath
