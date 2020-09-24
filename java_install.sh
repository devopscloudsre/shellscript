yum install java-1.8* -y

if [ $? -ne 0 ]; then
	echo "Java  install is failed"
	exit 1
else
	echo "Congratulations: Java is installed successfully"
fi

cd /usr/lib/jvm/

var=$(ls -ld java-1.8.0-openjdk-1.8.0* | awk '{print $9}')


