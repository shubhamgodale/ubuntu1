# Step 1: Use Ubuntu as the base image
FROM ubuntu:20.04

# Step 2: Install NGINX
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Step 3: Copy custom index.html (आपकी अपनी वेबसाइट की फाइल)
COPY index.html /var/www/html/index.html

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
