FROM node:lts
WORKDIR /space
COPY . .
RUN npm i -g npm@latest
RUN npm i -g pnpm
RUN pnpm install --no-frozen-lockfile
EXPOSE 3000
CMD ["pnpm", "start"]