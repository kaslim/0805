# Yuxuan Liu 2022/06/0

# look into the files and see the status of the machine (S-susceptible, I-Infective, R-removevd)

#define the possibility of infection(%), this is only for S-susceptible
PoI=50

#Random generate 1~100, if Random < or = PoI, the machine is infected
Ran=$((RANDOM%100+1))
echo $Ran

# S.txt means this machine in status S-susceptible
#if [ -f "./DEPT-ADMIN/S.txt" ];then
if [ -f "./S.txt" ];then
 echo "this machine is susceptible"
 if [ $Ran -le 50 ];then
 echo "this susceptible machine will be infected"
 #change status S to I
 #mv ./DEPT-ADMIN/S.txt ./DEPT-ADMIN/I.txt
 mv ./S.txt ./I.txt
 fi
elif [ -f "./I.txt" ];then
 echo "this machine is Infective"
elif [ -f "./R.txt" ];then
 echo "this machine is removevd"
else
 echo "Fail-status miss"
fi 
