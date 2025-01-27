FROM n8nio/n8n:latest
# Installer Puppeteer et ses dépendances
USER root

# Installer Puppeteer via npm
RUN npm install puppeteer

# Changer l'utilisateur pour revenir à celui par défaut dans l'image n8n
USER node

# Exposer le port par défaut de n8n
EXPOSE 5678

# Commande par défaut pour démarrer n8n
CMD ["n8n"]
