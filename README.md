# conversao-peso

 É uma aplicação web construída em ASP.Net Core que realiza a conversão de valores de distância de Gramas para Quilos e de Quilos para Gramas.

Foi criado dentro do projeto um arquivo Dockerfile que será utilizada para execução da aplicação em um container, como mostra abaixo:

![image](https://user-images.githubusercontent.com/96360563/154434243-6c56fb71-47f3-4623-a2d5-3b6a502d905a.png)


# Ignorando arquivos desnecessários na criação da imagem

No diretório da aplicação podem existir arquivos indesejados e/ou desnecessários que seriam copiados com o comando COPY e que poderiam ser ignorados durante o processo de criação da imagem Docker.

Para isso foi criado no mesmo diretório onde se encontram os arquivos do projeto o arquivo .dockerignore que possui uma lista (com o mesmo padrão do arquivo .gitignore) com os diretórios/arquivos que serão ignorados no momento da execução da cópia dos arquivos para dentro da imagem.

# Para criação da imagem Docker foi executada, dentro do diretório da aplicação, a linha de comando:
docker build -t ferrarijose/conversao-peso:v1 .

Utilizando o comando docker build com o parâmetro -t para configurar o nome da imagem a ser criada

# Para testar a imagem criada, usamos o comando:
docker container run -d --name conversao-peso -p 8080:80 ferrarijose/conversao-peso:v1

# Para acessar a aplicação é deverá usar a porta da aplicação 8080
http://localhost:8080
