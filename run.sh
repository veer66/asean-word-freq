#!/bin/sh

if [ $# -ne 1 ]
then
    echo "Usage $0 <folder containing HTML files>"
    exit 1
fi

bundle exec ruby ext_text.rb $1 | wordcut | bundle exec ruby count.rb
