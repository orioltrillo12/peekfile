cd ~/alg/dataset1/

file="$1"
number="$2"

head -n "$number" "$file"
echo "..."
tail -n "$number" "$file"
