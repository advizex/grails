IMAGE=advizex/grails
VERSION=3.0.9

image:
	docker build -t $(IMAGE) .

push: image
	docker push $(IMAGE)
	docker tag -f $(IMAGE) $(IMAGE):$(VERSION)
	docker push $(IMAGE):$(VERSION)
