function elementi_trovati = controlla(lista)

x=input("inserire gli elementi da controllare nel file di testo, poi cliccare un tasto random \n");

% Leggere il contenuto del file come stringa
fileContent = fileread("da_controllare.txt");

% Estrarre solo numeri interi positivi
figurine = regexp(fileContent, '\d+', 'match');

% Convertire i numeri da stringhe a valori numerici
elementi_controllare = str2double(figurine);
elementi_trovati = [];
elementi_mancanti = [];

for i = 1 : length(elementi_controllare)
    indice = find(lista == elementi_controllare(i), 1);
    if ~isempty(indice)
        elementi_trovati = [elementi_trovati, elementi_controllare(i)];
    else
        elementi_mancanti = [elementi_mancanti, elementi_controllare(i)];
    end
end
disp(length(elementi_trovati) +"/"+ length(elementi_controllare) + " figurine trovate:")
disp(elementi_trovati)
writematrix(elementi_trovati, "controllati.txt");
writematrix(elementi_mancanti, "mancanti.txt");


end

