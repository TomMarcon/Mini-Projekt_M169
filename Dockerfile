FROM nginx:latest
LABEL maintainer="Leonit Dautaj"
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]