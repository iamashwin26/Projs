for ((i=1;i<=20;i++))
do
echo $(ls $(pwd)/$i |head -1| cut -d " " -f 1-3|tr [:space:] '_') > hi.txt
current=($(pwd)/$i)
new=($(pwd)/$(cat hi.txt))
mv "$current" "$new"/

done
