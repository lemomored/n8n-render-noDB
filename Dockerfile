FROM n8nio/n8n:latest

# Installer Puppeteer via npm
RUN npm install puppeteer

# Changer l'utilisateur pour revenir à celui par défaut dans l'image n8n
USER node

# Exposer le port par défaut de n8n
EXPOSE 5678
