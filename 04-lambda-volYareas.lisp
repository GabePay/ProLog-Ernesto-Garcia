;funciones lambda ------------------------------

(defvar *multiplicacionXY* (lambda (x y) (* x y)))

(defvar *multiplicacionXYZ* (lambda (x y z) (* x y z) ))

(defvar *divicionEntre3* (lambda (x) (/ x 3) ))

(defvar *baseAltura2* (lambda (x y) (/ (funcall *multiplicacionXY* x y) 2)))

(defvar *aRombo* (lambda (x y z) (/ (funcall *multiplicacionXYZ* z y z ) 2) ))

(defvar *aCilindro* (lambda (pi r a) (* 2 pi r (+ r a))))

(defvar *aTrapecio* (lambda (x y z) (* (/ (+ x y) 2) h)))



(defun areaCuadrado() ;1.- area de un cuadrado
    (princ "Ingresa la medida de un lado: ")
    (setq l (read))

    (format t "El area del cuadrado es : ~A"(funcall *multiplicacionXY* l l))
)


(defun areaRectangulo() ;2.- area de un rectangulo
    (princ "Ingresa la medida de la base: ")
    (setq b (read))
    
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (format t "El area del rectangulo es : ~A"(funcall *multiplicacionXY* b h))
)

(defun areaTriangulo() ;3.- area de un triangulo
    (princ "Ingresa la medida de la base: ")
    (setq b (read))
    
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (format t "El area del triangulo es : ~A" (funcall *baseAltura2* b h))
)

(defun areaCirculo() ;4.- area de un circulo
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))

    (format t "El area del circulo es : ~A" (funcall *multiplicacionTresVeces* r pi ))
)

(defun areaRombo() ;5.- area de un rombo
    (princ "Ingresa la medida del diagonal mayor: ")
    (setq dmayor (read))
    (princ "Ingresa la medida del diagonal menor: ")
    (setq dmenor (read))

    (format t "El area del rombo es : ~A"(funcall *baseAltura2* dmayor dmenor))
)

(defun areaPentagonoRegular() ;6.- area de un pentagono regular
    (princ "Ingresa la medida del lado: ")
    (setq l (read))
    (princ "Ingresa la medida del apotema: ")
    (setq a (read))

    (format t "El area del pentagono es : ~A" (funcall *aRombo* l a 5))

)

(defun areaCilindro() ;7.- area de un cilindro
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))

    (format t "El area del pentagono es : ~A" (funcall *aCilindro* pi r a))
)


(defun areaHexagonoRegular() ;8 area de un hexagono regular
    (princ "Ingresa la medida del lado: ")
    (setq l (read))
    (princ "Ingresa la medida del apotema: ")
    (setq a (read))

    (format t "El area del Hexagono Regular es : ~A" (funcall *multiplicacionXYZ* 3 l a))
)

(defun areaTrapecio() ;9.- area de un trapecio
    (princ "Ingresa la medida de la base corta: ")
    (setq bc (read))
    (princ "Ingresa la medida de la base larga: ")
    (setq bl (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (format t "El area del Trapecio es : ~A" (funcall *aTrapecio* bc bl h))
)

(defun areaElipse() ;10.- area de un elipse
    (setq pi 3.141516)
    (princ "Ingresa la medida de longitud corta: ")
    (setq lc (read))
    (princ "Ingresa la medida de longitud larga: ")
    (setq ll (read))

    (format t "El area de la elipse es: ~A" (funcall *multiplicacionXYZ* pi lc ll))
)

;----------------- volumenes ------------------------------

(defun volCilindro() ;1.- volumen de un cilindro
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))

    (format t "El volumen del cilindro es: ~A" (funcall *multiplicacionXYZ* pi (* r r) a))
)

(defun volCubo() ;2.- volumen de un cubo
    (princ "Ingresa la medida de un lado: ")
    (setq l (read))
    
    (format t "El volumen del cubo es: ~A" (funcall *multiplicacionXYZ* l l l))
)

(defun volCuboide() ;3.- volumen de un cuboide
    (princ "Ingresa la medida del base: ")
    (setq b (read))
    (princ "Ingresa la medida de la profundidad: ")
    (setq p (read))
    (princ "Ingresa la medida de la altura: ")
    (setq a (read))

    (format t "El volumen del cuboide es: ~A" (funcall *multiplicacionXYZ* b p a))
)

(defun volPiramide() ;4.- volumen de una piramide
    (princ "Ingresa la medida del area de base: ")
    (setq a (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (format t "El volumen de la piramide es: ~A" (funcall *multiplicacionXYZ* a h (/ 1 3)))
)

(defun volPiramideCuad() ;5.- volumen de una piramide cuadrada
    (princ "Ingresa la medida del un lado: ")
    (setq l (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))
    
    (format t "El volumen de la piramide cuadrada es: ~A" (funcall *multiplicacionXYZ* (/ 1 3) (funcall *multiplicacionXY* l l) h))
)


(defun volPrisma() ;6.- volumen de un prisma
    (princ "Ingresa el area de la base: ")
    (setq ab (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (format t "El volumen del prisma es: ~A" (funcall *multiplicacionXY* ab h))
)

(defun volPrismaTriangular() ;7.- volumen de un prisma triangular
    (princ "Ingresa la altura triangulo base: ")
    (setq tb (read))
    (princ "Ingresa base del triangulo base: ")
    (setq th (read))
    (princ "Ingresa la medida del largo del prisma triangular: ")
    (setq lp (read))

    (format t "El volumen del prisma triangular es: ~A" (funcall *multiplicacionXY* (funcall *baseAltura2* tb th) lp))
)

(defun volEsfera() ;8.- volumen de una esfera
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))

    (format t "El volumen de la esfera es: ~A" (funcall *divicionEntre3* (funcall *multiplicacionXYZ* 4 pi (funcall *multiplicacionXYZ* r r r))))
)

(defun volCono() ;9.- volumen de un cono
    (setq pi 3.141516)
    (princ "Ingresa la medida del radio: ")
    (setq r (read))
    (princ "Ingresa la medida de la altura: ")
    (setq h (read))

    (format t "El volumen de la cono es: ~A" (funcall *divicionEntre3* (funcall *multiplicacionXYZ* pi (funcall *multiplicacionXY* r r) h)))
)

(defun volTetraedro() ;10.- volumen de un tetraedro
    (princ "Ingresa la medida de un lado: ")
    (setq l (read))

    (format t "El volumen de la cono es: ~A" (/ (funcall *multiplicacionXY* (sqrt 2) (funcall *multiplicacionXYZ* l l l)) 12))
)
