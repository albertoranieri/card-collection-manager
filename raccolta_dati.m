function lista = raccolta_dati(lista)


% Leggere il contenuto del file come stringa
fileContent = fileread("lista.txt");

% Estrarre solo numeri interi positivi
figurine = regexp(fileContent, '\d+', 'match');

% Convertire i numeri da stringhe a valori numerici
lista = str2double(figurine);
end


