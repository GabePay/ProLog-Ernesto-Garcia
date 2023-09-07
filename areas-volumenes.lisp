(defun sumaNumero()
    (princ "dame un numero: ")
    (setq num1 (read)) ;vamos a leer directamente lo que se ingrese en la terminal cons read y lo asignamos a num1 con setq
    (princ "dame un segundo numero: ")
    (setq num2 (read))

    (write (+ num1 num2)); write nos permite escribir pero nos evalua dos veces la operacion en este caso arroja 2
)


(defun areaCuadrado() ;1 de area
    (princ "Dame la medida de un lado: ")
    (setq l (read))

    (setq aCudrado (* l l))
)

(defun areaRectangulo() ;2 de area
    (princ "Dame la medida de la base: ")
    (setq b (read))
    
    (princ "Dame la medida de la altura: ")
    (setq h (read))

    (setq aRectangulo (* b h))
)

(defun areaTriangulo() ;3 de area
    (princ "Dame la medida de la base: ")
    (setq b (read))
    
    (princ "Dame la medida de la altura: ")
    (setq h (read))

    (setq aTriangulo (/ (* b h) 2))
)

(defun areaCirculo() ;4 de area
    (setq pi 3.141516)
    (princ "Dame la medida del radio: ")
    (setq r (read))

    (setq aCirculo (* (* r r) pi))
)

(defun areaRombo() ;5 de area
    (princ "Dame la medida del D: ")
    (setq Di (read))
    (princ "Dame la medida del d: ")
    (setq d (read))

    
    (setq aRombo (/ (* Di d) 2))
)

(defun areaPentagono() ;6 de area
    (princ "Dame la medida del P: ")
    (setq p (read))
    (princ "Dame la medida del a: ")
    (setq a (read))

    
    (setq aRombo (/ (* p a) 2))
)

(defun areaHexagono() ;7 de area
    (princ "Dame la medida del P: ")
    (setq p (read))
    (princ "Dame la medida del a: ")
    (setq a (read))

    
    (setq aRombo (/ (* p a) 2))
)

(defun areaTrapecio() ;8 de area
    (princ "Dame la medida de la base corta: ")
    (setq bc (read))
    (princ "Dame la medida de la base larga: ")
    (setq bl (read))
    (princ "Dame la medida de la altura: ")
    (setq h (read))
    
    (setq aRombo (/ (* bl bc h) 2))
)