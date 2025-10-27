multipass launch -c 2 -d 10G -m 8G -n nginx

multipass mount /home/dm/dst/nginx/mlops-iris-api-m nginx:/home/ubuntu/nginx/mlops-iris-api-m
multipass shell nginx

multipass stop nginx
multipass start nginx

sudo apt install net-tools