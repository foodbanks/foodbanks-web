FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

# Ensure nginx runs in foreground
CMD ["nginx", "-g", "daemon off;"]
