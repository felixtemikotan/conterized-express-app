FROM node:gallium-alpine

ENV NODE_ENV=production
ENV PORT=4000

WORKDIR /app

COPY ["package.json", "yarn.lock", "./"]

RUN yarn

COPY . .

EXPOSE 4000

CMD ["npm", "start"]

