#!bin/bash

echo "请开始你的表演---脚本出自:www.wolfdan.cn  , 作者: 单林敏"
sum=0

for n in `find . -name "*.md"`
do
	((sum++))
	#sed -i "s/https:\/\/raw.githubusercontent.com\/wolfdan666\/BlogPic\/master\//https:\/\/gitee.com\/wolfdan\/BlogPic\/raw\/master\//g" $n
	#sed -i "s/https:\/\/gitee.com\/wolfdan\/BlogPic\/raw\/master/https:\/\/www.wolfdan.cn\/img/g" $n
	sed -i "s/https:\/\/www.wolfdan.cn\/img/https:\/\/cdn.jsdelivr.net\/gh\/wolfdan666\/BlogPic/g" $n
done

echo "操作了{$sum}个文件"
echo "请仔细核查,建议使用VScode的git工具查看更改差异更香"
