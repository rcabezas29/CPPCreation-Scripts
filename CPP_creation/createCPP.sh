DIR=$(dirname $0)

$DIR/copyMakefileTemplate.sh $1
vim "$1.hpp" -c ":call InitHpp()" -c ":wq"
vim "$1.cpp" -c ":call InitCpp()" -c ":wq"
