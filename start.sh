#! /bin/bash
createMenu () {

#Filler
echo "Choose a form to autofill"

# Directory of scripts
scripts_dir="$PWD/scripts"

# Empty array of Scripts
scripts=()

# Add scripts to array
for entry in "$scripts_dir"/*
do
    scripts+=("${entry##*/}")
done

# Add quit option
scripts+=('reload' 'quit')

# Render select menu
COLUMNS=${#scripts[@]}
PS3='Please select a script to run: '
select opt in ${scripts[@]}; do
    if [[ "$opt" == "quit" ]]
        then exit;
    elif [[ "$opt" == "reload" ]]
        then return;
    elif [ "$opt" ]
        then export OPTION="$opt";break
    else
        echo "Not an option. Please select a script"
    fi
done

# Filler
echo "You have selected ${OPTION}. Executing script."
sleep 1

# Executes script
node "${scripts_dir}/${OPTION}"

echo "Script executed"

}

while true
    do
        createMenu
    done