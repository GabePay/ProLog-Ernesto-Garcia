# Tarea: If, Case, When, Unless y cond

**Realizar los siguientes ejecicios usando lisp**

1. Una tienda que vende pantalones Dickies al menudeo y al mayoreo tiene las siguientes tarifas, si se compran menos de 5 pantalones estos secobran a su precio normal, en caso de que se copren 5 o mas pero menos de 12 , se les descuenta el 15% en cada pantalon, si se compran mas de 12 se les descuenta 30% en cada pantalon.  Escriba un programa que pida como dato de entrada el numero de pantalones que se desean comprar y con ello imprima el total a pagar por la compra hecha.  

    
    Necesitamos una variable para asignar el valor de los pantalones en nuestro caso le dimos un valor de 300 como se ve acontinuacion  
    
    `(setq precioPantalones 300)`

    Despues definimos la funcion para poder obtener el precio con o sin descuento.

**Codigo del ejercicio 1:**
~~~
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
~~~

__Explicacion del codigo:__

La funcion recive una variable llamada pantalones que es el total de los pantalones que se compro, se multiplica por el precio de los pantalones para obtener un total que despues se va a utilizar, nuestra variable pantalones entra por unos ifs para determinar que operacion y que descuento se tiene que realizar una vez que se identifico que porcentaje se le tiene que descontar al precio se aplica y se muestra en pantalla, al igual que si pone un numero de pantalones menor o de 0 nos muestra un mensaje de que nos dice que el numero no es valido.


2. Escriba un programa para determinar si un solicitante puede lograr un préstamo. Deberá pedir los siguientes datos para cada solicitante:
Nombre, historia crediticia(‘b’buena o ‘m’ mala), cantidad pedida, salario anual, y valor de otras propiedades.  El banco solo considerará a los solicitantes con un estado de crédito bueno.De aquellos, solo aceptara los que tengan mas de 6 puntos.Los puntos se obtienen como sigue: 5 puntos si el salario es 50% del préstamo o más. 3 puntos si el salario es por lo menos 25% pero menos de 50% del préstamo.  1 punto si el salario es por lo menos 10% pero menos de 25% del préstamo.  5 puntos si se tiene otra propiedad del doble
del préstamo o mas.  3 puntos si se tiene otra propiedad igual al préstamo pero menor del doble.
   
**Codigo del ejercicio 2:**   
~~ 
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
~~

__Explicacion del codigo:__

En este caso vamos a tener una variabe que nos va a servir para ir acumulando los puntos, despues se le preguntara al usuario varias cosas como su nombre, historial crediticio, prestamo, etc. cada una tiene su respectiva variable, en este caso utilizamos el when para saber si su credito es b de bueno si eto es verdadero, pasa a un bloque de condiciones en donde primero vamos a checar el salario si es mayor a lo que pide en el prestamo y dependiendo de como este su sueldo a comparacion del prestamo y se le asignaran los puntos correspondientes a la variable **puntos**, despues pasa a otras condiciones donde se evalua si tiene una propiedad que sea mayor, menor o igual al del prestamos y se le añade a la variable **puntos** los puntos correspondientes. Por ultimo se compara en un if si se acepta la solicitu o no y su respectivo mensaje de cuantos puntos obtuvo.



3. Escriba un programa que pida una letra minúscula, el programa deberá imprimir si la letra es una vocal (a,e,i,o,u), semivocal (y) o una consonante.


**Codigo del ejercicio 3:**
~~(defun letras()
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
    
)~~
   
__Explicacion del codigo:__
En este caso se le pide al usuario el igresar una letra en minusculas, despues se crean varias listas que contengan las variables vocale, consonantes y semivocal. Despues tenemos un bloque de condiciones en donde va a checar si el caracter ingresado por el usuario se encuentra o es miembro dentro de alguna lista, si esto es correcto se imprime a que lista pertenece y si no se encuentra ninguna lista se manda un mensaje en donde le dice que  no se encuentra.


4. Para determinar si un año es bisiesto o no debe de cumplir las siguiente regla: Ser divisible entre 4 y no divisible entre 100 o bien divisible entre 400.  Escriba un programa que pida como entrada el año e imprima si el año es bisiesto o no.

**Codigo del ejercicio 4:**
~~(defun anioBisiesto()
    (print "Ingresa un año para corroborar si es bisiesto: ")
    (setq anio (read))

    (when (and (= (mod anio 4) 0) (= (mod anio 400) 0))
        (format t "El año '~A' si es bisiesto" anio)
    )

    (unless (and (= (mod anio 4) 0) (= (mod anio 400) 0))
        (format t "El año '~A' no es bisiesto" anio)
    )
)~~

__Explicacion del codigo:__
    En este caso utilizamos vamos a utilizar el when y el unless, que serian parecidos, en el when comparamos si el año igresado se puede dividir entre 4 y que se puede dividir entre 400, en el when si esto es verdadero se ejecuta lo que esta adentro de esto y se imprimira que el año si es bisiesto, si hacemos la misma comparacion pero con en unless va a tomar cuando esto sea falso y se ejecutara lo que esta adentro que en este caso es el que  el año no es biciesto


5. Escriba un programa que pida el numero de mes (del 1 al 12 ) e imprima el numero de dias que tiene el mes, donde:

        • El mes 2 tiene 28 dias
        • Los meses 4,6,9 y 11 tienen 30 dias
        • Los meses 1,3,5,7,8,10 y 12 tienen 31 dias
    Si da un mes diferente a los anteriores debera imprimir el mensaje “MES ERRONEO”.

**Codigo del ejercicio 4:**
~~(defun diasMeses()
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
)~~

__Explicacion del codigo:__
Vamos a pedir que se ingrese un mes en formato numero del 1-12, despues creamos dos listas de numeros en donde se dividan los dias de 30 dias y los que tengan 31 dias. entramos a una comparacion if para saber si el numero ingresado esta en este rango si no se imprime que el mes es invalido, si es correcto pasa a un bloque de condiciones en donde se comprueba si el mes ingresado pertenece la lista que tienen 30 dias, 31 dias y si no por default es el que tienen 28 dias