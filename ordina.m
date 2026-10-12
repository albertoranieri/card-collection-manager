function lista = ordina(lista)

for i = 1 : length(lista)
    for j = i+1 : length(lista)
        if lista(i)>lista(j)
            tmp=lista(i);
            lista(i)=lista(j);
            lista(j)=tmp;
        end


    end
end

disp("lista ordinata!")
end

