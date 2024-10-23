FROM python:alpine
WORKDIR /app 
#tutti i comandi dopo workdir finiranno nella direcory app dell'immagine
COPY ./requirements.txt requirements.txt
#copiato il file locale nell'immagine
RUN pip install -r requirements.txt
COPY app.py .
COPY templates templates
EXPOSE 5000
#expose è la porta che viene chiamata
CMD ["python", "app.py"]