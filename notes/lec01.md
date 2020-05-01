## Course overview + the shell

check lecture here: https://missing.csail.mit.edu/2020/course-shell/  
check video here: https://www.youtube.com/watch?v=Z56Jmr9Z34Q&list=PLyzOVJj3bHQuloKGG59rS43e29ro7I57J  

---
#### query
ctrl+l       // clean the scrren and go back to the top
man          // seek for help
pwd          // print the whole directory
ls           // list all the files in the directory
ls ..        // list all the files in the upper directory
ls --help    // seek for help about ls
ls -l        // list all the files in the directory in detail
#### create
mv a.md b.md      // move a file
cp a.md b.md      // copy a file
rm a.md           // remove a file 
rmdir             // remove empty directory
mkdir dir1 dir2   // create 2 new directories
#### file
< a.txt             // input
> a.txt             // output
echo hello > a.txt  // write sth in a file 
cat a.txt           // print contents in a file
cat < a.txt         // take the input from a file 
cat < a.txt > b.txt // copy
>> a.txt            // append contents in a file
xgd-open a.txt      // open a file
#### pipe
(input) | (output) 
tail -n1
ls -l | tail -n1 > ls.txt
curl --head --silent google.com | grep -i content-length
curl --head --silent google.com | grep -i content-length | cut --delimiter=' ' -f2
#### user
sodu su          // run the following command as a root user
useradd testuser // create a user
passwd testuser  // set the password of a user
userdel testuser // delete a user
su username      // su-swtich user
cat /etc/passwd  // check all the users
whoami           // check your current user
usermod -d /home/dir1 kai        // change directory
ubuntu config --default-user kai // set defalut user 
#### soft link
ln -s  /mnt/d/  /home/kai/win
ln -s  /mnt/d/Code/shell/linux_shell  /home/kai/prac
ln –-help
