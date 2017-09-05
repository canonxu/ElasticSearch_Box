#!/bin/sh
cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz -O jdk-8u144-linux-x64.tar.gz

echo "downoad jdk success"

tar -xvf jdk-8u144-linux-x64.tar.gz

echo "uncompress jdk success"

echo "export JAVA_HOME=/opt/jdk1.8.0_144"  >> ~/.bashrc
echo "export JRE_HOME=\${JAVA_HOME}/jre" >> ~/.bashrc
echo "export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib" >> ~/.bashrc
echo "export PATH=\${JAVA_HOME}/bin:\$PATH" >> ~/.bashrc
echo "config jdk success"

echo "config jdk success, see ~/.bashrc"

source ~/.bashrc

echo `java -version`