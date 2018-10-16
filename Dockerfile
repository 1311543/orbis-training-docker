FROM node:10.10.0-slim
RUN mkdir app
COPY preguntas.md /app
WORKDIR /app
CMD ["cat","preguntas.md"]
