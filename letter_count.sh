
#!/bin/bash

# This script counts the no. of s in word - mississippi

x=mississippi

grep -o "s" <<<"$x" | wc -l

