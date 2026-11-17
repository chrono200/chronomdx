FROM node:20-bookworm-slim

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg python3 make g++ ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY package*.json ./

# Print npm's real diagnostic into the hosting build log if installation fails.
RUN npm install --omit=dev --no-audit --no-fund --legacy-peer-deps --fetch-retries=3 --fetch-timeout=120000 --loglevel=verbose || (echo "===== NPM DEBUG LOG =====" && for f in /root/.npm/_logs/*debug-0.log; do cat "$f"; done && exit 1)

COPY . .

EXPOSE 9090
CMD ["npm", "start"]
