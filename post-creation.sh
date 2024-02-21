#!/bin/bash

# FILEPATH: ~/leet-tech/post-creation.sh

read -p "Enter the name of the post: " post_name

post_path="content/posts/${post_name}.md"

if [ -f "$post_path" ]; then
    echo "Error: A post with the same name already exists."
    exit 1
fi

hugo new "$post_path"
