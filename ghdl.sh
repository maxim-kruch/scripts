#!/bin/sh

# Syntax: ghdl.sh $DATEI_NAME

if [ -z $1 ]
then
	echo "Datei angeben!"
	exit 0
else
	hdl_name=$1
fi

echo "ghdl -a *.vhdl"
ghdl -a *.vhdl
echo "ghdl -e ${hdl_name}_tb"
ghdl -e ${hdl_name}_tb
echo "ghdl -r ${hdl_name}_tb --vcd=${hdl_name}.vcd"
ghdl -r ${hdl_name}_tb --vcd=${hdl_name}.vcd

exit 0
