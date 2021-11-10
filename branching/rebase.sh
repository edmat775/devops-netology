#!/bin/bash
# display command line options

count=1
for param in "$@"; do
<<<<<<< HEAD
    echo "\$@ Parameter #$count = $param"
=======
    echo "Next parameter: $param"
>>>>>>> 50ce3d0 (git-rebase 2)
    count=$(( $count + 1 ))
done

echo "====="