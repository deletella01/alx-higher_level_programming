#!/bin/bash
# Displays the size of the body of the response in bytes
curl -Is "$1" | grep 'Content-Length' | cut -d ' ' -f 2
