Build Custom NGINX Image

Bind mounts are a great option for running locally and sharing files into a running container. But what if we want to move this image around and have our html files moved with it?

There are a couple of options available but one of the most portable and simplest ways to do this is to copy our html files into the image by building a custom image.

To build a custom image, we’ll need to create a Dockerfile and add our commands to it.

In the same directory, create a file named Dockerfile and paste the below commands.
