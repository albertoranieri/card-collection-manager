function lista = aggiungi(lista)
aggiunta = [];
while true
    figurina = input("inserisci il numero della figurina, se vuoi interrompere premi 0 \n");

    while figurina > 721
        figurina = input("la figurina inserita non esiste, inseriscine una valida \n");
    end

    if figurina == 0
        disp("sei uscito dal loop")
        break
    
    else
        aggiunta = [aggiunta, figurina];
    end

end

lista = [lista,aggiunta];
disp("sono state aggiunte le seguenti "+length(aggiunta)+" figurine :")
disp(aggiunta)
end

