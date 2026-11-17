FROM node:20-bookworm-slim

WORKDIR /app

# Runtime tools used by the bot's media features and native Node modules.
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg python3 make g++ \
    && rm -rf /var/lib/apt/lists/*

# Install dependencies from this repository's package.json.
COPY package*.json ./
RUN npm install --omit=dev --no-audit --no-fund

# Copy the bot source code. No external repository clone is needed.
COPY . .

EXPOSE 9090

CMD ["npm", "start"]
