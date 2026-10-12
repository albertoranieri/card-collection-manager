lista = [];
lista = raccolta_dati(lista);
disp("Hai " + length(lista) + " figurine.")

scelta = input(" 0 = resettare lista \n 1 = aggiungere figurine\n 2 = togliere figurine\n 3 = ordina la lista\n 4 = cerca figurine\n 5 = resettare lista da controllare\n");

while scelta >5 || scelta<0  %verifica valore scelto sia valido
    scelta = input("hai sbagliato;\n 0 = resettare lista \n 1 = aggiungere figurine\n 2 = togliere figurine\n 3 = ordina la lista\n 4 = cerca figurine\n 5 = resettare lista da controllare\n");
end

if scelta == 0                   % valore = 0  
    lista = resett();

elseif scelta == 1               % valore = 1
    lista =aggiungi(lista);

elseif scelta == 2               % valore = 2
    lista = elimina(lista);

elseif scelta == 3               % valore = 3
    lista = ordina(lista);   

elseif scelta == 4               % valore = 4
    sellingfig = controlla(lista);

elseif scelta == 5               % valore = 5
    resett_2()
end

writematrix(lista, "lista.txt");