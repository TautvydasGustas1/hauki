RUN apt-get update -y 

# Run the container in the background
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
