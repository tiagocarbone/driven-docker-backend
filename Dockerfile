FROM node:18-alpine3.18

WORKDIR /usr/src



COPY . .

EXPOSE 5000

RUN npm i

RUN npm run build

#CMD ["npm", "start"]
CMD ["sh", "-c", "npx prisma migrate deploy && npm start"]