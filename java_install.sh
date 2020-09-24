yum install java-1.8* -y

if [ $? -ne 0 ]; then
	echo "Java  install is failed"
	exit 0
else
	echo "congratulations: Java is installed successfully"
fi
