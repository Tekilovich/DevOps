#!/bin/bash

arrGroup=("Dev2" "Ops2" "Test2")
arrUser=("devuser2" "opsuser2" "testuser2")
i=0

for item in ${arrUser[*]}
do
	if id "$item" &>/dev/null; then
		echo "Error! User $item exist!"
	else
		sudo useradd -m -s /bin/bash -G ${arrGroup[i]} $item
	fi
done
