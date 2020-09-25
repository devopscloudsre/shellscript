check () 
{

flag=$1
step=$2

if [ $flag -ne 0 ]; then
        echo "step: $step is failed"
        exit 1
else   
        echo ""
        echo "Congratulations: step $step is successful"
fi

}

yum install java-1.8* -y

check $? java-install 

cd /usr/lib/jvm/

check $? change-dir-java

var=$(ls -ld java-1.8.0-openjdk-1.8.0* | awk '{print $9}')

# Taking backup before change

cp $HOME/.bash_profile $HOME/.bash_profile-backup

check $? backup_bash_profile

echo "export JAVA_HOME=/usr/lib/jvm/$var" >> $HOME/.bash_profile
echo 'export PATH=$JAVA_HOME/bin:$HOME/bin:$PATH' >> $HOME/.bash_profile

source $HOME/.bash_profile

check $? source_env_var

echo 2 | alternatives --config java

check $? java_config
