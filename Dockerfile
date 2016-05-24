FROM docker.schibsted.se/go

# Create app dir
RUN mkdir /scores

# add source files
ADD src /scores

WORKDIR /scores

# Make sure the port is exposed
EXPOSE 8000

# Run the application
CMD ["make run"]
