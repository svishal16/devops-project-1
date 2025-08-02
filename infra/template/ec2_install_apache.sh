#! /bin/bash
# shellcheck disable=SC2164
set -e
cd /home/ubuntu

sudo apt update -y
sudo apt install -y python3 python3-pip python3.12-venv git
git clone https://github.com/svishal16/python-mysql-db-proj-1.git
sleep 20
# shellcheck disable=SC2164
cd python-mysql-db-proj-1
python3 -m venv venv
source venv/bin/activate
pip install flask pymysql
pip install -r requirements.txt 
echo 'Waiting for 30 seconds before running the app.py'

export DB_HOST="${rds_endpoint}"
export DB_USER="dbuser" 
export DB_PASSWORD="dbpassword"
export DB_NAME="devprojdb"

nohup python3 app.py > /var/log/app.log 2>&1 &
sleep 30
