FROM public.ecr.aws/docker/library/node:18.16.0-alpine3.18

WORKDIR /app

COPY package.json .
RUN npm install

COPY index.js .

USER node
ENTRYPOINT [ "npm" ]
CMD [ "run", "prod" ]