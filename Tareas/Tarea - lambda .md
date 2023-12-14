#Tarea de la tarea de areas y volumenes utilizar las funciones lambda.

**_En esta parte se definen las funciones lambda_**
Se van a necesitar las siguientes funciones lambda para que el codigo las pueda utilizar y no se repita tanto el codigo.

1. Esta funcion lambda nos realiza una multiplicacion de dos numeros:
```
(defvar *multiplicacionXY* (lambda (x y) (* x y)))
```

2. Esta funcion lambda nos hace una multiplicacion de 3 numeros:
```
(defvar *multiplicacionXYZ* (lambda (x y z) (* x y z) ))
```

3. Esta funcion lambda nos realiza una divicion de un numero en 3 partes:
```
(defvar *divicionEntre3* (lambda (x) (/ x 3) ))
```

4. En esta funcion se hace un llamado a la lambda donde se multiplican dos numeros y realiza una operacion de dos numeros y se dividen entre dos.
```
(defvar *baseAltura2* (lambda (x y) (/ (funcall *multiplicacionXY* x y) 2)))
```

5. Esta funcion lambda es para obtener el area de un rombo como tal ya que an algunas funciones se requiere esto.
```
(defvar *aRombo* (lambda (x y z) (/ (funcall *multiplicacionXYZ* z y z ) 2) ))
```


6. Esta funcion lambda es para obtener el area de un cilindro  ya que an algunas funciones se requiere esto.
```
(defvar *aCilindro* (lambda (pi r a) (* 2 pi r (+ r a))))
```

7. Esta funcion lambda es para obtener el area de un trapecio  ya que an algunas funciones se requiere esto.
```
(defvar *aTrapecio* (lambda (x y z) (* (/ (+ x y) 2) h)))
```


##Funciones para las areas

1. Calcula el área de un cuadrado tomando la medida de un lado y multiplicándola por sí misma. Utiliza la función lambda *multiplicacionXY*

    ```
    (defun areaCuadrado() ;1.- area de un cuadrado
        (princ "Ingresa la medida de un lado: ")
        (setq l (read))

        (format t "El area del cuadrado es : ~A"(funcall *multiplicacionXY* l l))
    )
    ```

2. Calcula el área de un rectángulo multiplicando la medida de la base por la medida de la altura. Utiliza la función lambda *multiplicacionXY*.
    ```
    (defun areaRectangulo() ;2.- area de un rectangulo
        (princ "Ingresa la medida de la base: ")
        (setq b (read))
        
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))

        (format t "El area del rectangulo es : ~A"(funcall *multiplicacionXY* b h))
    )
    ```

3. Calcula el área de un triángulo utilizando la fórmula del área del triángulo (base x altura / 2). Usa la función lambda *baseAltura2*, que internamente utiliza *multiplicacionXY*.
    ```
    (defun areaTriangulo() ;3.- area de un triangulo
        (princ "Ingresa la medida de la base: ")
        (setq b (read))
        
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))

        (format t "El area del triangulo es : ~A" (funcall *baseAltura2* b h))
    )
    ```

4. Calcula el área de un círculo utilizando la fórmula del área del círculo (π x radio^2). Utiliza la función lambda *multiplicacionXY*.
    ```
    (defun areaCirculo() ;4.- area de un circulo
        (setq pi 3.141516)
        (princ "Ingresa la medida del radio: ")
        (setq r (read))

        (format t "El area del circulo es : ~A" (funcall *multiplicacionTresVeces* r pi ))
    )
    ```

5. Calcula el área de un rombo multiplicando la diagonal mayor por la diagonal menor y dividiendo el resultado entre 2. Utiliza la función lambda *baseAltura2*, que internamente utiliza *multiplicacionXYZ*.
    ```
    (defun areaRombo() ;5.- area de un rombo
        (princ "Ingresa la medida del diagonal mayor: ")
        (setq dmayor (read))
        (princ "Ingresa la medida del diagonal menor: ")
        (setq dmenor (read))

        (format t "El area del rombo es : ~A"(funcall *baseAltura2* dmayor dmenor))
    )
    ```

6. Calcula el área de un pentágono regular utilizando el área de un rombo, dado el lado y el apotema. Utiliza la función lambda *aRombo*, que internamente utiliza *multiplicacionXYZ*.

    ```
    (defun areaPentagonoRegular() ;6.- area de un pentagono regular
        (princ "Ingresa la medida del lado: ")
        (setq l (read))
        (princ "Ingresa la medida del apotema: ")
        (setq a (read))

        (format t "El area del pentagono es : ~A" (funcall *aRombo* l a 5))

    )
    ```

7. Calcula el área de un cilindro utilizando la fórmula del área superficial de un cilindro (2πr² + 2πrh). Utiliza la función lambda *aCilindro*.

```
(defun areaCilindro() ;7.- area de un cilindro
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))

    (format t "El area del pentagono es : ~A" (funcall *aCilindro* pi r a))
)
```

8. Calcula el área de un hexágono regular multiplicando el perímetro por el apotema y dividiendo el resultado entre 2. Utiliza la función lambda *multiplicacionXYZ*.
    ```
    (defun areaHexagonoRegular() ;8 area de un hexagono regular
        (princ "Ingresa la medida del lado: ")
        (setq l (read))
        (princ "Ingresa la medida del apotema: ")
        (setq a (read))

        (format t "El area del Hexagono Regular es : ~A" (funcall *multiplicacionXYZ* 3 l a))
    )
    ```

9. Calcula el área de un trapecio utilizando la fórmula del área del trapecio ((base mayor + base menor) / 2) x altura. Utiliza la función lambda *aTrapecio*, que internamente realiza cálculos utilizando *multiplicacionXY*.
    ```
    (defun areaTrapecio() ;9.- area de un trapecio
        (princ "Ingresa la medida de la base corta: ")
        (setq bc (read))
        (princ "Ingresa la medida de la base larga: ")
        (setq bl (read))
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))

        (format t "El area del Trapecio es : ~A" (funcall *aTrapecio* bc bl h))
    )
    ```

10. Calcula el área de una elipse multiplicando la longitud corta por la longitud larga y por π. Utiliza la función lambda *multiplicacionXYZ*.
    ```
    (defun areaElipse() ;10.- area de un elipse
        (setq pi 3.141516)
        (princ "Ingresa la medida de longitud corta: ")
        (setq lc (read))
        (princ "Ingresa la medida de longitud larga: ")
        (setq ll (read))

        (format t "El area de la elipse es: ~A" (funcall *multiplicacionXYZ* pi lc ll))
    )
    ```

##Funciones de volumen

1. Calcula el volumen de un cilindro utilizando la fórmula del volumen de un cilindro (π x radio^2 x altura). Utiliza la función lambda *multiplicacionXYZ*.

    ```
    (defun volCilindro() ;1.- volumen de un cilindro
        (setq pi 3.141516)
        (princ "Ingresa la medida del radio: ")
        (setq r (read))
        (princ "Ingresa la medida de la altura: ")
        (setq a (read))

        (format t "El volumen del cilindro es: ~A" (funcall *multiplicacionXYZ* pi (* r r) a))
    )
    ```

2. Calcula el volumen de un cubo elevando al cubo la medida de un lado. Utiliza la función lambda *multiplicacionXYZ*.
    ```
    (defun volCubo() ;2.- volumen de un cubo
        (princ "Ingresa la medida de un lado: ")
        (setq l (read))
        
        (format t "El volumen del cubo es: ~A" (funcall *multiplicacionXYZ* l l l))
    )
    ```

3. Calcula el volumen de un cuboide multiplicando la base por la profundidad y por la altura. Utiliza la función lambda *multiplicacionXYZ*.
    ```
    (defun volCuboide() ;3.- volumen de un cuboide
        (princ "Ingresa la medida del base: ")
        (setq b (read))
        (princ "Ingresa la medida de la profundidad: ")
        (setq p (read))
        (princ "Ingresa la medida de la altura: ")
        (setq a (read))

        (format t "El volumen del cuboide es: ~A" (funcall *multiplicacionXYZ* b p a))
    )
    ```

4. Calcula el volumen de una pirámide mediante el área de la base multiplicada por la altura y dividido por 3. Utiliza la función lambda *multiplicacionXYZ*.
    ```
    (defun volPiramide() ;4.- volumen de una piramide
        (princ "Ingresa la medida del area de base: ")
        (setq a (read))
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))

        (format t "El volumen de la piramide es: ~A" (funcall *multiplicacionXYZ* a h (/ 1 3)))
    )
    ```

5. Calcula el volumen de una pirámide cuadrada utilizando el área de la base (lado x lado) por la altura y dividiendo entre 3. Utiliza la función lambda *multiplicacionXYZ*.
    ```
    (defun volPiramideCuad() ;5.- volumen de una piramide cuadrada
        (princ "Ingresa la medida del un lado: ")
        (setq l (read))
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))
        
        (format t "El volumen de la piramide cuadrada es: ~A" (funcall *multiplicacionXYZ* (/ 1 3) (funcall *multiplicacionXY* l l) h))
    )
    ```

6. Calcula el volumen de un prisma multiplicando el área de la base por la altura. Utiliza la función lambda *multiplicacionXY*.

    ```
    (defun volPrisma() ;6.- volumen de un prisma
        (princ "Ingresa el area de la base: ")
        (setq ab (read))
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))

        (format t "El volumen del prisma es: ~A" (funcall *multiplicacionXY* ab h))
    )
    ```

7. Calcula el volumen de un prisma triangular multiplicando el área del triángulo base por la longitud del prisma triangular. Utiliza la función lambda *multiplicacionXY* y *baseAltura2*.
    ```
    (defun volPrismaTriangular() ;7.- volumen de un prisma triangular
        (princ "Ingresa la altura triangulo base: ")
        (setq tb (read))
        (princ "Ingresa base del triangulo base: ")
        (setq th (read))
        (princ "Ingresa la medida del largo del prisma triangular: ")
        (setq lp (read))

        (format t "El volumen del prisma triangular es: ~A" (funcall *multiplicacionXY* (funcall *baseAltura2* tb th) lp))
    )
    ```
8. Calcula el volumen de una esfera utilizando la fórmula del volumen de una esfera ((4/3)πr³). Utiliza la función lambda *divicionEntre3* y *multiplicacionXYZ*.
    ```
    (defun volEsfera() ;8.- volumen de una esfera
        (setq pi 3.141516)
        (princ "Ingresa la medida del radio: ")
        (setq r (read))

        (format t "El volumen de la esfera es: ~A" (funcall *divicionEntre3* (funcall *multiplicacionXYZ* 4 pi (funcall *multiplicacionXYZ* r r r))))
    )
    ```

9. Calcula el volumen de un cono mediante el área de la base por la altura y dividiendo el resultado entre 3. Utiliza la función lambda *divicionEntre3* y *multiplicacionXYZ*.
    ```
    (defun volCono() ;9.- volumen de un cono
        (setq pi 3.141516)
        (princ "Ingresa la medida del radio: ")
        (setq r (read))
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))

        (format t "El volumen de la cono es: ~A" (funcall *divicionEntre3* (funcall *multiplicacionXYZ* pi (funcall *multiplicacionXY* r r) h)))
    )
    ```

10. Calcula el volumen de un tetraedro mediante el área de la base por la altura y dividiendo el resultado entre 3. Utiliza la función lambda *multiplicacionXY* y *multiplicacionXYZ*.
    ```
    (defun volTetraedro() ;10.- volumen de un tetraedro
        (princ "Ingresa la medida de un lado: ")
        (setq l (read))

        (format t "El volumen de la cono es: ~A" (/ (funcall *multiplicacionXY* (sqrt 2) (funcall *multiplicacionXYZ* l l l)) 12))
    )
    ```