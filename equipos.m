function [As,bs] = equipos()
    inicio = 1987;
    fin = 2016;
    anios = fin - inicio +1;
    As = {};
    bs = {};
    for i = 1:anios
        fileID = fopen(strcat('estadisticasEquipos/equipos',int2str(inicio+i-1),'.txt'),'r');
        sizeA = [7 Inf];                            %cambiar el 3 a mano por la cantidad de parametros
        A = fscanf(fileID,'%f %f %f %f %f %f %f', sizeA);       %   idem cantidad de %f
        A = A';
        A(:,1) = (1+A(:,1)).^2;
        A(:,2) = (1+A(:,2)).^2;
        A(:,3) = (1+A(:,3)).^2;
        %A(:,4) = A(:,4).^2;
        A(:,5) = A(:,5).^2;
        A(:,6) = log(A(:,6));
        A(:,7) = sqrt(A(:,7));
        As(i) = {A};
        
        fileIDb = fopen(strcat('stats/winrate/leagues_NBA_',int2str(inicio+i-1),'_winrate.csv'),'r');
        sizeb = [1 Inf];
        b = fscanf(fileIDb,'%f', sizeb);
        b = b';
        bs(i) = {b};
        
        fclose('all');
    end
end