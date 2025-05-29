wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
yum upgrade
# Add required dependencies for the jenkins package
yum install fontconfig java-21-openjdk
yum install jenkins
systemctl daemon-reload
systemctl enable jenkins && systemctl start jenkins