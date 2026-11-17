FROM node:20-bookworm-slim

WORKDIR /app

# Runtime tools required by media features and native Node modules.
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg python3 make g++ \
    && rm -rf /var/lib/apt/lists/*

# Install from the manifest. Legacy peer resolution avoids unrelated
# peer-dependency conflicts in this older WhatsApp-bot dependency tree.
COPY package*.json ./
RUN npm install --omit=dev --no-audit --no-fund --legacy-peer-deps --fetch-retries=5 --fetch-timeout=120000

# Copy bot source after dependencies so source-only changes reuse the layer.
COPY . .

EXPOSE 9090

CMD ["npm", "start"]
