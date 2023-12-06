    (defun sumaNumero()
        (princ "Ingresa un numero: ")
        (setq num1 (read)) ;vamos a leer directamente lo que se ingrese en la terminal cons read y lo asignamos a num1 con setq
        (princ "Ingresa un segundo numero: ")
        (setq num2 (read))

        (write (+ num1 num2)); write nos permite escribir pero nos evalua dos veces la operacion en este caso arroja 2
    )


    (defun areaCuadrado() ;1.- area de un cuadrado
        (princ "Ingresa la medida de un lado: ")
        (setq l (read))

        (print "Área del cuadrado: ")
        (setq aCudrado (* l l))
    )

    (defun areaRectangulo() ;2.- area de un rectangulo
        (princ "Ingresa la medida de la base: ")
        (setq b (read))
        
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))

        (print "Área del rectangulo: ")
        (setq aRectangulo (* b h))
    )

    (defun areaTriangulo() ;3.- area de un triangulo
        (princ "Ingresa la medida de la base: ")
        (setq b (read))
        
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))

        (print "Área del triangulo: ")
        (setq aTriangulo (/ (* b h) 2))
    )

    (defun areaCirculo() ;4.- area de un circulo
        (setq pi 3.141516)
        (princ "Ingresa la medida del radio: ")
        (setq r (read))

        (print "Área del circulo: ")
        (setq aCirculo (* (* r r) pi))
    )

    (defun areaRombo() ;5.- area de un rombo
        (princ "Ingresa la medida del diagonal mayor: ")
        (setq dmayor (read))
        (princ "Ingresa la medida del diagonal menor: ")
        (setq dmenor (read))

        (print "Área del rombo: ")
        (setq aRombo (/ (* dmayor dmenor) 2))
    )

    (defun areaPentagonoRegular() ;6.- area de un pentagono regular
        (princ "Ingresa la medida del lado: ")
        (setq l (read))
        (princ "Ingresa la medida del apotema: ")
        (setq a (read))

        (print "Área del pentagono regular: ")
        (setq aRombo (/ (* l a 5) 2))
    )



    (defun areaCilindro() ;7.- area de un cilindro
        (setq pi 3.141516)
        (princ "Ingresa la medida del radio: ")
        (setq r (read))
        (princ "Ingresa la medida de la altura: ")
        (setq a (read))

        (print "Área del cilindro: ")
        (setq a (* 2 pi r (+ r a)))
    )


    (defun areaHexagonoRegular() ;8 area de un hexagono regular
        (princ "Ingresa la medida del lado: ")
        (setq l (read))
        (princ "Ingresa la medida del apotema: ")
        (setq a (read))

        (print "Área del hexagono regular: ")
        (setq aRombo (* 3 l a))
    )

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

    (defun areaElipse() ;10.- area de un elipse
        (setq pi 3.141516)
        (princ "Ingresa la medida de longitud corta: ")
        (setq lc (read))
        (princ "Ingresa la medida de longitud larga: ")
        (setq ll (read))
        
        (print "Área del elipse: ")
        (setq aRombo (* pi lc ll ))
    )


    ;----------------- funciones para los volumenes ------------------------------

    (defun volCilindro() ;1.- volumen de un cilindro
        (setq pi 3.141516)
        (princ "Ingresa la medida del radio: ")
        (setq r (read))
        (princ "Ingresa la medida de la altura: ")
        (setq a (read))
        
        (print "Volumen del cilindro: ")
        (setq aRombo (* pi (* r r) a))
    )

    (defun volCubo() ;2.- volumen de un cubo
        (princ "Ingresa la medida de un lado: ")
        (setq l (read))
        
        (print "Volumen del cubo: ")
        (setq aRombo (* l l l))
    )

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

    (defun volPiramide() ;4.- volumen de una piramide
        (princ "Ingresa la medida del area de base: ")
        (setq a (read))
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))
        
        (print "Volumen de la piramide: ")
        (setq aRombo (* a h (/ 1 3)))
    )


    (defun volPiramideCuad() ;5.- volumen de una piramide cuadrada
        (princ "Ingresa la medida del un lado: ")
        (setq l (read))
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))
        
        (print "Volumen de la piramide cuadrada: ")
        (setq aRombo (* (/ 1 3) (* l l) h))
    )

    (defun volPrisma() ;6.- volumen de un prisma
        (princ "Ingresa el area de la base: ")
        (setq ab (read))
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))
        
        (print "Volumen del prisma: ")
        (setq aRombo (* ab h))
    )

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

    (defun volEsfera() ;8.- volumen de una esfera
        (setq pi 3.141516)
        (princ "Ingresa la medida del radio: ")
        (setq r (read))

        (print "Volumen de la esfera: ")
        (setq aRombo (/ (* 4 pi (* r r r)) 3))
    )

    (defun volCono() ;9.- volumen de un cono
        (setq pi 3.141516)
        (princ "Ingresa la medida del radio: ")
        (setq r (read))
        (princ "Ingresa la medida de la altura: ")
        (setq h (read))

        (print "Volumen del cono es: ")
        (setq aRombo (/ (* pi (* r r) h) 3))
    )

    (defun volTetraedro() ;10.- volumen de un tetraedro
        (princ "Ingresa la medida de un lado: ")
        (setq l (read))

        (print "Volumen del tetraedro es: ")
        (setq aRombo (/ (* (sqrt 2) (* l l l)) 12))
    )

