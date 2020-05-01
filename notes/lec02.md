## Shell Tools and Scripting

check lecture here: https://missing.csail.mit.edu/2020/shell-tools/  
check video here: https://www.youtube.com/watch?v=kgII-YWo3Zw&list=PLyzOVJj3bHQuloKGG59rS43e29ro7I57J&index=2  

---

#### an example  
source mcd.sh  
mch test  

$0 - Name of the script  
$1 to $9 - Arguments to the script. $1 is the first argument and so on.  
$@ - All the arguments  
$# - Number of arguments  
$? - Return code of the previous command  
$$ - Process Identification number for the current script  
!! - Entire last command, including arguments. A common pattern is to execute a command only for it to fail due to missing permissions, then you can quickly execute it with sudo by doing sudo !!  
$_ - Last argument from the last command. If you are in an interactive shell, you can also quickly get this value by typing Esc followed by .  

shellcheck mcd.sh  

#### conditions
Exit codes can be used to conditionally execute commands using && (and operator) and || (or operator). Commands can also be separated within the same line using a semicolon ;. The true program will always have a 0 return code and the false command will always have a 1 return code.   

true - 0   
false - 1  

false || echo "Oops, fail"           // Oops, fail   
true || echo "Will not be printed"   //  
true && echo "Things went well"      // Things went well  
false && echo "Will not be printed"  //  

file?.sh    // ? for a single char  
*.sh        // * for one/many chars  

cp {example,mcd}.sh ../   
mkdir dir1 dir2  
touch {dir1,dir2}/{a,b}  
diff <(ls dir1) <(ls dir2)  

#### find a file/directory  
find . -name src -type d  
find . -path '**/*.py' -type f  
find . -name '*.py' -type f  
find . -mtime -1  // Find all files modified in the last day  
find . -size +50k -size -1M  // Find all files with size in range 50k to 1M  
find . -name '*.tmp' -exec echo "haha, got you!";  
find . -name '*.tmp' -exec rm {} \;  
find . -name '*.png' -exec convert {} {.}.jpg \;  

locate  filename  
grep foobar mcd.sh    
grep -R foobar  
rg // ripgrep  
rg -t py 'import requests'  // Find all python files where I used the requests library  
rg -u --files-without-match "^#!" //  Find all files (including hidden files) without a shebang line  
rg foo -A 5 // Find all matches of foo and print the following 5 lines  
rg --stats PATTERN // Print statistics of matches (# of matched lines and files )  

#### other stuff
history  
history | grep py  

ctrl+r  
ls -R  
tree  
