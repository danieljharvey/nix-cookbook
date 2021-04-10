FROM my-nix-image:latest

# copy application files
COPY app .

RUN ["yarn","install"]

# do some incredibly 10x computer stuff
CMD ["node", "src/index.js"]
