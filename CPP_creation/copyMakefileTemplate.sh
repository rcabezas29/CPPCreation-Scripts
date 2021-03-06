PROGRAM_NAME=$(echo "$1" | tr '[:upper:]' '[:lower:]')
CPP_NAME=$(echo $1.cpp)
DIR=$(dirname $0)

cp $DIR/templates/Makefile .
sed -i '' "s/NAME = /NAME = $PROGRAM_NAME/" Makefile
sed -i '' "s/main.cpp/main.cpp $CPP_NAME/" Makefile
vim -c ":Stdheader" Makefile -c ":wq"

