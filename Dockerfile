# Utilizziamo l'immagine base richiesta dall'esercizio
FROM nginx:alpine

# Copiamo il nostro file HTML nella cartella standard in cui Nginx serve i file statici
COPY index.html /usr/share/nginx/html/

# Esponiamo la porta 80, quella di default per il traffico HTTP
EXPOSE 80

# Impostiamo il comando di esecuzione per far girare Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]