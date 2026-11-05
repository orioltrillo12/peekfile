cd ~/alg/dataset1/

file="$1"
number="$2"

if [[ $# -lt 2 ]]
then number=3
fi

total_lines=$(wc -l < "$file")
limit=$(( 2 * $number ))
if [[ $total_lines -le $limit ]]
then cat "$file"
else
echo "Warning: Very large text"
head -n "$number" "$file"
echo "..."
tail -n "$number" "$file"
fi
