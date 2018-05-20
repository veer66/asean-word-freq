#!/bin/sh

find www.mol.go.th -type f | xargs -I '{}' w3m -dump -O UTF-8 '{}'
