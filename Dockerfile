#   FIRST STAGE
#   COPY all source code to container
#   EXECUTE yarn script to create an optimised production build

FROM mhart/alpine-node:11 AS builder
WORKDIR /app
COPY . .
RUN yarn run build

#   SECOND STAGE
#   INSTALL serve package
#   COPY all output from FIRST STAGE to the current folder in container

FROM mhart/alpine-node
RUN yarn global add serve
WORKDIR /app
COPY --from=builder /app/build .

#   serves contents of folder on port 80 (using serve instead of Nginx here, its just simpler)   

CMD ["serve", "-p", "80", "-s", "."]
