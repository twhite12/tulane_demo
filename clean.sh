#This script performs completing operations on country files with errors

cd data/clean

#Fix the Guinea, Niger, China files - we just want the specific countries' data

echo fixing China.cc.txt file
head -12 China.cc.txt >1.txt
mv -v 1.txt China.cc.txt
echo fixing Niger.cc.txt file
head -12 Niger.cc.txt > 2.txt
mv -v 2.txt Niger.cc.txt
echo fixing Guinea.cc.txt file
head -24 Guinea.cc.txt > 3.txt
tail -12 3.txt > 4.txt
mv -v 4.txt Guinea.cc.txt
rm 3.txt
echo All Done Bitches

