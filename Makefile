docker-user=jaredhanson11
name=${docker-user}/whittle-landing-page
# latest was 1.1.7
version=latest

build-images:
	docker build . -t ${name}:${version}
push-images: build-images
	docker push ${name}:${version}
