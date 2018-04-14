sudo apt update
sudo apt -y install wget ruby
cd /home/ubuntu
wget https://aws-codedeploy-eu-west-2.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status
sudo service codedeploy-agent start
sudo service codedeploy-agent status
