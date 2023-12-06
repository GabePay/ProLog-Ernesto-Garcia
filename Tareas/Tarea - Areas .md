#Obtener 10 funciones que para obtener areas y otras 10 para obtener el volumne

## 10 funciones para el area

Esta funcion es de ejmplo para saber como se leen los datos y como utilizarlos en este caso en una suma
```
(defun sumaNumero()
    (princ "Ingresa un numero: ")
    (setq num1 (read)) ;vamos a leer directamente lo que se ingrese en la terminal cons read y lo asignamos a num1 con setq
    (princ "Ingresa un segundo numero: ")
    (setq num2 (read))

    (write (+ num1 num2)); write nos permite escribir pero nos evalua dos veces la operacion en este caso arroja 2
)
```

1.  La primera funcione es para obtener el area de un cuadrado en donde se lee un solo lado y se multiplica por el mismo lado para obtener un area.
```
(defun areaCuadrado() ;1.- area de un cuadrado
    (princ "Ingresa la medida de un lado: ")
    (setq l (read))

    (print "Área del cuadrado: ")
    (setq aCudrado (* l l))
)
```

  2. Despues obtenemos el area del rectacngulo donde se pide la altura y la base y estos dos se multiplican para obtener su area.
```
(defun areaRectangulo() ;2.- area de un rectangulo
    (princ "Ingresa la medida de la base: ")
    (setq b (read))
    
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (print "Área del rectangulo: ")
    (setq aRectangulo (* b h))
)
```

3. Area del triangulo, se pide la base y la altura del triangulo y como podemos observar primero se multiplican base por altura y despues se dividen entre 2

```
(defun areaTriangulo() ;3.- area de un triangulo
    (princ "Ingresa la medida de la base: ")
    (setq b (read))
    
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (print "Área del triangulo: ")
    (setq aTriangulo (/ (* b h) 2))
)
```

4.  El area del circulo se tiene que pedir solo el radio y la variable pi se le asigna el valor 3.141516 que es un valor aproximado y despues en la operacion se hace el pi al cuadrado y despues se multiplica por pi para obtener el area del circulo.
```
(defun areaCirculo() ;4.- area de un circulo
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))

    (print "Área del circulo: ")
    (setq aCirculo (* (* r r) pi))
)
```

5.  Obtencion del area de un rombo, se pide al usuario ingresar la diagonal mayor y la diagonal menor del rombo y despues para obtener el area se multiplica las dos diagonales y por ultimo se divide entre 2 para obtener el area.
```
(defun areaRombo() ;5.- area de un rombo
    (princ "Ingresa la medida del diagonal mayor: ")
    (setq dmayor (read))
    (princ "Ingresa la medida del diagonal menor: ")
    (setq dmenor (read))

    (print "Área del rombo: ")
    (setq aRombo (/ (* dmayor dmenor) 2))
)
```

6.  Otencion del area del pentagono, se le pide al uaurio el lado y el apotema, en la operacion se multiplica el lado, la apotema y el numero de lados del rombo en este caso 5 y el resultado se divide entre 2.
```
(defun areaPentagonoRegular() ;6.- area de un pentagono regular
    (princ "Ingresa la medida del lado: ")
    (setq l (read))
    (princ "Ingresa la medida del apotema: ")
    (setq a (read))

    (print "Área del pentagono regular: ")
    (setq aRombo (/ (* l a 5) 2))
)
```


7.  Obtener el area de un cilindro, se pide que ingrese el radio y la altura del cilindro, despues se suma el radio y la altura, para que despues se multiplique por dos, por pi y por el radio de nuevo para poder obtener el area, cabe aclarar que la variable pi se define manualmente.
```
(defun areaCilindro() ;7.- area de un cilindro
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))

    (print "Área del cilindro: ")
    (setq a (* 2 pi r (+ r a)))
)
```


8.  El area de un hexagono, se pide que se ingrese el lado y el apotema del hexagono para que despues se haga la operacion y se multiplique el lado por el area pro 3 para obtener su area.
```
(defun areaHexagonoRegular() ;8 area de un hexagono regular
    (princ "Ingresa la medida del lado: ")
    (setq l (read))
    (princ "Ingresa la medida del apotema: ")
    (setq a (read))

    (print "Área del hexagono regular: ")
    (setq aRombo (* 3 l a))
)
```

9.  Area de un trapecio, se pide que se ingrese la medida de la base corta, base larga y altura, para que despues en las operaciones se haga lo siguiente, se sume la base corta con la base larga, el resultado se divida entre 2 y el resultado se multiplique por la altura.
```
(defun areaTrapecio() ;9.- area de un trapecio
    (princ "Ingresa la medida de la base corta: ")
    (setq bc (read))
    (princ "Ingresa la medida de la base larga: ")
    (setq bl (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))
    
    (print "Área del trapecio: ")
    (setq aRombo (* (/ (+ bc bl) 2) h))
)
```


10. Area de una elipse, se pide al usuario ingresar la longitud corta, la longitud larga y se define el valor de pi, para que en la operacion se multipliquen estas 3 variables y pder obtener el area.
```
(defun areaElipse() ;10.- area de un elipse
    (setq pi 3.141516)
    (princ "Ingresa la medida de longitud corta: ")
    (setq lc (read))
    (princ "Ingresa la medida de longitud larga: ")
    (setq ll (read))
    
    (print "Área del elipse: ")
    (setq aRombo (* pi lc ll ))
)
```


## 10 funciones para los volumenes 

11. Obtner el volumen de un cilindro, se inicializa la variable pi y se pide que se ingrese el radio y la altura, para que despues se multiplique el radio por el radio y el resultado de esta operacion se multiplique por pi y por el area.
```
(defun volCilindro() ;1.- volumen de un cilindro
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))
    
    (print "Volumen del cilindro: ")
    (setq aRombo (* pi (* r r) a))
)
```

12. Obtener el volumen de un cubo, se pide el lado del cubo y despues se multiplican 3 veces el lado para obtener el valor del volumen.
```
(defun volCubo() ;2.- volumen de un cubo
    (princ "Ingresa la medida de un lado: ")
    (setq l (read))
    
    (print "Volumen del cubo: ")
    (setq aRombo (* l l l))
)
```

13. obtener volumen de un cuboide, se pide que se ingresen la base, la profundidad y la altura, despues estas 3 variables se multiplican para obtener el volumen.
```
(defun volCuboide() ;3.- volumen de un cuboide
    (princ "Ingresa la medida del base: ")
    (setq b (read))
    (princ "Ingresa la medida de la profundidad: ")
    (setq p (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))
    
    (print "Volumen del cuboide: ")
    (setq aRombo (* b p a))
)
```

14. Obtener el volumen de una piramide, se pide que se ingrese el area de la base y la altura de la piramide, despues de esto lo primero que hacemos es obtener el valor de 1/3  para que despues se multiplique con el area y con la altura.
```
(defun volPiramide() ;4.- volumen de una piramide
    (princ "Ingresa la medida del area de base: ")
    (setq a (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))
    
    (print "Volumen de la piramide: ")
    (setq aRombo (* a h (/ 1 3)))
)
```

15. obtener le volumen de una piramide cuadrada, se pide la medidad de un lado y de la altura de la piramide, despues se obtiene el valor de 1/3 y al mismo nivel se multiplican los dos lados para obtener el area, estos ultimos resultados se multiplican y el resultado se multiplica por la altura.

```
(defun volPiramideCuad() ;5.- volumen de una piramide cuadrada
    (princ "Ingresa la medida del un lado: ")
    (setq l (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))
    
    (print "Volumen de la piramide cuadrada: ")
    (setq aRombo (* (/ 1 3) (* l l) h))
)
```


16. Obtener el volumen de un prisma, se pide que se ingresen el area de la base y la medida de la altura, despues se multiplican los dos para obtener el volumen.
```
(defun volPrisma() ;6.- volumen de un prisma
    (princ "Ingresa el area de la base: ")
    (setq ab (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))
    
    (print "Volumen del prisma: ")
    (setq aRombo (* ab h))
)
```


17. Obtener el volumen de un prisma triangular, se pide qu se ingrese el la altura del triangulo base, la base y el largo del prisma, primer ose multiplica la altura por la base y el resultado se divide entre 2 y por ultimo se multiplica por el largo.
```
(defun volPrismaTriangular() ;7.- volumen de un prisma triangular
    (princ "Ingresa la altura triangulo base: ")
    (setq tb (read))
    (princ "Ingresa base del triangulo base: ")
    (setq th (read))
    (princ "Ingresa la medida del largo del prisma triangular: ")
    (setq lp (read))

    (print "Volumen del prisma triangular es: ")
    (setq aRombo (* (/ (* tb th) 2) lp))
)
```

18. Obtener el volumen de una esfera, se pide ingresar la medida del radio y se inicializa la variable pi, en las operaciones se multiplica el radio 3 veces por si mismo, despues se multiplica por 4 y por pi, el resultado obtenido se divide entre 3.
```
(defun volEsfera() ;8.- volumen de una esfera
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))

    (print "Volumen de la esfera: ")
    (setq aRombo (/ (* 4 pi (* r r r)) 3))
)
```

19. Obtener el volumen de un cono, se pide que se ingrese el radio, la altura y se inicializa la variable pi, en la operacion se multiplica pi al cuadrado y el resultado se multiplica por pi y por la altura y por ultimo todo el resultado se divide entre 3.
```
(defun volCono() ;9.- volumen de un cono
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (print "Volumen del cono es: ")
    (setq aRombo (/ (* pi (* r r) h) 3))
)
```


20. Obtener el volumen de un tetraedro, se indica que se ingrese un lado y despues se otiene la raiz cuadrada del 2 y se multiplica el lado 3 veces por si mismo, se multiplica la raiz por el resultado de la multiplicacion y por ultimo se divide entre 12.

```
(defun volTetraedro() ;10.- volumen de un tetraedro
    (princ "Ingresa la medida de un lado: ")
    (setq l (read))

    (print "Volumen del tetraedro es: ")
    (setq aRombo (/ (* (sqrt 2) (* l l l)) 12))
)
```
