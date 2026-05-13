FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

RUN echo '<!DOCTYPE html>' > /usr/share/nginx/html/index.html && \
    echo '<html>' >> /usr/share/nginx/html/index.html && \
    echo '<head><title>Hello</title></head>' >> /usr/share/nginx/html/index.html && \
    echo '<body style="display:flex;justify-content:center;align-items:center;height:100vh;font-family:sans-serif;">' >> /usr/share/nginx/html/index.html && \
    echo '<h1>Hello Beveelin</h1>' >> /usr/share/nginx/html/index.html && \
    echo '</body></html>' >> /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
