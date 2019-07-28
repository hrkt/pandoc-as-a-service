NAME    :=pandoc-as-a-service
LABEL	:=pandoc-as-a-service:0.1.0

# container

build-container:
	sudo docker build -t $(LABEL) .

run-container:
	sudo docker run -p 8080:8080 $(LABEL)

clean-container:
	sudo docker image prune
	sudo docker container prune

check-container:
	curl http://localhost:8080/bin/date
