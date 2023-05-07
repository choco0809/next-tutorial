FROM node:lts-bullseye-slim

RUN npm install -g pnpm
RUN pnpm create next-app@latest nextjs-blog --use-pnpm --example "https://github.com/vercel/next-learn/tree/master/basics/learn-starter"

WORKDIR /nextjs-blog

RUN pnpm build