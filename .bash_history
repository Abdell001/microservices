sudo usermod -aG docker abdul
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
cd ~
git clone https://github.com/laravel/laravel.git laravel-app
cd ~/laravel-app
sudo chown -R abdul:abdul ~/laravel-app
nano ~/laravel-app/docker-compose.yml
nano ~/laravel-app/Dockerfile
mkdir ~/laravel-app/php
nano ~/laravel-app/php/local.ini
mkdir -p ~/laravel-app/nginx/conf.d
nano ~/laravel-app/nginx/conf.d/app.conf
mkdir ~/laravel-app/mysql
nano ~/laravel-app/mysql/my.cnf
cp .env.example .env
nano .env
docker-compose build app
docker-compose up -d
docker-compose ps
docker-compose exec app rm -rf vendor composer.lock
docker-compose exec app composer install
cd ~
git clone https://github.com/Abdell001/my-website
cd my-website
nano ~/web-app/Dockerfile
nano ~/my-website/Dockerfile
docker build -t abdell001/my-website:1.0 .
docker image ls
docker run -d -p 80:80 my-website/my-website:1.0
docker run -d -p 80:80 abdell001/my-website:1.0
docker container ls
docker rm -f 346a2037dcd8
docker container ls
docker run -d -p 80:80 abdell001/my-website:1.0
docker ps
hostname -I | awk '{print $1}'
docker login
docker push abdell001/my-website:1.0
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce
sudo usermod -aG docker ${USER}
su - ${USER}
