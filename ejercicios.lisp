;Ejercicios if case whe unless cond

;Resolver los siguientes problemas utilizando if, case, when, unless, cond, checar la pagina del libro

;ejercicio 1

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