padre(juan).
padre(luiso).
padre(eduardo).
madre(luisa).
madre(petronila).

padrede(juan, julio).
padrede(juan, jose).
padrede(pedro, juan).
madrede(luisa, maria).
madrede(luisa, maria).
madrede(maria,liz).

abueloG(X,Y):- padrede(X,W), padrede(W,Y); madrede(X, W), madrede(W,Y).