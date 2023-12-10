
eliza:-	writeln('Hola , mi nombre es  Eliza tu  chatbot,
	por favor ingresa tu consulta,
	usar solo minúsculas sin . al final:'),
	readln(Input),
	eliza(Input),!.
eliza(Input):- Input == ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.

template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 4, '?'], [4]).

template([hola, ',', mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buendia, ',', mi, nombre, es, s(_), '.'], ['Buendia', 'Como', estas, tu, 0, '?'],[5]).

template([hola, como, estas, '?'], ['Hola', estoy, aqui, para, ayudarte],[]).
template(['Puedes', ayudarme, '?'], ['Por', supuesto, '.', estoy, aqui, para, ayudarte],[]).
template(['Tengo', una, pregunta, '?'], ['Hola', cual, es, tu, pregunta, '?'],[]).
template(['Hola', soy, s(_), y, tengo, una, duda], ['Hola', yo, soy, eliza, '.', cual, es, tu, duda, '?'],[]).
template(['Estas', disponible, '?'], ['Si', estoy, disponible, '.', en, que, te, puedo, ayudar, '?'],[]).


%--------------------------------------------------------------------------------------------------
% Templates sobre las enfermedades
%--------------------------------------------------------------------------------------------------

%que es la gota
% ejemplo: Que es la gota ?
template(['Que', es, la, s(_), _], [infoEnfermedad],[3]).
template(['Sabes', que, es, la, s(_), _], [infoEnfermedad],[4]).
template(['Me', puedes, decir, que, es, la, s(_), _], [infoEnfermedad],[6]).



%causas
template(['Que', causa, la, s(_), _], [causasEnfermedad],[3]).
template(['Cual', es, la, causa, de, la, s(_), _], [causasEnfermedad],[6]).
template(['Causas',de, la, s(_), _], [causasEnfermedad],[3]).
template(['Como',se, manifiesta, la, s(_), _], [manifest],[4]).
template(['Manifestacion',de, la, s(_), _], [manifest],[3]).

%complicaciones
template(['Se', puede, complicar, la, s(_), _], [complicacion],[4]).
template(['Hay', forma, de, que, se, complique, la, s(_), _], [complicacion],[7]).
template(['Se', puede, desarrollar, afecciones, mas, graves, '?'], ['Si se puede desarrollar algunas son: gota currente, gota avanzada, calculos renales'],[]).
template(['Cuales', son, algunas, de, las, afecciones, de, la, gota, _], ['Si se puede desarrollar algunas son: gota currente, gota avanzada, calculos renales'],[]).


%pruebas y diagnostico
template(['Como', se, diagnostica, la, gota, _], ['La gota se diagnostica generalmente a través de una combinación de exámenes físicos, historial médico y varias pruebas.'],[]).
template(['Que', pruebas, se, realizan, _], ['Las pruebas para la gota son: Artrocentesis, Hematologia, Radiografía, Ultrasonido y DECT'],[]).
template(['La', s(_), es, una, prueba, para, la, gota, _], [quePruebas],[1]).
template(['El', s(_), es, una, prueba, para, la, gota, _], [quePruebas],[1]).

%tratamientos y medicamentos
template(['Cual', es, el, tratamiento, para, la, gota, _], ['El tratamiento para la gota generalmente se centra en dos aspectos: aliviar el dolor y la inflamación asociados con los ataques de gota y prevenir futuros ataques al reducir la cantidad de ácido úrico en la sangre'],[]).
template(['Cuales', son, los, medicamentos, para, la, gota, _], ['Los medicamentos para tratar de aliviar la gota son, Advil, Motrin,naproxeno, colchincina y prednisona'],[]).

%prevencion
template(['Como', se, puede, prevenir, la, gota, _], ['La prevención de la gota generalmente implica cambios en el estilo de vida y la dieta para reducir los niveles de ácido úrico en la sangre'],[]).
template(['Cuales', son, las, estrategis, para, prevenir, la, gota, _], ['Te muestro algunas estrategias que te pueden ayudar: Adelgazar, Dieta, Ejercicio e Hidratacion'],[]).
template(['Explicame', que, es, la, s(_), _], [prev],[4]).
template(['Explicame', que, es, el, s(_), _], [prev],[4]).

%Epidemiologia
template(['Cuantas', personas, se, ven, afectadas, por, esta, enfermedad, _], ['A nivel mundial, los casos de gota continúan aumentando. En 2017, 92 de cada 100,000 personas fueron diagnosticadas con la enfermedad1'],[]).
template(['A', que, personas, es, mas, comun, que, desarrollen, la, gota, _], ['Según un informe de 2021, las tasas mas altas se encuentran entre las poblaciones afroamericanas y asiático-americanas. Los adultos mayores y los hombres son los más propensos a verse afectados por la gota. Sin embargo, la afección puede desarrollarse en la adultez temprana'],[]).

%Tasa de mortalidad
template(['Cual', es, la, tasa, de, mortalidad, _], ['la tasa de supervivencia promedio a los siete años para las personas con gota era de alrededor del 85%. Del 15% restante con la afección, aproximadamente el 66% murió de enfermedad cardiovascular'],[]).
template(['Como', impacta, la, enfermedad, en, la, esperanza, de, vida, _], ['La gota puede tener un impacto significativo en la esperanza de vida. Un estudio encontró que las personas con gota tienen un 25% más de probabilidades de morir prematuramente que las personas sin gota'],[]).

%apoyo
template(['Existen', apoyos, para, la, gota, '?'], ['Si existen grupos de apoyo, educativos, financieros y dieteticos.'],[]).
template(['Cuales', son, los, grupos, de, s(_)], [apoy],[5]).
template(['Cuales', son, los, grupos, s(_)], [apoy],[4]).

%especialistas
template(['Que', especialistas, atienden, la, gota, '?'], ['El especialista que te puede tratar la gota es el Reumatologo'],[]).
template(['Que', es, un, s(_), '?'], [esp],[3]).


%sintomas


template(['Cuales', son, los, sintomas, de, la, gota, '?'], ['Los sintomas de la gota son los siguientes: enrojesimiento, Incomodidad, eritema, rigidez'],[]).
template(['La',s(_), es, sintoma, de, la, gota, '?'], [likeSintomas],[1]).
template(['El',s(_), es, sintoma, de, la, gota, '?'], [likeSintomas],[1]).

template(['Tengo', este, sintoma, s(_), '?'], [sint], [3]).

template(['Tengo', estos, sintomas, s(_), s(_), s(_),'.'],[sintomasVarios],[3,4,5]).





%--------------------------------------------------------------------------------------------------
% Templates sobre el tema de interes: Videojuego apex
%--------------------------------------------------------------------------------------------------

%que es la apex
template(['Que', es, apex, '.'], ['Apex Legends es un videojuego gratuito de disparos en primera persona, desarrollado por Respawn Entertainment y publicado por Electronic Arts.'],[]).
template(['Que', es, apex, legends, '.'], ['Apex Legends es un videojuego gratuito de disparos en primera persona, desarrollado por Respawn Entertainment y publicado por Electronic Arts.'],[]).

%gameplay de apex
template(['Que', como, es, el, gameplay, de, apex, legends, '?'], ['En Apex Legends, los jugadores forman escuadrones de dos o tres personas seleccionando personajes con habilidades predeterminadas llamados "Leyendas" y luchan contra otros jugadores para ser el último escuadrón en pie.'],[]).

%que son las Leyendas
template(['Que', son, las, leyendas, '?'], ['Las Leyendas son personajes jugables en Apex Legends. Cada leyenda es un personaje único con su propia historia, habilidades y estilo de juego. La mayoría de las leyendas deben desbloquearse utilizando Legend Tokens Tokens de Leyenda o Apex Coins Monedas Apex.'],[]).

%habilidades
template(['Cuales', son, las, leyendas, '?'], ['Las leyendas son las siguientes: ', ListaLeyendas],[]):- findall(Leyenda, leyendaApex(Leyenda), ListaLeyendas).
template(['Cuantas', habilidades, tienen, cada, personaje, '?'], ['Cada personaje tiene 3 habilidades: tactica, pasiva y definitiva'],[]).
template(['Cual', es, la, habilidad, pasiva, de, s(_), '?'], [pass],[6]).
template(['Cual', es, la, habilidad, tactica, de, s(_), '?'], [tac],[6]).
template(['Cual', es, la, habilidad, definitiva, de, s(_), '?'], [def],[6]).

%mapas
template(['Cuales', son, los, mapas, de, apex, '?'], ['Los mapas son los siguientes: ', Mapas],[]):- findall(Mapa, mapas(Mapa), Mapas).
template(['Dame', mas, informacion, sobre, el, mapa, canion, de, los, reyes, '.'], ['Una isla remota que alguna vez floreció con recursos en el planeta Solace en las Tierras Salvajes, en los límites de La Frontera.'],[]).
template(['Dame', mas, informacion, sobre, el, mapa, fin, del, mundo, '.'], ['Un duro planeta acosado por una intensa actividad volcánica, Talos una vez fue considerado inhabitable, y solo pequeños asentamientos luditas se establecieron allí.'],[]).
template(['Dame', mas, informacion, sobre, el, mapa, olympus, '.'], ['Construido en 2640 por la humanitaria multimillonaria Lillian Peck[1], esta utopía que flotaba en las nubes sobre Psamathe fue una vez un lugar donde las mentes más brillantes de las Tierras Salvajes podían reunirse e intercambiar ideas, dando lugar a avances en las ciencias y las artes.'],[]).
template(['Dame', mas, informacion, sobre, el, mapa, de, punto, tormenta, '.'], ['Esta isla desierta no siempre estuvo tan desierta. Parte del archipiélago de las Nuevas Antillas[1], esta hermosa isla repleta de abundantes recursos fue uno de los primeros lugares donde las primeras expediciones de IMC tocaron tierra en el planeta Gaea.'],[]).


template(['Cada', cuanto, tiempo, rota, el, mapa, '?'], ['Cinco mapas rotan cada 15 minutos para las partidas normales y 40 minutos para las clasificatorias.
'],[]).
template(['Cuanto', cuesta, el, pase, de, batalla, '?'], ['9.99 dolares'],[]).

% armas
template(['Hay', armas, '?'], ['si, existen varios tipos de armas: pistolas, escopetas, francotiradores, precision, ametralladoras, subfusiles y de asalto.'],[]).
template(['Cuales',son, los, rifles, de, asalto, '?'], [Rifles],[]):- findall(Arma, armaAsalto(Arma), Rifles).
template(['Cuales',son, las, ametralladoras, '?'], [Ametralladoras],[]):- findall(Arma, armaAmetralladora(Arma), Ametralladoras).
template(['Cuales',son, las, escopetas, '?'], [Escopetas],[]):- findall(Arma, armaEscopeta(Arma), Escopetas).
template(['Cuales',son, los, francotiradores, '?'], [Francos],[]):- findall(Arma, armaFrancotirador(Arma), Francos).
template(['Cuales',son, las, pistolas, '?'], [Pistolas],[]):- findall(Arma, armaPistola(Arma), Pistolas).
template(['Cuales',son, los, rifles, de, precision, '?'], [Preciciones],[]):- findall(Arma, armaPrecision(Arma), Preciciones).
template(['Cuales',son, los, subfusiles, '?'], [Sufusiles],[]):- findall(Arma, armaSubfusil(Arma), Sufusiles).

template(['Me', puedes, dar, mas, informacion, sobre, la, s(_), '?'], [pistol],[7]).
template(['Me', puedes, dar, mas, informacion, sobre, el, s(_), '?'], [pistol],[7]).

template(['Cuales', los, niveles, de, las, rankeds, '?'], [Niveles],[]):- findall(Nivel, nivelRanked(Nivel), Niveles).


template(['Tiene', otros, modos, de, juego, '?'], ['Si, Tiene otro modo de juego que es bastante diferente llamado arena, despues esta el juego normal pero con 3 o 2 compañeros.'],[]).

template(['De', que, trata, el, modo, arena, '?'], ['Es un modo de juego donde se enfrentan dos equipos de 3 personajes y pelean para saber quien sobrebive mas tiempo, es de rondas y quien gane mas rondas es el ganador de la partida, es 2 de 3.'],[]).







template([hola, _], ['Hola', 'como', estas, tu, '?'], []).
template([buendia, _], ['Buendia', 'Como', estas, tu, '?'], []).

template([yo, s(_), yo, soy, s(_),'.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, s(_), tu, '.'], [why, do, you, 0, me ,'?'], [1]).
template([yo, soy, s(_),'.'], [porque, eres, tu, 0, '?'], [2]).

% pregunta algo que le gusta a eliza
template([te, gustan, las, s(_), _], [flagLike], [3]).
template([te, gustan, los, s(_), _], [flagLike], [3]).

% preguntar si es algo malo
template([quieres, ser, una, s(_),'?'], [quieresSer], [3]).

 % pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagDo], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).	
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([yo, tengo, s(_), con, s(_), '.'], ['Tu', tienes, que, lidiar, con, tu, 0, y, tu, 1, de, una, manera, madura, '.'], [2, 4]).
template([yo, s(_),  _], [yo, te, recomiendo, a, ti, un, libro, sobre, eso], []).
template([porfavor, s(_), _], ['No', yo, no, puedo, ayudarte, ',', yo, soy, una, maquina], []). 
template([dime, un, s(_), _], ['No', yo, no, puedo, ',', yo, soy, mala, para, eso], []).
		  
template(_, ['Porfavor', explicate, un, poquito, mejor, '.'], []). 


% Lo que le gusta a eliza : flagLike	
elizaLikes(X, R):- likes(X), R = ['Siiiu', me, gustan, X].			
elizaLikes(X, R):- \+likes(X), R = ['Noooo', no, me, gustan, X].
likes(manzanas).
likes(ponies).
likes(zombies).
likes(manzanas).
likes(computadoras).
like(carros).

%--------------------------------------------------------------------
% Echos sobre enfermedades
% -------------------------------------------------------------------

enfermedad(X, R):- enf(X), R = ['La gota es una forma común y compleja de artritis que puede afectar a cualquier persona. Se caracteriza por ataques repentinos y graves de dolor, hinchazón, enrojecimiento y sensibilidad en una o más articulaciones, a menudo en el dedo gordo del pie.'].			
enfermedad(X, R):- \+enf(X), R = ['Una', disculpa, aun, no, tengo, conocimiento, de, X].
enf(gota).

causas(X, R):- enf(X), R = ['Cuando el paciente tiene niveles elevados de ácido úrico en la sangre durante mucho tiempo, se produce un depósito progresivo de cristales de ácido úrico en las articulaciones. Estos cristales causan inflamación de la articulación, que está hinchada, enrojecida, caliente y muy dolorosa. Esta condición se llama artritis gotosa o gota.'].			
causas(X, R):- \+enf(X), R = ['Una', disculpa, aun, no, tengo, conocimiento, de, X].

manifestacion(X, R):- enf(X), R = ['Las crisis de artritis gotosa se caracterizan por ataques repentinos y graves que ocurren de vez en cuando, generalmente en una articulación del cuerpo a la vez, siendo la articulación del primer dedo del pie (dedo gordo) la más afectada.'].			
manifestacion(X, R):- \+enf(X), R = ['Una', disculpa, aun, no, tengo, conocimiento, de, X].


complicaciones(X, R):- enf(X), R = ['Si, cuando no se trata adecuadamente, la gota puede, a largo plazo, causar deformidades graves debido al depósito crónico de ácido úrico en las articulaciones y la piel. Otra posible complicación es la insuficiencia renal por la acumulación de cristales de ácido úrico en los riñones.'].			
complicaciones(X, R):- \+enf(X), R = ['Una', disculpa, aun, no, tengo, conocimiento, de, X].

sintomas(X, R):- sintoma(X), R = ['Si', X, es, un, sintoma, de, la, gota].			
sintomas(X, R):- \+sintoma(X), R = ['No', X, no, es, un, sintoma, de, la, gota].
sintoma('enrojesimiento').
sintoma('incomodidad').
sintoma('eritema').
sintoma('rigidez').


encontrarSintomas(X,R):- sintomade(X,gota), R = ['Si tienes', X, es, probable, que, tengas , gota].
encontrarSintomas(X,R):- \+sintomade(X,_), R = ['El sintoma', X, no, es, un, sintoma, de, la, gota].
sintomade('enrojesimiento',gota).
sintomade('incomodidad' ,gota).
sintomade('eritema',gota).
sintomade('rigidez',gota).

buscarSintomas(X,Y,Z,R):- sintVarios(X, Y, Z), R=['Si tienes', X, Y, Z,' es probable que tengas la gota'].
buscarSintomas(X,Y,Z,R):- \+sintVarios(X, Y, Z), R=['Los sintomas ingresados no son de la gota'].
sintVarios('enrojesimiento', 'rigidez', 'eritema').



pruebas(X,R,Y):- quePrueba(X,Y), R = ['Si la prueba:', X, es, una, prueba, de, la, gota, y ,':', Y].
pruebas(X,R,Y):- \+quePrueba(X,Y), R = ['La prueba: ', X, no, es, de, esta, enfermedad].
quePrueba('Artrocentesis', 'Tu médico puede usar una aguja para extraer líquido de la articulación afectada. Los cristales de urato pueden ser visibles cuando el líquido se examina bajo un microscopio').
quePrueba('Hematologia','Tu médico puede recomendar un análisis de sangre para medir los niveles de ácido úrico en tu sangre. Sin embargo, los resultados del análisis de sangre pueden ser engañosos. Algunas personas tienen altos niveles de ácido úrico, pero nunca experimentan gota. Y algunas personas tienen signos y síntomas de gota, pero no tienen niveles inusuales de ácido úrico en su sangre').
quePrueba('Radiografia','Las radiografías de las articulaciones pueden ser útiles para descartar otras causas de inflamación en las articulaciones').
quePrueba('Ultrasonido','Esta prueba utiliza ondas sonoras para detectar cristales de urato en las articulaciones o en los tofos').
quePrueba('DECT','Esta prueba combina imágenes de rayos X tomadas desde muchos ángulos diferentes para visualizar cristales de urato en las articulaciones').

prevenciones(X,R,Y):- prevencion(X,Y), R = [ X, es, Y].
prevenciones(X,R,Y):- \+prevencion(X,Y), R = ['No tengo informacion sobre eso'].
prevencion('Adelgazar', 'Mantener un peso saludable puede ayudar a reducir los niveles de ácido úrico en la sangre. El aldelgazamiento puede ser especialmente beneficiosa para las personas que tienen sobrepeso o son obesas').
prevencion('Dieta','Adoptar una dieta saludable puede ayudar a reducir los niveles de ácido úrico en la sangre. Esto incluye limitar los alimentos ricos en purinas, como las carnes rojas y los mariscos, y evitar el alcohol. En su lugar, se recomienda una dieta rica en frutas, verduras, legumbres y granos enteros').
prevencion('Ejercicio','El ejercicio regular puede ayudar a mantener un peso saludable y a reducir el riesgo de ataques de gota').
prevencion('Hidratacion','Beber suficiente agua puede ayudar a los riñones a funcionar mejor y a evitar la deshidratación, que puede desencadenar los síntomas de la gota').

apoyos(X,R):- apoyo(X,Y), R = [Y].
apoyos(X,R):- \+apoyo(X,_), R = [ 'No conozco esos grupos'].
apoyo('apoyo',' Existen grupos de apoyo específicos para personas con gota, como el Gout Support Group of America y el Alliance for Gout Awareness. Estos grupos trabajan para mejorar la vida de las personas que viven con gota a través de la educación sobre el bienestar, el empoderamiento y la comunidad').
apoyo('educativos',' La Arthritis Foundation y la Mayo Clinic ofrecen una gran cantidad de información y recursos para las personas con gota, incluyendo detalles sobre los síntomas, el diagnóstico y el tratamiento').
apoyo('financieros','La HealthWell Foundation ofrece asistencia financiera a las personas con gota que tienen Medicare. Esta fundación puede ayudar con los costos de las primas y los copagos').
apoyo('dieteticos','La Cleveland Clinic y la American Kidney Fund ofrecen consejos dietéticos para las personas con gota, ya que la dieta puede jugar un papel importante en la gestión de esta enfermedad').

especialistade(X,R):- especialista(X,Y), R = [Y].
especialistade(X,R):- \+especialista(X,_), R = [ 'No tengo informacion de ese especialista'].
especialista('Reumatologo', 'Son médicos que se especializan en el tratamiento de enfermedades relacionadas con los músculos y las articulaciones, así como en condiciones autoinmunes, colectivamente conocidas como enfermedades reumáticas').



%--------------------------------------------------------------------
% Echos sobre mi aplicacion
% -------------------------------------------------------------------

leyendaApex(wraith).
leyendaApex(bangalore).
leyendaApex(mirage).
leyendaApex(octane).
leyendaApex(revenant).
leyendaApex(horizon).
leyendaApex(fuse).
leyendaApex(ash).
leyendaApex(madMaggie).
leyendaApex(gibraltar).
leyendaApex(caustic).
leyendaApex(wattson).
leyendaApex(rampart).
leyendaApex(lifeline).
leyendaApex(loba).
leyendaApex(bloodhund).
leyendaApex(pathfinder).
leyendaApex(crypto).
leyendaApex(valkyrie).

habilidadesTactica(X,R):- habilidadTactica(X,Y), R = [Y].
habilidadesTactica(X,R):- \+habilidadTactica(X,_), R = [ 'No tengo informacion sobre la habilidad tactica de esa leyenda'].
habilidadTactica(wraith, 'Usa el cambio de fase para desaparecer durante 3 segundos, lo que permite evitar los disparos y la recolocación del enemigo.').
habilidadTactica(bangalore, 'Lanza una granada de humo de alta velocidad que explota creando una pantalla de humo al impactar.	').
habilidadTactica(mirage, 'Despliega un señuelo holográfico para confundir al enemigo.	').
habilidadTactica(octane, 'Te mueves un 30% mas rápido al andar y un 40% al correr durante 6 segundos. Consume salud al usarse.	').
habilidadTactica(revenant, 'Lanza un dispositivo que inflige daño e inhabilita las habilidades de los enemigos.	').
habilidadTactica(horizon, 'Invierte el flujo de gravedad, lanza a los jugadores hacia arriba y después hacia el exterior al salir.	').
habilidadTactica(fuse, 'Lanza una bomba de racimo que libera explosivos aéreos al impactar.	').
habilidadTactica(ash, 'Avienta un lazo giratorio que daña y amarra al primer enemigo que se acerque demasiado.	').
habilidadTactica(madMaggie, 'Dispara una perforadora que quema a los enemigos del otro lado de los obstáculos.	').
habilidadTactica(gibraltar, 'Despliega un escudo de cúpula que bloquea los ataques.	').
habilidadTactica(caustic, 'Deja caer recipientes que liberan gas letal Nox cuando se les dispara o los activa un enemigo.	').
habilidadTactica(wattson, 'Conecta nodos para crear vallas electrificadas que dañan y ralentizan a los enemigos.').
habilidadTactica(rampart, 'Despliega un muro de cobertura ampliada completa que bloquea el fuego exterior y potencia los disparos desde su interior.	').
habilidadTactica(lifeline, 'Llama a tu Dron Operario de Curación para que cure automáticamente a tus compañeros cercanos con el tiempo.	').
habilidadTactica(loba, 'Teletranspórtate a lugares difíciles de llegar o huye de los problemas lanzando la pulsera de salto.	').
habilidadTactica(bloodhund, 'Revela brevemente enemigos, trampas y pistas ocultas a través de todas las estructuras frente a ti.	').
habilidadTactica(pathfinder, 'Usa el garfio para llegar rápidamente a lugares fuera de tu alcance.	').
habilidadTactica(crypto, 'Despliega un dron aéreo para ver las zonas circundantes desde arriba. Si el dron es destruido, existe un tiempo de espera de 40 segundos antes de poder desplegar otro.	').
habilidadTactica(valkyrie, 'Dispara una nube de minicohetes que dañan y desorientan al enemigo.	').

habilidadesPasivas(X,R):- habilidadPasivas(X,Y), R = [Y].
habilidadesPasivas(X,R):- \+habilidadPasivas(X,_), R = [ 'No tengo informacion sobre la habilidad pasiva de esa leyenda'].
habilidadPasivas(wraith, 'Se informará si se está en peligro, siendo apuntado, etc.').
habilidadPasivas(bangalore, 'Si recibes disparos mientras corres, te moverás mas rápido durante un breve periodo de tiempo.	').
habilidadPasivas(mirage, 'Activa el camuflaje automáticamente al usar balizas de reparación y al reanimar a compañeros de equipo.	').
habilidadPasivas(octane, 'Recupera salud automáticamente con el tiempo al no recibir daños.	').
habilidadPasivas(revenant, 'Te mueves mas rápido agachado y escalas mas alto que otras leyendas.	').
habilidadPasivas(horizon, 'Mejora el control en el aire y reduce los impactos por caída con el traje espacial personalizado de Horizon.	').
habilidadPasivas(fuse, 'Acumula una granada extra por cada ranura del inventario. Dispara granadas mas lejos, mas rápido y con mayor precisión.	').
habilidadPasivas(ash, 'El mapa de Ash muestra la ubicación de las cajas de muerte y marca a los atacantes sobrevivientes.	').
habilidadPasivas(madMaggie, 'Resalta temporalmente a los enemigos que dañaste y te permite moverte mas rápido con escopetas.	').
habilidadPasivas(gibraltar, 'Al apuntar con la mira, se despliega un escudo de arma que bloquea los proyectiles que te disparan.	').
habilidadPasivas(caustic, 'Permite ver enemigos a través de tu gas.	').
habilidadPasivas(wattson, 'Los aceleradores definitivos cargan por completo tu habilidad definitiva.').
habilidadPasivas(rampart, 'Capacidad de cargador ampliada y recarga más rápida al usar ametralladoras ligeras y la minigun.	').
habilidadPasivas(lifeline, 'Despliega un D.O.C. para reanimar a compañeros, dejándote libre para moverte y defenderte	').
habilidadPasivas(loba, 'Los botines legendarios y épicos cercanos se ven a través de las paredes. El alcance es el mismo que el de la Tienda del mercado negro.	').
habilidadPasivas(bloodhund, 'Verás los rastros dejados por tus enemigos.	').
habilidadPasivas(pathfinder, 'escanea una baliza de reconocimiento para desvelar la ubicación del próximo anillo.	').
habilidadPasivas(crypto, 'Los enemigos detectados por el dron de vigilancia a un máximo de 30 metros de tu posición quedarán marcados, pudiendo ser vistos por ti y tus compañeros.	').
habilidadPasivas(valkyrie, 'Usa la mochila propulsora para volar. El combustible es limitado, pero se rellena con el tiempo.	').

habilidadesDefinitiva(X,R):- habilidadDefinitiva(X,Y), R = [Y].
habilidadesDefinitiva(X,R):- \+habilidadDefinitiva(X,_), R = [ 'No tengo informacion sobre la habilidad definitiva de esa leyenda'].
habilidadDefinitiva(wraith, 'Permite la apertura de un portal con el cual los aliados pueden moverse de un punto a otro en el mapa.').
habilidadDefinitiva(bangalore, 'Solicita un ataque de artillería que avanza progresivamente por el campo de batalla.').
habilidadDefinitiva(mirage, 'Despliega un conjunto de señuelos para distraer a los enemigos.').
habilidadDefinitiva(octane, 'Despliega una plataforma que catapulta a quienes la usan por los aires.').
habilidadDefinitiva(revenant, 'Despliegue un tótem que protege a sus usuarios de la muerte por un tiempo determinado. En lugar de morir o acabar derribados, los usuarios regresaran al tótem.').
habilidadDefinitiva(horizon, 'Despliega a N.E.W.T. para crear un microagujero negro que atrae a los jugadores y los golpea con una ráfaga de gravitones al final.').
habilidadDefinitiva(fuse, 'Lanza un bombardeo que rodea una zona objetivo en un muro de fuego.').
habilidadDefinitiva(ash, 'Abre un portal unidireccional hacia una ubicación objetivo.').
habilidadDefinitiva(madMaggie, 'Avienta una bola que libera paneles de aumento de velocidad y detona cerca de los enemigos.').
habilidadDefinitiva(gibraltar, 'Solicita un ataque de mortero concentrado en una posición marcada.').
habilidadDefinitiva(caustic, 'Cubre una zona extensa con gas Nox.').
habilidadDefinitiva(wattson, 'Coloca una torre de alta tensión electrificada que destruye la artillería del enemigo y repara los escudos dañados.').
habilidadDefinitiva(rampart, 'Coloca una ametralladora montada que cualquiera puede usar. Alta capacidad de munición y tiempo de recarga lento.').
habilidadDefinitiva(lifeline, 'Solicita el envió de una capsula llena de equipo defensivo de alta calidad.').
habilidadDefinitiva(loba, 'Coloca un dispositivo portátil para teletransportar botines cercanos a tu inventario. Cada leyenda aliada o enemiga puede coger un máximo de dos objetos.').
habilidadDefinitiva(bloodhund, 'Agudiza tus sentidos, lo que te permite moverte más rápidamente y resaltar a tu presa.').
habilidadDefinitiva(pathfinder, 'Despliega una tirolina que pueden usar todos.').
habilidadDefinitiva(crypto, 'El dron de vigilancia envía un pulso electromagnético que inflige daños a los escudos, ralentiza a los enemigos y desactiva trampas.').
habilidadDefinitiva(valkyrie, 'Aviéntate al vacío y haz paracaidismo. Los aliados pueden engancharse a los sistemas de despegue para acompañarte.').


%mapas

infoMapas(X,R):- infoMapa(X,Y), R = [Y].
infoMapas(X,R):- \+infoMapa(X,_), R = [ 'No tengo informacion ese mapa'].
infoMapa(reyes,'Una isla remota que alguna vez floreció con recursos en el planeta Solace en las Tierras Salvajes, en los límites de La Frontera.').
infoMapa(mundo,'Un duro planeta acosado por una intensa actividad volcánica, Talos una vez fue considerado inhabitable, y solo pequeños asentamientos luditas se establecieron allí.').
infoMapa(olympus,'Construido en 2640 por la humanitaria multimillonaria Lillian Peck[1], esta utopía que flotaba en las nubes sobre Psamathe fue una vez un lugar donde las mentes más brillantes de las Tierras Salvajes podían reunirse e intercambiar ideas, dando lugar a avances en las ciencias y las artes.').
infoMapa(tormenta,'Esta isla desierta no siempre estuvo tan desierta. Parte del archipiélago de las Nuevas Antillas[1], esta hermosa isla repleta de abundantes recursos fue uno de los primeros lugares donde las primeras expediciones de IMC tocaron tierra en el planeta Gaea.').


mapas('canion de los reyes').
mapas('fin del mundo').
mapas('olympus').
mapas('punto tormenta').

%armas 
armaAsalto(havoc).
armaAsalto(flatline).
armaAsalto(carabine).
armaAsalto(hemlok).

armaSubfusil(alternator).
armaSubfusil(prowler).
armaSubfusil(r99).
armaSubfusil(volt).
armaSubfusil(car).

armaAmetralladora(devotion).
armaAmetralladora(lstar).
armaAmetralladora(spitfire).
armaAmetralladora(rampage).

armaPrecision(g7).
armaPrecision(3030).
armaPrecision(tripleTake).
armaPrecision(arco).

armaFrancotirador(charger).
armaFrancotirador(longbow).
armaFrancotirador(kraber).
armaFrancotirador(sentinel).

armaEscopeta(eva8).
armaEscopeta(mastiff).
armaEscopeta(mozambique).
armaEscopeta(peacekeeper).

armaPistola(re45).
armaPistola(p2020).
armaPistola(wingman).


infoArmas(X,R):- infoArma(X,Y), R = [Y].
infoArmas(X,R):- \+infoArma(X,_), R = [ 'No tengo informacion sobre esa arma'].
infoArma(havoc,'Rifle automático de energía cargada.').
infoArma(flatline,'Totalmente automático y con un puñetazo.').
infoArma(carabine,'Rifle de asalto de 3 rondas en ráfaga.').
infoArma(hemlok,'Totalmente automático y de alta precisión.').
infoArma(alternator,'Subfusil automático de doble cañon.').
infoArma(prowler,'Subfusil de 5 rondas en ráfaga.').
infoArma(r99,'Subfusil automático de fuego rápido.').
infoArma(volt,'Subfusil activado con energía.').
infoArma(car,'Subfusil adaptable. Usa munición ligera y pesada').
infoArma(devotion,'Ametralladora full auto de energia').
infoArma(lstar,'Ametralladora de plasma pesada').
infoArma(spitfire,'La M600 Spitfire Mk3 es una ametralladora ligera fabricada por Siwhan Industries .').
infoArma(rampage,'La Rampage LMG es la primera arma que modificó después de que una pandilla rival conocida como The Sisters incendiara su tienda').
infoArma(g7,'Fusil de tirador ligero semiautomático.(Arma de Cápsula de apoyo)').
infoArma(3030,'Repetidor pesado semiautomático.').
infoArma(tripleTake,'Fusil de tirador de triple cañón.').
infoArma(arco,'Es un arco que utiliza flechas al mantener el disparo aumenta la potencia').
infoArma(charger,'Rifle de francotirador de energia cargada.').
infoArma(longbow,'Rifle de francotirador semiautomático.').
infoArma(kraber,'Rifle de francotirador de cerrojo potente.').
infoArma(sentinel,'Rifle de francotirador de cerrojo ligera').
infoArma(eva8,'Escopeta totalmente automática.').
infoArma(mastiff,'Potente escopeta semiautomática.').
infoArma(mozambique,'Pistola escopeta de triple cañón.').
infoArma(peacekeeper,'Escopeta de palanca y de energia').
infoArma(re45,'Pistola totalmente automática.').
infoArma(p2020,'Pistola semiautomática.').
infoArma(wingman,'Revólver de alta potencia.').

nivelRanked(bronce).
nivelRanked(plata).
nivelRanked(oro).
nivelRanked(platino).
nivelRanked(diamante).
nivelRanked(maestro).
nivelRanked(depredador).




% lo que quiere ser eliza 
elizaSer(X, R):- ser(X), R = ['Si', yo, quiero, ser, X].
elizaSer(X, R):- \+ser(X), R = ['No', yo, no, quiero, ser, X].
ser(astronauta).
ser(cocinero).
ser(padre).




% lo que hace eliza: flagDo
elizaDoes(X, R):- does(X), R = ['Si', yo, X, y, yo, amo, esto].
elizaDoes(X, R):- \+does(X), R = ['No', yo, no, hago, X ,'.', es, demasiado, dificil, para, mi].
does(estudiar).
does(cocinar).
does(trabajar).



% lo que es eliza: flagIs
elizaIs(X, R):- is0(X), R = ['Si', yo, soy, X].
elizaIs(X, R):- \+is0(X), R = ['No', yo, no, soy, X].
is0(tonto).
is0(raro).
is0(chulo).
is0(bien).
is0(feliz).
is0(redundante).

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

% Eliza likes:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagLike,
	elizaLikes(Atom, R).

%--------------------------------------------------------------------
% Replace sobre enfermedades
% -------------------------------------------------------------------

% Sintomas
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == likeSintomas,
	sintomas(Atom, R).

% pruebas
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == quePruebas,
	pruebas(Atom, R, _).


%replace0([I|_], Input, _, Resp, R):-
%	nth0(I, Input, Atom),
%	nth0(0, Resp, X),
%	X == enfermedad,
%	sintomasall(X,R).



% informacion de las enfermedades
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == infoEnfermedad,
	enfermedad(Atom, R).

% informacion de las enfermedades
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == sint,
	encontrarSintomas(Atom, R).

% Causas de la enfermedad
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == causasEnfermedad,
	causas(Atom, R).

% Como se manifiesta
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == manifest,
	manifestacion(Atom, R).

% Complicaciones
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == complicacion,
	complicaciones(Atom, R).

% Prevenciones definiciones
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == prev,
	prevenciones(Atom, R, _).

% Prevenciones definiciones
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == apoy,
	apoyos(Atom, R).

% Especialista 
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == esp,
	especialistade(Atom, R).


% sinotmas varios 
replace0([I,L,M|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == sintomasVarios,
	nth0(L, Input, Atom2),
	nth0(0, Resp, Y),
	Y == sintomasVarios,
	nth0(M, Input, Atom3),
	nth0(0, Resp, Z),
	Z == sintomasVarios,
	buscarSintomas(Atom, Atom2, Atom3, R).


%--------------------------------------------------------------------
% Replace sobre mi aplicacion
% -------------------------------------------------------------------

% habilidad pasiva 
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == pass,
	habilidadesPasivas(Atom, R).

% habilidad tactica 
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == tac,
	habilidadesTactica(Atom, R).

% habilidad definitiva 
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == def,
	habilidadesDefinitiva(Atom, R).

% informacion de los mapas 
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == map,
	infoMapas(Atom, R).

% informacion de las armas 
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == pistol,
	infoArmas(Atom, R).






% Eliza quiere ser:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == quieresSer,
	elizaSer(Atom, R).

% Eliza does:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagDo,
	elizaDoes(Atom, R).

% Eliza is:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagIs,
	elizaIs(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.

% --------------------------------------------------------------------------
%aqui empiezan el sistema experto de las enfermedades
% --------------------------------------------------------------------------


% --------------------------------------------------------------------------
%aqui empiezan el sistema experto del tema de mi interes
% --------------------------------------------------------------------------
