
pacotes <- c("tcltk2","hms")

#install.packages(pacotes)

lapply(pacotes, require, character.only = TRUE) #carrega a lista de biblioteca


inicio <- Sys.time() #INICIO DO SCRIPT

#COLOQUE O SCRIPT AQUI

final <- Sys.time() #FINAL DO SCRIPT

LOG = paste0("O tempo de execução foi de ",round_hms(as_hms(difftime(final,inicio)), secs = 5))

msgBox <- tkmessageBox(title = "Seu script foi executado com sucesso!",
                       message = LOG, 
                       icon = "info", 
                       type = "ok")
