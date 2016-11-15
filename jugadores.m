function [Cs,ds] = jugadores()
    inicio = 1987;
    fin = 2016;
    anios = fin - inicio +1;
    Cs = {};
    ds = {};
    for i = 1:anios
        fileID = fopen(strcat('estadisticasJugadores/equipos',int2str(inicio+i-1),'.txt'),'r');
        sizeA = [9 Inf];                            %cambiar el 4 a mano por la cantidad de parametros
        C = fscanf(fileID,'%f %f %f %f %f %f %f %f %f', sizeA);    %   idem cantidad de %f
        C = C';
        %C(:,1) = C(:,1).^2;
        C(:,2) = C(:,2).^2;
        %C(:,3) = C(:,3).^2;
        %C(:,4) = C(:,4).^2;
        C(:,5) = sqrt(C(:,5));
        %C(:,6) = C(:,6).^2;
        C(:,7) = C(:,7).^2;
        %C(:,8) = C(:,8).^2;
        C(:,9) = sqrt(log(C(:,9)));
        
        Cs(i) = {C};
        
        fileIDb = fopen(strcat('stats/winrate/leagues_NBA_',int2str(inicio+i-1),'_winrate.csv'),'r');
        sizeb = [1 Inf];
        d = fscanf(fileIDb,'%f', sizeb);
        d = d';
        ds(i) = {d};
        
        fclose('all');
    end
end