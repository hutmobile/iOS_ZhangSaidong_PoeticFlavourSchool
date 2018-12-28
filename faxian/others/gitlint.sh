#! /bin/zsh

# Check swiftlint
command -v swiftlint >/dev/null 2>&1 || { echo >&2 "git-lint requires swiftlint but it's not installed.  Aborting."; exit 1; }

# Create a temp file
temp_file=$(mktemp)

# Gather all modified and stagged files, and filter deleted files
modified=$(mktemp)
deleted=$(mktemp)
git ls-files -m > ${modified}
git ls-files -d > ${deleted}
cat ${modified} ${deleted} | sort | uniq -u | grep ".swift" > ${temp_file}
git diff --name-only --cached | grep ".swift" >> ${temp_file}

# Make list of unique and sorterd files
counter=0
for f in `sort ${temp_file} | uniq`
do
export SCRIPT_INPUT_FILE_${counter}=${f}
counter=`expr $counter + 1`
done

# Lint and autocorrect
if (( counter > 0 )); then
export SCRIPT_INPUT_FILE_COUNT=${counter}
swiftlint autocorrect --use-script-input-files
fi
