# Use the official Golang image as a base image
FROM golang:1.19

# Set the current working directory inside the container
WORKDIR /blackhole

# Copy the Go modules manifests
COPY go.mod go.sum ./

# Download the Go modules
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go application
CMD ["go", "build"]


# Expose port 3131 for the server
EXPOSE 3131

# Command to run the application
CMD ["./blackhole"]

