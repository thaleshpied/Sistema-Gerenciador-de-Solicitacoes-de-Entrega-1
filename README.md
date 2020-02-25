# Sistema Gerenciador de Solicitações de Entrega
Objetivo: Gerenciar o processo de solicitação de pedidos de entrega.

## Descrição
Originalmente o software foi apresentado ao curso de graduação tecnológica da Faculdade de Ciências Sociais Aplicadas de Belo Horizonte - FACISABH, como requisito parcial à obtenção do título de Analista de Desenvolvimento de Sistemas.

## Instalação
Preferencialmente utilize um sistema operacional Linux.
Fazendo a instalação do Laravel/Homestead e configuração básica do SGSE:
1. Instalar Virtual Box, Vagrant e Git
2. Clonar Repositório "https://github.com/laravel/homestead.git"
3. Executar script "init" dentro da pasta do homestead
4. Configurar arquivo "Homestead.yaml"
5. Gerar chave ssh (ssh-keygen -t rsa -C "SEU-EMAIL@EMAIL.com")
6. Adicionar no arquivo /etc/hosts a url local e o IP do homestead
7. Executar o comando (vagrant up)
8. Executar o comando (vagrant ssh)
9. Dentro do bash do Laravel/Homestead, executar o comando (sudo composer global require laravel/installer)
10. Clonar o repositório do SGSE dentro da pasta configurada no arquivo "Homestead.yaml"
11. Criar arquivo ".env", baseado no ".env.example"
12. Configurar dentro do arquivo ".env" a mesma url presente no "Homestead.yaml"
13. Instalar as dependências do SGSE, executando o comando (composer install)
14. Gerar banco de dados do SGSE, executando o comando (php artisan migrate)
