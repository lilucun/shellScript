#!/bin/bash

# program 
# 1 去掉文件后缀
# 在指定的目录下创建100个文件
# history
# 2019/03/09 

# SRC=$(wildcard ./*sh)
basename 1.sh .sh

# 创建100个文件
# touch "$DIR/$TIME_$i.txt" 使用 _代替：就结果不一样了
DIR="/home/deng/_work/test"
TIME=$(date +%H:%M:%S)
for i in {1..100}
do
    touch "$DIR/$TIME:$i.txt"
done
