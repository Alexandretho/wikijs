# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Set the working directory to the Nginx configuration directory
WORKDIR /etc/nginx

# Remove the default configuration file
RUN rm nginx.conf

# Copy the custom configuration file from the host into the container
COPY nginx.conf .

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
