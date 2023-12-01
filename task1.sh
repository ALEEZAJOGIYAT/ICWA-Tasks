#!/bin/bash
echo "Task: Automate GitHub File/Folder Upload with Bash Script:"

source .env

# Git Credentials

USERNAME="ALEEZAJOGIYAT"
TOKEN=$token
mkdir tasks
cd tasks
echo "migrating into the tasks folder"
touch task1.py
echo "Completing task1 using automation, It's soo much fun" > task1.py

git add .
git commit -m "pushing file using bash script"

git config credential.helper store

git push origin main

