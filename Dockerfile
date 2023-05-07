FROM httpd:latest

# Copia o arquivo index.html para o diretório raiz do servidor web
COPY index.html /usr/local/apache2/htdocs/

# Expõe a porta 80
EXPOSE 80
