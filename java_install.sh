yum install java-1.8* -y

if [ $? -ne 0 ]; then
	echo "Java  install is failed"
	exit 1
else
	echo "Congratulations: Java is installed successfully"
fi

cd /usr/lib/jvm/

var=$(ls -ld java-1.8.0-openjdk-1.8.0* | awk '{print $9}')

# Taking backup before change

cp $HOME/.bash_profile $HOME/.bash_profile-backup

echo "export JAVA_HOME=/usr/lib/jvm/$var" >> $HOME/.bash_profile
echo "PATH=$JAVA_HOME/bin:$HOME/bin:$PATH" >> $HOME/.bash_profile



