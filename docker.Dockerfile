# Use an official Nginx image as a base
FROM nginx:alpine

# Copy your static content to the Nginx HTML directory
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
