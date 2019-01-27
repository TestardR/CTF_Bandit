lvl 0 : 
Level Goal
The password for the next level is stored in a file called readme located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.

Solution
We’re given a username/password combo of bandit0, and we need to use port 2220 to SSH into 

ssh bandit0@bandit.labs.overthewire.org -p 2220
bandit0


lvl 0 --> lvl 1 : 
ls
cat readme
ssh -p 2220 bandit1@bandit.labs.overthewire.org
boJ9jbbUNNfktd78OOpsqOltutMc3MY1

lvl 1 --> lvl 2 : 
Level Goal
The password for the next level is stored in a file called – located in the home directory.

ls
cat ./-
CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
ssh -p 2220 bandit2@bandit.labs.overthewire.org

lvl 2 --> lvl 3 : 
ls
cat spaces\ in\ this\ filename
// Alternative : cat 'spaces in this filename'
UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
ssh -p 2220 bandit3@bandit.labs.overthewire.org

lvl 3 --> lvl 4 :
ls
cd inhere
ls -a
cat ./.hidden
pIwrPrtPN36QITSp3EQaw936yaFoFgAB
ssh -p 2220 bandit4@bandit.labs.overthewire.org

lvl 4 --> lvl 5 :
ls
cd inhere
ls 
cat ./* // Alternative : file inhere/*
cat ./-file07
koReBOKuIDDepwhWk7jZC0RTdopnAYKh
ssh -p 2220 bandit5@bandit.labs.overthewire.org

lvl 5 --> lvl 6 :
ls
cd inhere
ls -lart * // recursive ls, all the files in each directory
find -size 1033c

// Alternative : find inhere ! -executable -size 1033c -exec file {} \;
What I’m doing is checking that the file isn’t executable with ! -executable (! meaning not), checking that the size is 1033 bytes with -size 1033c (for whatever reason, b is 512-byte blocks and c is bytes), and then passing whatever results we get to file with -exec file {} \;.

cat ./maybehere07/.file2
DXjZPULLxYr17uwoI01bNLQbtFemEgo7
ssh -p 2220 bandit6@bandit.labs.overthewire.org

lvl 6 --> lvl 7 :
find / -user bandit7 -group bandit6 -size 33c
// Alternative : find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
I’m using -user and -group to specify who the owner and group owner of the file are.
I’m redirecting all the errors I’m gonna get with 2>/dev/null (find loses its shit when it doesn’t have permission to search a folder). This redirects standard error (output stream 2) to /dev/null, also known as ‘The Abyss’.

cat /var/lib/dpkg/info/bandit7.password
HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
ssh -p 2220 bandit7@bandit.labs.overthewire.org

lvl 7 --> lvl 8 :
grep millionth data.txt
cvX2JJa4CFALtqS87jk27qwqGhBM9plV
ssh -p 2220 bandit8@bandit.labs.overthewire.org

lvl 8 --> lvl 9 :
cat data.txt | sort | uniq -u
// Note : Oof. uniq without any options just removes the extra lines. What we want is a truly unique line. This is found by adding the -u option.
UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
ssh -p 2220 bandit9@bandit.labs.overthewire.org

lvl 9 --> lvl 10 : 
cat data.txt
strings -n 10 data.txt
strings data.txt | grep "="
truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
ssh -p 2220 bandit10@bandit.labs.overthewire.org

lvl 10 -- > lvl 11 :
cat data.text 
base64 -d data.txt // -e would encode -d would decode 
IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
ssh -p 2220 bandit11@bandit.labs.overthewire.org

lvl 11 -- > lvl 12 :
cat data.txt
python -c 'print "Gur cnffjbeq vf 5Gr8L4qetPEsPk8htqjhRK8XSP6x2RHh".decode("rot13")'
or
echo "Gur cnffjbeq vf 5Gr8L4qetPEsPk8htqjhRK8XSP6x2RHh" | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
// Note : tr just translated the characters from a to z by 13 by giving a new range to map to (n-z, a-m). The same was done for the capital letters.

ssh -p 2220 bandit12@bandit.labs.overthewire.org
5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu

lvl 12 --> lvl 13 : 
mkdir /tmp/cryptocat
cp data.txt /tmp/cryptocat
cd /tmp/cryptocat

xxd -r data.txt > data // turn hexdump into binary 
// Notes: The -r option reverses the hexdump, and the > operator tells it to output to a new file.

file data
mv data data.gz
gzip -d data.gz
file data
mv data data.bz2
bzip2 -d data.bz2
file data
mv data data.gz
gzip -d data.gz
file data
mv data datar.tar
tar -xvf data.tar
file data5.bin
tar -xvf data5.bin
file data6.bin
mv data6.bin data6.bz
bzip2 -d data6.bz
file data6
tar -xvf data6
file data8.bin
gzip -d data8.gz
file data8
cat data8
8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
ssh -p 2220 bandit13@bandit.labs.overthewire.org

lvl 13 --> lvl 14 : 
ls
cat sshey.private
ssh -i ./sshkey.private bandit14@localhost
cat /etc/bandit_pass/bandit14
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
ssh -p 2220 bandit14@bandit.labs.overthewire.org

lvl 14 --> lvl 15 :
echo 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e | nc -v localhost 30000
BfMYroe26WYalil77FoDi9qh59eK5xNr
ssh -p 2220 bandit15@bandit.labs.overthewire.org

lvl 15 --> lvl 16 :
echo BfMYroe26WYalil77FoDi9qh59eK5xNr | openssl s_client -quiet -connect localhost:30001
cluFn7wTiGryunymYOu4RcffSxQluehd
ssh -p 2220 bandit16@bandit.labs.overthewire.org

lvl 16 --> lvl 17 : 
nmap localhost -p 31000-32000
ncat localhost --ssl 31790
// ncat opens a connection
// Alternative : echo cluFn7wTiGryunymYOu4RcffSxQluehd | openssl s_client -quiet -connect localhost:31790
touch /tmp/key
cd /tmp/
nano pvt.key // copy paste the sshkey inside it, ctrl x to exit
cat pvt.key
chmod 600 pvt.key // change the permission on the file
ssh bandit17@localhost -i pvt.key

lvl 17 --> lvl 18 :
diff passwords.old passwords.new
kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd

lvl 18 --> lvl 19 : 
ssh bandit18@localhost "bash --noprofile"
ls 
cat reademe
IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x

lvl 19 --> lvl 20 : 
ls -la // list long format including hidden files
// Result : -rwsr-x---  1 bandit20 bandit19 7296 Oct 16 14:00 bandit20-do, the s at the beginning means that we bandit20 clearance to read the file as bandit19
./bandit20-do id
./bandit20-do ls -la /etc/bandit_pass
./bandit20-do cat /etc/bandit_pass/bandit20
GbKksEFF4yrVs6il55v6gwY5aVje5f0j

lvl 20 --> lvl 21 : 
ls
// Note : lvnp listen verbously noDNSresolution from port 
nc -lvnp 35000 // Note open a connection through port 35000
// on a new tab connect to bandit20
// on the new tab ./suconnect 35000
copy paste the password in the first tab and obtain new password
gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr

lvl 21 --> lvl 22 : 
cd /etc/cron.d/
ls -la
cat cronjob_bandit22
// Answer : @reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
// * * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
ls -l /usr/bin/cronjob_bandit22.sh
// Answer : -rwxr-x--- 1 bandit22 bandit21 130 Oct 16 14:00 /usr/bin/cronjob_bandit22.sh
cat /usr/bin/cronjob_bandit22.sh
// Answer : /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cd /tmp/
cat t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI
ssh -p 2220 bandit22@bandit.labs.overthewire.org

lvl 22 --> lvl 23 : 
cd /etc/cron.d/
ls
cat cronjob_bandit23
cat /usr/bin/cronjob_bandit23.sh
echo I am user bandit23 | md5sum | cut -d ' ' -f 1
cat /tmp/8ca319486bfbbc3663ea0fbe81326349
jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
ssh -p 2220 bandit23@bandit.labs.overthewire.org

lvl 23 --> lvl 24
