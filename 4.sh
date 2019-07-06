#!/bin/bash

# program
#  转译字符
# history
# 2019/03/09 

echo "没有\\的结果："
echo $PATH
echo "\\的结果："
echo  \$PATH

# program
# 单引号和双引号
# history
# 2019/03/09
# 结论
# 对字符串是一样的，对变量跟 \ 转译字符一样

echo "hello"
echo 'hello'
echo "$PATH"
echo '$PATH'

# 对于空的变量
var=
expr length $var # error
expr lenght "$var" # right

# 条件测试
echo $?

# 条件语句
# [] 参数之间 [ -f  ] 必须要空格
if [ -f ~/.bashrc ];
then
    echo "hele"
    . ~/.bashrc
else
    echo "lala"
fi

# case 语句
# 程序说明：每一个 case 必须以 ) 结束
# | 代表或 ，[Nn]* 代表0个或多个Nn字符,其中*为通配符
echo "input a string"
read  var
case $var in
    Y|y|yes|YES)
        echo "是";;
    [Nn]*)
        echo "no";;
    *)
        echo "input error";;
esac

# for 语句
for var in apple pear banana
do 
    echo $var
done

# 打印当前所有的文件
for file in $(ls)
do 
    echo $file
done

# 求 1-100的和
sum=0
for i in {1..100}
do
    sum=$[$sum+$i]
done
echo "sum = $sum"

# while语句
# 求1-10的和
sum=0
i=0
while [ $i -1e 10 ]
do
    sum=$[$i+1]
    i=$[$i+1]
done
echo "sum = $sum"
