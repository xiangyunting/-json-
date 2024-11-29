#!/bin/bash
#	清空
function run0()
{
	> token.txt
}

#	输出多个结果
function run()
{
	for i in $@;do
		echo $i >> token.txt
	done
}

if [ $# == 0 ];then
	read -p "请输入token: " str
	while [ -z "$str" ]
	do
		read -p "空值,请重新输入token: " str
	done
#	> token.txt
	run0
# 	for i in $str;do
#		echo $i >> token.txt
#	done
	run $str

else
#	> token.txt
	run0
#	for i in $@;do
#		echo $i >> token.txt
#	done
	run $@
fi


