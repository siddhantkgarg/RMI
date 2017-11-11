@echo off
set CLASSPATH=

cd C:\Users\sigarg\ecworkspace\RMICommon\src

IF EXIST C:\Users\sigarg\ecworkspace\commonbuild (
rmdir /s C:\Users\sigarg\ecworkspace\commonbuild
echo "client build folder deleted"
)
mkdir C:\Users\sigarg\ecworkspace\commonbuild
echo "compiling code to commonbuild folder ..."
 javac -d C:\Users\sigarg\ecworkspace\commonbuild  Model/*.java Util/*.java Interface/*.java
cd C:\Users\sigarg\ecworkspace\commonbuild
 echo "Creating jar ... "
jar cvf common.jar *