# Utilise l'image de base Python 2.7
FROM python:2.7

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie tous les fichiers de l'application dans le conteneur
COPY python-app/ /app

# Installe les dépendances
COPY python-app/requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Expose le port 5000
EXPOSE 5000

# Définit la commande de démarrage
CMD ["python", "app.py"]
