function x = equipos()
    fileID = fopen('estadisticasEquipos/equipos.txt','r');
    sizeA = [3 Inf];
    A = fscanf(fileID,'%f %f %f', sizeA);
    A = A';
    
    fileIDb = fopen('winrates.txt','r');
    sizeb = [1 Inf];
    b = fscanf(fileIDb,'%f', sizeb);
    b = b';
    
    fclose('all');
    
    x = lsqlin(A,b);
end