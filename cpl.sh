#Check if there was an argument
if [[ $# -ne 1 ]] ; then
    echo "Please provide only one file"
    exit 3
fi

# Check if argument is a valid file
if [[ ! -f $1 ]] ; then
    echo "Not a valid file"
    exit 1
fi

dir=$(pwd)
file="$dir/$1"

#echo $file

#Retrieve name of file and extension
name=$(echo "${file%.*}")
ext=$(echo "${file##*.}")

case "$ext" in
    "cpp")
        g++ -o $name $file ; $name
        ;;
    "c")
        gcc -o $name $file ; $name
        ;;
    *)
        echo "Sorry, the file is not supported"
	exit 2
        ;;
esac

exit 0
