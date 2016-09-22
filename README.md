This is a demo of the procedure described in [this AWS blog post](https://aws.amazon.com/blogs/compute/nodejs-packages-in-lambda/), but using Docker instead of an EC2 instance.

1. `brew cask install docker`

2. `docker build -t npm-native-docker .`

3. `docker run -it --rm -v "$(pwd)/node:/usr/src/app" npm-native-docker /bin/bash`

Now you have a shell inside the container, and you can try out the demo/test of doing face recognition on the Mona Lisa.  Copy the generated file into `/usr/src/app` so that it'll be on your local filesystem after you exit the container.
