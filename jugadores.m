function y = jugadores()
    fileID = fopen('estadisticasJugadores/jugadores.txt','r');
    sizeA = [4 Inf];
    C = fscanf(fileID,'%f %f %f %f', sizeA);
    C = C';
    
    fileIDb = fopen('winrates.txt','r');
    sizeb = [1 Inf];
    d = fscanf(fileIDb,'%f', sizeb);
    d = d';
    
    fclose('all');
    
    y = lsqlin(C,d);
end