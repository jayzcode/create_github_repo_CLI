#### Create GitHub Repository using Shell ####
--------------------------------------------

##### USAGE:  $sh git_create_repo_CLI.sh GitHub_UserID Repository_Name #####

#####Example: 

######```$sh git_create_repo_CLI.sh example_user example_repo ```


#####Prerequisites:######

1. Install Curl.

On Debian OS:
```$ sudo apt-get install curl```

On RedHat OS:
```$ sudo install curl```


#####Note:######

If there is an error
```git_create_repo_CLI.sh: 13: git_create_repo_CLI.sh: Syntax error: "(" unexpected```

To fix the issue use "bash" instead of using "sh" while executing the script, that should not throw any syntax error.

#####```$bash git_create_repo_CLI.sh example_user example_repo ```
