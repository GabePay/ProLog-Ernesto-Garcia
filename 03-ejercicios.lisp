;Ejercicios if case whe unless cond

;Resolver los siguientes problemas utilizando if, case, when, unless, cond, checar la pagina del libro

; ------------ Ejercicio 1
;    Una tienda que vende pantalones Dickies al menudeo y al mayoreo tiene
;    las siguientes tarifas, si se compran menos de 5 pantalones estos se
;    cobran a su precio normal, en caso de que se copren 5 o mas pero
;    menos de 12 , se les descuenta el 15% en cada pantalon, si se compran
;    mas de 12 se les descuenta 30% en cada pantalon.  Escriba un programa
;    que pida como dato de entrada el numero de pantalones que se desean
;    comprar y con ello imprima el total a pagar por la compra hecha.

(setq precioPantalones 300)

(defun tiendaPantalones ( pantalones )
    (setq total (* pantalones precioPantalones))
    (if (<= pantalones 5)

        (format t "Precio de los pantalones: ~A" (* pantalones precioPantalones))

        (if (< pantalones 12)

            (format t "Precio de los pantalones con 15%: ~A" (- total (/ (* total 15) 100)))

            (if (> pantalones 12)
                (format t "Precio de los pantalones con 30%: ~A" (- total (/ (* total 30) 100)))

                (print "Esas numero no son validos")
            )
        )
    )
)


; ------------ Ejercicio 2
;;    Escriba un programa para determinar si un solicitante puede lograr un
;;    préstamo. Deberá pedir los siguientes datos para cada solicitante:
;;    Nombre, historia crediticia(‘b’buena o ‘m’ mala), cantidad pedida,
;;    salario anual, y valor de otras propiedades.  El banco solo
;;    considerará a los solicitantes con un estado de crédito bueno.  De
;;    aquellos, solo aceptara los que tengan mas de 6 puntos.  Los puntos
;;    se obtienen como sigue: 5 puntos si el salario es 50% del préstamo o
;;    más.  3 puntos si el salario es por lo menos 25% pero menos de 50%
;;    del préstamo.  1 punto si el salario es por lo menos 10% pero menos
;;    de 25% del préstamo.  5 puntos si se tiene otra propiedad del doble
;;    del préstamo o mas.  3 puntos si se tiene otra propiedad igual al
;;    préstamo pero menor del doble.

(defun determinarPrestamo()
    (setq puntos 0)

    (print "Ingresa el nombre")
    (setq name (read))

    (print "Ingresa historial crediticio ('b' buena o 'm' mala)")
    (setq credito (read))

    (print "Ingresa la cantidad del prestamo")
    (setq prestamo (read))

    (print "Ingresa el salario anual")
    (setq salarioAnual (read))

    (print "Ingresa el valor de otras propiedades")
    (setq valorPropiedades (read))

    (when (eq credito 'b)
        (cond
            ((>= salarioAnual (obtenerPorciento prestamo 50))(setq puntos (+ puntos 5)))
            ((>= salarioAnual (obtenerPorciento prestamo 25))(setq puntos (+ puntos 3)))
            ((>= salarioAnual (obtenerPorciento prestamo 10))(setq puntos (+ puntos 1)))
            ;(t (format t "no obtubo puntos ya que gana poco"))
        )
        (cond
            ((>= valorPropiedades (* prestamo 2))(setq puntos (+ puntos 5)))
            ((>= valorPropiedades prestamo)(setq puntos (+ puntos 3)))
        )

        (if (>= puntos 6)
            (format t "~A su solicitud ha sido aceptada cumple con los puntos necesarios" name)

            (format t "~A su solicitud ha sido rechazada no cumple con los puntos necesarios" name)
        )
    )
)

(defun obtenerPorciento(cantidad porcentaje)
    (/ (* cantidad porcentaje) 100)
)



;; ---------------- Ejercicio 3
;;    Escriba un programa que pida una letra minúscula, el programa deberá
;;    imprimir si la letra es una vocal (a,e,i,o,u), semivocal (y) o una
;;    consonante.

(defun letras()
    (print "Ingresa una letra en minuscula: ")
    (setq letra (read-char))

    (setq volcales `(#\a #\e #\i #\o #\u))
    (setq consonantes `(#\b #\c #\d #\f #\g #\h #\j #\k #\l #\m #\n #\p #\q #\r #\s #\t #\v #\w #\x #\z))
    (setq semivocal `(#\y))

    (cond
         ((member letra volcales)(format t "la letra '~A' es una vocal" letra))
         ((member letra consonantes)(format t "la letra '~A' es una consonante" letra))
         ((member letra semivocal)(format t "la letra '~A' es una semivocal" letra))
         (t (format t "quien sabe que ingresaste compa"))
    )
    
)


;; 4. Para determinar si un año es bisiesto o no debe de cumplir las
;;    siguiente regla: Ser divisible entre 4 y no divisible entre 100 o
;;    bien divisible entre 400.  Escriba un programa que pida como entrada
;;    el año e imprima si el año es bisiesto o no.

(defun anioBisiesto()
    (print "Ingresa un año para corroborar si es bisiesto: ")
    (setq anio (read))

    (when (and (= (mod anio 4) 0) (= (mod anio 400) 0))
        (format t "El año '~A' si es bisiesto" anio)
    )

    (unless (and (= (mod anio 4) 0) (= (mod anio 400) 0))
        (format t "El año '~A' no es bisiesto" anio)
    )
    
)

;; 5. Escriba un programa que pida el numero de mes (del 1 al 12 ) e
;;    imprima el numero de dias que tiene el mes, donde:

;;    • El mes 2 tiene 28 dias
;;    • Los meses 4,6,9 y 11 tienen 30 dias
;;    • Los meses 1,3,5,7,8,10 y 12 tienen 31 dias

;;    Si da un mes diferente a los anteriores debera imprimir el mensaje
;;    “MES ERRONEO”.

(defun diasMeses()
    (print "Ingresa el numero de un mes (1-12) ")
    (setq mes (read))

    (setq treintaDias (list 4 6 9 11))
    (setq treintaUnoDias (list 1 3 5 7 8 10 12))

    (if (and (> mes 0) (<= mes 12))

        (cond
            ((member mes treintaUnoDias) (format t "El mes ~A tiene 31 dias" mes))
            ((member mes treintaDias) (format t "El mes ~A tiene 30 dias" mes))
            ((eq mes 2) (format t "El mes ~A tiene 28 dias" mes))
        )


        (format t "El mes ingresado no existe")
    )
)

























