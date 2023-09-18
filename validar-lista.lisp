(defun recorre (lista x)
    (if (equal (car lista) x)

        (format t "Si se encontro el numero ~A" x)

    )
     (if lista
         (recorre (cdr lista) x)
     )
)