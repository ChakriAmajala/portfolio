# Base image - lightweight nginx
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your Wix template files into nginx html folder
COPY . /usr/share/nginx/html/

# Expose port
EXPOSE 80

# Start nginx automatically
CMD ["nginx", "-g", "daemon off;"]
