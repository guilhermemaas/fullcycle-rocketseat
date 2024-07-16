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
#Vai estar (HEAD -> main) not commit mais atual selecionado
git checkout ID commit
#Voltar pra mais atual
git checkout main
#Recuperar um arquivo
git checkout ID_Commit -- arquivo.txt #Ele já vai pro stage área

#Forçar push
git push --force-with-lease origin main