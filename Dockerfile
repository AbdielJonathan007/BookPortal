version: "3"
services:
  book-portal-be:
    build: ./book-portal-be
    container_name: "book-portal-be"

  book-portal-fe:
    build: ./book-portal-fe
    container_name: "book-portal-fe"
    depends_on:
      - book-portal-be

  proxy:
    build: ./nginx
    container_name: "book-portal-proxy"
    restart: always
    ports:
      - "80:80"

