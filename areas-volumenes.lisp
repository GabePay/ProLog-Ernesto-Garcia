(defun sumaNumero()
    (princ "Ingresa un numero: ")
    (setq num1 (read)) ;vamos a leer directamente lo que se ingrese en la terminal cons read y lo asignamos a num1 con setq
    (princ "Ingresa un segundo numero: ")
    (setq num2 (read))

    (write (+ num1 num2)); write nos permite escribir pero nos evalua dos veces la operacion en este caso arroja 2
)


(defun areaCuadrado() ;1 de area
    (princ "Ingresa la medida de un lado: ")
    (setq l (read))

    (setq aCudrado (* l l))
)

(defun areaRectangulo() ;2 de area
    (princ "Ingresa la medida de la base: ")
    (setq b (read))
    
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (setq aRectangulo (* b h))
)

(defun areaTriangulo() ;3 de area
    (princ "Ingresa la medida de la base: ")
    (setq b (read))
    
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (setq aTriangulo (/ (* b h) 2))
)

(defun areaCirculo() ;4 de area
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))

    (setq aCirculo (* (* r r) pi))
)

(defun areaRombo() ;5 de area
    (princ "Ingresa la medida del diagonal mayor: ")
    (setq dmayor (read))
    (princ "Ingresa la medida del diagonal menor: ")
    (setq dmenor (read))

    
    (setq aRombo (/ (* dmayor dmenor) 2))
)

(defun areaPentagonoRegular() ;6 de area
    (princ "Ingresa la medida del lado: ")
    (setq l (read))
    (princ "Ingresa la medida del apotema: ")
    (setq a (read))

    
    (setq aRombo (/ (* l a 5) 2))
)



(defun areaCilindro() ;7 de area - pendiente
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))

    (setq a (* 2 pi r (+ r a)))
)


(defun areaHexagonoRegular() ;8 de area
    (princ "Ingresa la medida del lado: ")
    (setq l (read))
    (princ "Ingresa la medida del apotema: ")
    (setq a (read))

    
    (setq aRombo (* 3 l a))
)

(defun areaTrapecio() ;9 de area
    (princ "Ingresa la medida de la base corta: ")
    (setq bc (read))
    (princ "Ingresa la medida de la base larga: ")
    (setq bl (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))
    
    (print "Area del trapecio: ")
    (setq aRombo (* (/ (+ bc bl) 2) h))
)

(defun areaElipse() ;10 de area
    (setq pi 3.141516)
    (princ "Ingresa la medida de longitud corta: ")
    (setq lc (read))
    (princ "Ingresa la medida de longitud larga: ")
    (setq ll (read))
    
    (print "Area del elipse: ")
    (setq aRombo (* pi lc ll ))
)

;----------------- funciones para los volumenes ------------------------------

(defun volCilindro() ;1 de area
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))
    
    (print "Volumen del cilindro: ")
    (setq aRombo (* pi (* r r) a))
)

(defun volCubo() ;2 de area
    (princ "Ingresa la medida de un lado: ")
    (setq l (read))
    
    (print "Volumen del cubo: ")
    (setq aRombo (* l l l))
)

(defun volCuboide() ;3 de area
    (princ "Ingresa la medida del base: ")
    (setq b (read))
    (princ "Ingresa la medida de la profundidad: ")
    (setq p (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))
    
    (print "Volumen del cilindro: ")
    (setq aRombo (* b p a))
)

(defun volCuboide() ;3 de area
    (princ "Ingresa la medida del base: ")
    (setq b (read))
    (princ "Ingresa la medida de la profundidad: ")
    (setq p (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))
    
    (print "Volumen del cilindro: ")
    (setq aRombo (* b p a))
)



