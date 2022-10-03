#Special thanks to https://www.youtube.com/watch?v=b33ir6FZMlY

for f in "$@"
do
	touch -t $(date -j -f "%Y%m%d%H%M" -v-4H $(mdls $f | grep kMDItemContentCreationDate | head -n1 | awk '{gsub("[^[:digit:]]+"," ");print $1$2$3$4$5}') +%Y%m%d%H%M) $f

done
