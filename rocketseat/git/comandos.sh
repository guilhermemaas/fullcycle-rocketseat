#Iniciar um repositório git
git init
git init --initial-branch main

#git commit, git add, git status
git status
git add nome_arquivo
git add .
git commit -m "initial commit"

#Remover do stage área/área de preparação
git rm --cached fullcycle/docker/comandos.sh

#Restaurar um arquivo
git restore

###Ver o log de commits e navegar entre eles para inspecionar o código
git log
