# filepath: /home/dm/dst/nginx/mlops-iris-api-m/Makefile

build-api:
	cd ./src/api/ && docker build -t make-mlops-iris-api -f Dockerfile .

run-api:
	docker run --rm -d --name make-iris-api -p 8000:8000 -v ./models/model.joblib:/app/model.joblib make-mlops-iris-api

stop-api:
	docker stop make-iris-api 

rm-api:
	docker rm make-iris-api || true

rm-image:
	docker rmi make-mlops-iris-api || true

links:
	@echo "Prometheus: http://localhost:9090"
	@echo "Grafana: http://localhost:3000"