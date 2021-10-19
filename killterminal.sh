#script para evitar la apertura de la terminal
#monitorea minuto a minuto en busca del ID del proceso y lo elimina si existe
idterminal=$(top | pgrep terminal)
kill $idterminal

