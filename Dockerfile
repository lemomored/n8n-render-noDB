FROM n8nio/n8n:latest
# Installer Puppeteer et ses dépendances
USER root

# Installer les dépendances nécessaires pour Puppeteer (Chromium)
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libxcomposite1 \
    libxrandr2 \
    libxdamage1 \
    libgbm-dev \
    libasound2 \
    libpangocairo-1.0-0 \
    fonts-liberation \
    libappindicator3-1 \
    xdg-utils \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Installer Puppeteer via npm
RUN npm install puppeteer

# Changer l'utilisateur pour revenir à celui par défaut dans l'image n8n
USER node

# Exposer le port par défaut de n8n
EXPOSE 5678

# Commande par défaut pour démarrer n8n
CMD ["n8n"]
