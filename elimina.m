function lista = elimina (lista)
scelta = input("premi 1 per pochi elementi, altrimenti qualsiasi altro NUMERO per tanti elementi \n");
da_rimuovere = [];

if scelta == 1 
    lunghezza_vettore = input("quante figurine vuoi eliminare?\n");
    elementi = zeros(1,lunghezza_vettore);
    for i = 1:lunghezza_vettore
        elementi(i) = input("inserisci l'elemento numero " + i + "\n");
        indice = find(lista == elementi(i), 1);
        lista(indice) = [];
    end
    disp("sono state eliminate le seguenti figurine:")
    disp(elementi)
else
    % Leggere il contenuto del file come stringa
    fileContent = fileread("da_rimuovere.txt");

    % Estrarre solo numeri interi positivi
    figurine = regexp(fileContent, '\d+', 'match');

    % Convertire i numeri da stringhe a valori numerici
    da_rimuovere = str2double(figurine);
    for i = 1:length(da_rimuovere)
        indice2 = find(lista == da_rimuovere(i), 1);
        lista(indice2) = [];
    end
    disp("sono state eliminate le seguenti figurine:")
    disp(da_rimuovere)

    %ATTENZIONE, NON PROVARE MAI A RIMUOVERE 2 NUMERI UGUALI OPPURE UN
    %NUMERO CHE NON SAI PER CERTO CHE C'E' NELLA LISTA ALTRIMENTI POTRESTI
    %SMINCHIARE TUTTO!!!!!



end



end

