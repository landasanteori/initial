apt update 
add-apt-repository ppa:ondrej/php -y
apt update
apt install php8.3 php8.3-{cli,common,curl,mbstring,xml,sqlite3} -y

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
apt install composer -y
apt install nodejs npm -y
composer create-project --prefer-dist laravel/laravel laravelapp
cd laravelapp
php artisan key:generate
php artisan 



