#!/bin/bash

sudo cp -rf mysite.conf /etc/nginx/sites-available/mysite
chmod 710 /var/lib/jenkins/workspace/django-cicd-jenkins

sudo ln -s /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx