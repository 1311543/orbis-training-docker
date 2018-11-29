FROM node:10.10.0-slim
WORKDIR /app
EXPOSE 3030 35729 1042
CMD ["npm", "start"]



