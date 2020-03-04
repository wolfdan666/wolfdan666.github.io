#!bin/bash

echo "请开始你的表演---脚本出自:www.wolfdan.cn  , 作者: 单林敏"
sum=0

for n in `find . -name "*.md"`
do
	((sum++))
	sed -n '/http[^s]/'p $n
done
echo "操作了{$sum}个文件"
