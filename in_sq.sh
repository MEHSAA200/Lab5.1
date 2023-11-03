cd /var/lib/jenkins

sudo mkdir sonarqube && cd sonarqube

sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.3.0.1492-linux.zip

sudo apt install unzip

sudo unzip sonar-scanner-cli-3.3.0.1492-linux.zip

cd /var/lib/jenkins

sudo rm /var/lib/jenkins/sonarqube/sonar-scanner-3.3.0.1492-linux/jre/bin/java
	
sudo ln -s /usr/lib/jvm/java-11-openjdk-amd64/bin/java /var/lib/jenkins/sonarqube/sonar-scanner-3.3.0.1492-linux/jre/bin/java

sudo chown -R jenkins:jenkins sonarqube
