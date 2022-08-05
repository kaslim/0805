# Yuxuan Liu 2022/06/20
# this script is simulated as computer virus

# look into the files and see the status of the machine (S-susceptible, I-Infective, R-removevd)

#define the possibility of infection(%), this is only for S-susceptible
PoI=50


# S.status means this machine in status S-susceptible
# I.txt means this machine in status I-Infective
# R.txt means this machine in status R-removevd
if [ -f "./S.status" ];then
 echo "this machine is susceptible"
 #Random generate 1~100, if Random < or = PoI, the machine is infected
 Ran=$((RANDOM%100+1))
 echo "Random is $Ran"
 if [ $Ran -le $PoI ];then
 echo "this susceptible machine will be infected"
 #change status S to I
 mv ./S.status ./I.status
 #./virus.sh
 else
 echo "this machine will not be infected"
 fi

elif [ -f "./I.status" ];then
 echo "this machine is Infective"
#if this machine is Infective, it will send virus.sh to the connected machine in the same subnet
#realize it locally now
#//TODO further work: realize the infection process by tcp. 
 cp ./virus.sh ../DEPTA-Staff1
 echo "this machine send the virus to other machines"
 
elif [ -f "./R.status" ];then
 echo "this machine is removevd"

else
 echo "Fail-status miss"
fi 
