# ACM-DSA-18
DSA SMP Code Submission Repo 2018

This repository contains all the coursework and assignments for the summer mentorship project 2018 on Data Structures and Algorithms.
 

## How to submit assignments?

  

**1) Fork the repository.**

  

**2) Clone the forked repository using:**

    git clone https://github.com/ACM-NITK/ACM-DSA-18.git
    
**3) Change directory and create a folder with your name.**
Inside the folder create a text file with your details.

    cd ACM-DSA-18
    mkdir your-name
    cd your-name
    gedit intro.txt // This creates /opens a text file in the gedit editor of your linux system

Copy and paste your code submission files into the directory

**4) Add and commit changes. Push it to your repository.**

    git add .	// ' . '  is used to add all files. git add file-name adds single files 
    git commit -m "Your message"
    git push origin master
    
**5) Login to github and send a pull request to **ACM-NITK/ACM-DSA-18****
To configure upstream:

    git remote add upstream https://github.com/ACM-NITK/ACM-DSA-18.git
    
To pull the latest changes:

    git fetch upstream
    git checkout master
    git merge upstream/master

OR, use GUI to create a pull request from 'your' forked repository.

![
](https://howto.p2pu.org/img/tools/github-pull-request-step-3-small.png)
