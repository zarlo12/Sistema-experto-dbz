%declaracion de librerias para la interfaz

:-use_module(library(pce)).
:-use_module(library(pce_style_item)).

% metodo principal para iniciar la interfaz grafica, declaracion de
% botones, labels, y la pocicion en pantalla.
inicio:-
	new(Menu, dialog('SISTEMA EXPERTO SSJ DBZ 1.3', size(1000,800))),
	new(L,label(nombre,'SISTEMA EXPERTO DE SUPER SAYAJINES DBZ')),
	new(A,label(nombre,'Hecho por: Marco Salazar, Diego Martinez, Jonathan Josue, Gabriel Rosales')),
	new(@texto,label(nombre,'Responde las siguientes preguntas de SSJ de DBZ')),
	new(@respl,label(nombre,'')),
	new(Salir,button('SALIR',and(message(Menu, destroy),message(Menu,free)))),
	new(@boton,button('Realizar test',message(@prolog,botones))),


	send(Menu,append(L)),new(@btncarrera,button('Diagnostico?')),
	send(Menu,display,L,point(150,20)),
	send(Menu,display,A,point(30,360)),
	send(Menu,display,@boton,point(250,150)),
	send(Menu,display,@texto,point(100,100)),
	send(Menu,display,Salir,point(20,450)),
	send(Menu,display,@respl,point(20,130)),
	send(Menu,open_centered).



%principales saiyajin que conoscas de la seri dragon ball z

fallas('TU PERSONAGE ES GOKU:
	INFORMACION:
 Originalmente llamado Zero en Estados Unidos y Latinoamérica y posteriormente Gokú
 en este último, es el protagonista principal del manga y anime de Dragon Ball creado
 por Akira Toriyama. Su nombre de nacimiento es Kakarot (カカロット KakarottoJap) y es
 uno de los pocos Saiyajin que lograron sobrevivir a la destrucción total del Planeta Vegeta.
 Es el segundo hijo de Bardock y Gine, hermano menor de Raditz, nieto adoptivo de Son Gohan,
 esposo de Chi-Chi, padre de Gohan y Goten, a su vez también es el abuelo de Pan y ancestro
 de Son Goku Jr.
	      '):-goku,!.

fallas('TU PERSONAGE ES VEGETA:
       INFORMACION:
Conocido como Príncipe Vegeta o Príncipe de todos los Saiyajin es uno de los personajes
principales del manga y anime Dragon Ball Z, Kai, GT y deuteragonista de Dragon Ball Super.
Es el hijo mayor del Rey Vegeta, así como el príncipe superviviente de su planeta, destruido
a manos de Freezer, es el rival de Son Goku, hermano mayor de Tarble, el esposo de Bulma y
padre de Trunks y Bra.
		'):-vegeta,!.

fallas('TU PERSONAGE ES BROLY:
		INFORMACION:
 Personaje exclusivo de las películas de la serie de manga y anime Dragon Ball Z.
 Es un Saiyajin de raza pura que sobrevivió a la destrucción del Planeta Vegeta
 junto a su padre Paragus, pero además es el Super Saiyajin Legendario que
 surgía cada 1000 años. Broly aparece en las películas Estalla el duelo y
 El Regreso del Guerrero Legendario.
		'):-broly,!.

fallas('TU PERSONAGE ES RADIZ:
		INFORMACION:
Hijo de Bardock y Gine, y hermano mayor de Goku. Él es uno de los pocos
Saiyajin que sobrevivieron a la destrucción del Planeta Vegeta, y formaba
parte del equipo de Vegeta. Es el primer enemigo en Dragon Ball Z.
		'):-raditz,!.

fallas('TU PERSONAGE ES GOHAN:
		INFORMACION:
Personajes principales de las sagas de Dragon Ball Z, Dragon Ball Super y Dragon Ball GT.
Es un mestizo entre Saiyajin y humano terrícola. Es el primer hijo de Son Goku y Chi-Chi,
hermano mayor de Son Goten, esposo de Videl y padre de Pan.
                '):-gohan,!.

fallas('TU PERSONAGE ES GOTEN:
		INFORMACION:
Conocido como Goten, es el segundo hijo de Chi-Chi y Goku, y hermano menor de Gohan,
que nació al poco tiempo de la segunda muerte de su padre.
               '):-goten,!.

fallas('TU PERSONAGE ES TRUNKS:
		INFORMACION:
Es un mestizo entre humano terrícola y Saiyajin, e hijo de Bulma y Vegeta, y más
tarde se convierte en el hermano mayor de su hermana Bra.
El nombre de Trunks es un juego de palabras para referirse a la
ropa interior masculina, curiosamente este nombre es reautilizado
por Akira Toriyama puesto que el anteriormente habia llamado Trunks al esposo de Ranfan.
         '):-trunks,!.

fallas('TU PERSONAGE ES PAN:
		INFORMACION:
Hija de Videl y Gohan, siendo sus abuelos paternos Goku y Chi-Chi y
sus abuelos maternos el campeón Mr. Satán y la fallecida cantante Miguel.
La herencia de Pan es principalmente terrícola, siendo la descendencia
del híbrido Saiyajin-Humano terrícola de su padre Gohan y el Humano
terrícola de su madre Videl, lo que la hace 1/4 Saiyajin.
			'):-pan,!.




fallas('sin resultados, usted no dio la informacion necesaria o suficiente
ERROR p560c4!').

% pregunta para identificar tu pesonage de Dragon Ball Z
% identificador de pesonages de Dragon Ball Z

goku:- sgoku,
	pregunta('Es del sexo masculino?'),
	pregunta('Viste un traje naranja de combate?'),
	pregunta('Le gusta entrenar artes marciales?'),
	pregunta('Esta casado?'),
	pregunta('Su esposa es milk?'),
        pregunta('Su nombre orinal es Kakaroto?').

vegeta:- svegeta,
        pregunta('Es del sexo masculino?'),
	pregunta('Viste una Armadura de combate Saiyajin?'),
	pregunta('Esta casado?'),
	pregunta('Su esposa es Bulma?'),
	pregunta('Es el principe de los Saiyajin?').


broly:- sbroly,
	pregunta('Es del sexo masculino?'),
        pregunta('Aparece en una película de Dragon Ball Z?'),
	pregunta('Proviene del planeta Vegeta?'),
	pregunta('Posee algún diadema con una joya azul?'),
	pregunta('Es es super Saiyajin Legendario?').

raditz:- sraditz,
	pregunta('Es del sexo masculino?'),
	pregunta('Viste una Armadura de combate Saiyajin?'),
	pregunta('Proviene del planeta Vegeta?'),
	pregunta('Su hermano es Goku?'),
	pregunta('Intenta matar a goku?').

gohan:- sgohan,
	pregunta('Es del sexo masculino?'),
	pregunta('Tiene un hermano?'),
	pregunta('Aparece en la serie de Dragon Ball Z?'),
	pregunta('Se parece a Goku?'),
	pregunta('Proviene del planeta tierra?'),
	pregunta('Se disfrazaba del gran saiyaman?').

goten:- sgoten,
	pregunta('Es del sexo masculino?'),
	pregunta('Tiene un hermano?'),
	pregunta('Aparece en la serie de Dragon Ball Z?'),
	pregunta('Se parece a Goku?'),
	pregunta('Proviene del planeta tierra?'),
	pregunta('Su mejor amigo es Trunks?').

trunks:- strunks,
	pregunta('Es del sexo masculino?'),
	pregunta('Aparece en la serie de Dragon Ball Z?'),
	pregunta('Su padre es vegeta?'),
	pregunta('Proviene del planeta tierra?'),
	pregunta('Su mejor amigo es Gothen?').

pan:- span,
	pregunta('Es del sexo femenino?'),
	pregunta('Aparece en la serie de Dragon Ball Z?'),
	pregunta('Proviene del planeta tierra?'),
	pregunta('Su padre es Gohan?').




%identificador de falla que dirige a las preguntas correspondientes

sgoku:-pregunta('usa el kamekameja?'),!.
svegeta:-pregunta('usa el traje sayajin?'),!.
sbroly:-pregunta('es un sayajin malo?'),!.
sraditz:-pregunta('es un sayajin malo?'),!.
sgohan:-pregunta('es uno de los mas fuertes en la pelea de cel'),!.
sgoten:-pregunta('es uno de los sayajin mas pequeños?'),!.
strunks:-pregunta('es uno de los sayajin mas pequeños?'),!.
span:-pregunta('es la primera mujer con sangre sayajin?'),!.


% proceso del diagnostico basado en preguntas de si y no, cuando el
% usuario dice si, se pasa a la siguiente pregunta del mismo ramo, si
% dice que no se pasa a la pregunta del siguiente ramo


:-dynamic si/1,no/1.
preguntar(Problema):- new(Di,dialog('Diagnostico medico')),
     new(L2,label(texto,'Responde las siguientes preguntas')),
     new(La,label(prob,Problema)),
     new(B1,button(si,and(message(Di,return,si)))),
     new(B2,button(no,and(message(Di,return,no)))),

         send(Di,append(L2)),
	 send(Di,append(La)),
	 send(Di,append(B1)),
	 send(Di,append(B2)),

	 send(Di,default_button,si),
	 send(Di,open_centered),get(Di,confirm,Answer),
	 write(Answer),send(Di,destroy),
	 ((Answer==si)->assert(si(Problema));
	 assert(no(Problema)),fail).

% cada vez que se conteste una pregunta la pantalla se limpia para
% volver a preguntar

pregunta(S):-(si(S)->true; (no(S)->fail; preguntar(S))).
limpiar :- retract(si(_)),fail.
limpiar :- retract(no(_)),fail.
limpiar.

% proceso de eleccion de acuerdo al diagnostico basado en las preguntas
% anteriores

botones :- lim,
	send(@boton,free),
	send(@btncarrera,free),
	fallas(Falla),
	send(@texto,selection(' ')),
	send(@respl,selection(Falla)),
	new(@boton,button('inicia procedimiento mecanico',message(@prolog,botones))),
        send(Menu,display,@boton,point(40,50)),
        send(Menu,display,@btncarrera,point(20,50)),
limpiar.
lim :- send(@respl, selection('')).





















