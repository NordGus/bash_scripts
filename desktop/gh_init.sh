#!/bin/bash
set -e

while getopts n:r: flag
do
    case "${flag}" in
        n) name=${OPTARG};;
        r) repo=${OPTARG};;
    esac
done

if [ -z "$name" ]
then
    echo "\t-name flag must be present"
    exit 1
fi

if [ -z "$repo" ]
then
    echo "\t-repo flag must be present"
    exit 2
fi

if git status
then
    echo "\tcan't reinitialize an existing repo"
    exit 3
fi

echo "initializing repo $name"
echo "# $name" >> README.md
git init
git add README.md
git commit -m "Initializing $name"
git branch -M main
git remote add origin $repo
git push -u origin main
