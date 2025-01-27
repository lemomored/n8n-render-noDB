
# Installer Puppeteer et ses dépendances
USER root

# Installer Puppeteer via npm
RUN npm install puppeteer

# Changer l'utilisateur pour revenir à celui par défaut dans l'image n8n
USER node

FROM n8nio/n8n:latest
