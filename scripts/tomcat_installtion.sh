cd /tmp
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
rpm -ivf jdk-8u131-linux-x64.rpm
rm -f jdk-8u131-linux-x64.rpm


#tomcat
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.48/bin/apache-tomcat-9.0.48-windows-x64.zip
unzip apache-tomcat-9.0.48-windows-x64.zip
mv apache-tomcat-9.0.48 tomcat
chmod -R 700 tomcat/
cd/tomcat/bin
./startup.sh
