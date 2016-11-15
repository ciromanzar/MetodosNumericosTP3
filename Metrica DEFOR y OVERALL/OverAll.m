%% 3P,2P,FT%,TRB,STL,TOV
%%
[Ae1,be1] = equipos(1,1,1,1,1,1); %lineal
[Ae2,be2] = equipos(0.5,1,1,2,2,1); %prioridad posesion
[Ae3,be3] = equipos(2,2,2,1,1,0.5); %prioridad puntos, overall
[Ae4,be4] = equipos(2,2,2,0.5,0.5,2); %prioridad puntos 
[Ae5,be5] = equipos(1,1,2,2,2,1); %prioridad posesion y puntos
%%

[MSEe1CV,CMLe1CV] = validationCV(Ae1,be1);
[MSEe1T,CMLe1T] = validationTemp(Ae1,be1);

[MSEe2CV,CMLe2CV] = validationCV(Ae2,be2);
[MSEe2T,CMLe2T] = validationTemp(Ae2,be2);

[MSEe3CV,CMLe3CV] = validationCV(Ae3,be3);
[MSEe3T,CMLe3T] = validationTemp(Ae3,be3);

[MSEe4CV,CMLe4CV] = validationCV(Ae4,be4);
[MSEe4T,CMLe4T] = validationTemp(Ae4,be4);

[MSEe5CV,CMLe5CV] = validationCV(Ae5,be5);
[MSEe5T,CMLe5T] = validationTemp(Ae5,be5);