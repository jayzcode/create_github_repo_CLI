#USAGE sh git_create_repo_CLI.sh GitHub_UserID Repository_Name

USER=$1
REPO=$2
echo "GitHub UserID: $1"
echo "Repository Name: $2"
echo

str={\"name\":\"$REPO\"}

curl_response=`curl -u "$USER" -H "Content-Type:application/json" https://api.github.com/user/repos -d $str`

if [ $? -eq 0 ]; then
    echo
    echo "Repository Successfully created"
    clone_url="https://github.com/"$USER"/"$REPO".git"
    echo "clone_url : $clone_url"
    echo
    mkdir $REPO
    if [ $? -eq 0 ]; then
        echo "Directory created Successfully"
        echo
        echo "Changing Directory to $REPO"
        cd $REPO
        echo
        echo "Creating README File ...."
        touch README.md
        echo
        echo "Initializing Local Repository......."
        git init
        echo
        echo "Adding all files...."
        git add .
        echo
        echo "First Commit"
        git commit -m "First commit"
        echo
        echo "Adding remote origin"
        git remote add origin $clone_url
        echo
        echo "Executing git push origin master"
        git push origin master
        echo
        echo "Executing git status"
        git status
        echo
        echo "Executing git branch -a"
        git branch -a 
        echo
    fi
else
    echo
    echo "Failed...!!!!"
    echo
fi
echo "clone_url : $clone_url"
echo "Terminating from Script"
echo
