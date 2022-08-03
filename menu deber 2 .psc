Funcion total <- pagototal( descuento,monto )
	definir iva Como Real
	iva = 1.12
	des = monto * descuento
	monto = monto - des
	total = monto * iva
Fin Funcion

funcion temp = nummayor(num,temp Por Referencia)
	si num > temp Entonces
		temp = num
	FinSi
FinFuncion


funcion t = menores(num,i,t Por Referencia)
	si i = 1 Entonces
		t = num 
	SiNo
		si num < t Entonces
			t = num
		FinSi
	FinSi
FinFuncion




Funcion bandera <- comparar(frase1,frase2)
	long = Longitud(frase1)
	l= Longitud(frase2)
	bandera = 1
	si long > l Entonces
		Para i = 1 hasta long Hacer
			si Subcadena(frase1,i,i) <> Subcadena(frase2,i,i) Entonces
				bandera = 0
			FinSi
		FinPara
	SiNo
		Para i = 1 hasta l Hacer
			si Subcadena(frase1,i,i) <> Subcadena(frase2,i,i) Entonces
				bandera = 0
			FinSi
		FinPara
	FinSi
Fin Funcion



Funcion posi = buscar_caracter(frase,enco)
	long = longitud(frase)
	Para i = 1 Hasta long Hacer
		si Subcadena(frase,i,i) = enco Entonces
			posi = i
		FinSi
	FinPara
Fin Funcion

funcion arreglosuma(arreglo1,arreglo2,lim)
	dimension suma[lim]
	para i = 1 Hasta lim Hacer
		suma[i]= arreglo1[i] + arreglo2[i] 
	FinPara
	para i = 1 Hasta lim Hacer
		Escribir i,"[",suma[i],"]"
	FinPara
FinFuncion




Funcion presentarArregloinverso(vector,lim)
	Definir pos Como Entero
	Si lim > 0 Entonces
		Para pos<-lim Hasta 1 Hacer
			Escribir pos,"[",vector[pos],"]"
		Fin Para
	SiNo
		Escribir "Ingrese primero datos al arreglo"
	Fin Si
FinFuncion



Funcion my = mayordeunarreglo(arreglo,limite)
	para i = 1 Hasta limite Hacer
		si arreglo[i] > my Entonces
			my = arreglo[i]
		FinSi
	FinPara
Fin Funcion



funcion  bandera = divisores(n, i )
	si n mod i == 0 Entonces
		bandera = i
	FinSi
FinFuncion



Funcion fibonacci ( lim )
	a = 0 
	b = 1
	para i = 1 Hasta lim Hacer
		Escribir a,' - ' Sin Saltar
		c = a + b
		a = b
		b = c
	FinPara
Fin Funcion



Funcion l <-convertirbase16(num)
	definir l Como Caracter
	l = ''
	x= 1 
	mientras x > 0 Hacer
		x = trunc(num/16)
		segun num mod 16 hacer
			10:
				l = 'A' + l 
			11:
				l = 'B' + l 
			12:
				l = 'C' + l 
			13:
				l = 'D' + l 
			14:
				l = 'E' + l 
			15:
				l = 'F' + l 
			De Otro Modo:
				l = ConvertirATexto( num mod 16 ) + l
		Fin Segun
		num = x	
	FinMientras
Fin Funcion


Funcion acum <- convertirbase10(numbi)
	definir acumsuma Como Entero
	mientras numbi >= 1 Hacer
		residuo = numbi mod 10 
		r = residuo * (2 ^ c)
		acum = acum + r 
		c = c + 1
		numbi = trunc(numbi / 10 )
	FinMientras
Fin Funcion




Funcion conta <- digitosnum( num )
	mientras num >= 1 Hacer
		num = trunc(num/10)
		conta = conta + 1
	FinMientras
Fin Funcion




Funcion fact <- factorial ( num )
	fact = 1
	para i = 1 Hasta num Hacer
		fact= fact * i 
	FinPara
Fin Funcion






Funcion bandera <- rangodenumeros ( num )
	si num >= 100 y num <= 500 Entonces
		bandera = 1
	SiNo
		bandera = 0
	FinSi
Fin Funcion



funcion tem = numerospares(lim)
	para i = 2 Hasta lim con paso 2 Hacer
		Escribir i,' ' Sin Saltar
	FinPara
FinFuncion




funcion bandera = modulo(multi,n)
	si n mod multi== 0 Entonces
		bandera = 0 
	sino 
		bandera = 1
	FinSi
FinFuncion





funcion bandera = positivoynegativo(bandera,num)
	si num > 0 Entonces
		bandera = 1
	sino 
		bandera = 2
	FinSi
FinFuncion




// Funciones de usuario para el Algoritmo Menu
// Presenta el menu en la pantalla
Funcion opc = presentarMenu(titulo,opciones,lim) 
	Escribir titulo
	Escribir ""
	Para pos=1 Hasta lim  Hacer
		Escribir opciones[pos]
	Fin Para
	Escribir "Elija opcion[1...",lim,"]: "
	Leer opc
FinFuncion
// Calcula el proceso matematico de dos numeros dada su operacion
                     
Funcion calculadora(operacion,num1,num2)
	Si operacion = "+" Entonces
		Escribir num1," + ",num2,"=",num1+num2
	SiNo
		Si operacion = "-" Entonces
			Escribir num1," - ",num2," = ",num1-num2
		
		SiNo
			Si operacion = "*" Entonces
				Escribir num1," * ",num2," = ",num1*num2
			SiNo
				Si operacion = "/" Entonces
					Escribir num1," / ",num2," = ",num1/num2
				SiNo
					Si operacion = "%" Entonces
						Escribir num1," % ",num2," = ",num1%num2
					SiNo
						Si operacion = "^" Entonces
							Escribir num1," ^ ",num2," = ",num1^num2
						SiNo
							Escribir "Operacion Incorrecta, intentelo de nuevo"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Fin Si
FinFuncion
// Verifica si un numero es primo o no y devueve 1 si es primo y 0 si no es
Funcion bandera=primo(num)
	Definir r,c,bandera Como Entero
	bandera=1;c=2
	// recorro mientras sea primo y c no lleaga al numero
	Mientras bandera=1 y c < num Hacer
		r=num MOD c
		Si r=0 Entonces
			bandera=0
		SiNo
			c=c+1
		Fin Si
	Fin Mientras

FinFuncion
// Recorrer y presentar cadena caracter por caracter
Funcion presentarCadena(texto,inicio,fn)
	Definir pos,lon Como Entero
    //Escribir Subcadena(texto,2,3)
	Para pos= inicio Hasta fn  Hacer
		Escribir Subcadena(texto,pos,pos)
	Fin Para
FinFuncion


// recorre y cadena y cuenta las vocales de dicha cadena
Funcion vocales(texto,bandera)
	Definir pos,lon Como Entero
    //Escribir Subcadena(texto,2,3)
	conp = 1
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Si Subcadena(texto,pos,pos) = 'a' | Subcadena(texto,pos,pos)='e' | Subcadena(texto,pos,pos)='i'o Subcadena(texto,pos,pos)='o' o Subcadena(texto,pos,pos)='u' Entonces 
			cv = cv +1
		SiNo
			Si Subcadena(texto,pos,pos) = " " Entonces
				conp = conp + 1
				
			FinSi
		 Fin Si
		reves=Subcadena(texto,pos,pos)+reves
	Fin Para
	si bandera = 0 Entonces
		Escribir 'se encontro ',cv,' vocales'
	SiNo
		si bandera = 1 Entonces
			Escribir "la frase tiene " ,conp , " palabras"
		SiNo
			si bandera = 2 Entonces
				si texto = reves Entonces
					Escribir 'la palabra es palindromo'
				SiNo
					Escribir 'la palabra no es palindromo'
				FinSi
			FinSi
			
		FinSi
		
	FinSi
	//Escribir "Frase al revez: ",reves,"  No vocales: ",cv
FinFuncion
// Ingresar datos a un arreglo

Funcion ingresarArreglo(vector por referencia,lim)
	Definir num,pos Como Entero
	Para pos<-1 Hasta lim Hacer
		Escribir "Ingrese numero"
		leer num
		vector[pos]=num
	Fin Para
FinFuncion
// Presenta los datos de un arreglo dada una posicion inicial y final
Funcion presentarArreglo(vector,inicio,lim)
	Definir pos Como Entero
	Si lim > 0 Entonces
		Para pos<-inicio Hasta lim Hacer
			Escribir pos,"[",vector[pos],"]"
		Fin Para
	SiNo
		 Escribir "Ingrese primero datos al arreglo"
	Fin Si
FinFuncion

// buscac un valor en un arreglo y retorna la posicion si lo encuentra sino retorna -1
Funcion posicion=buscarArreglo(buscado,vector,lim)
	Definir pos,encontrado Como Entero
	pos=1;encontrado=0
	mientras encontrado=0 y pos <= lim Hacer
		Si vector[pos]=buscado Entonces
			encontrado=1
		SiNo
			pos = pos + 1
		Fin Si
	Fin Mientras
	Si encontrado=1 Entonces
		posicion=pos
	SiNo
		posicion = -1
	Fin Si
FinFuncion
// Algoritmo principal
Algoritmo Menu
	Definir pos,resp,limite,dato Como Entero
	Definir opcion,opc1,opc2,opc3,frase Como Caracter
	Dimension menuPrincipal[4],menuNumeros[21],menuRazonamiento[11],menuCadenaVectores[16]
    Dimension arreglo[100]	
	limite=0
	// ***** MENU PRINCIPAL ******
	menuPrincipal[1] = "1)Ejercicios Basicos"
	menuPrincipal[2] = "2)Ejercicios Razonamiento"
	menuPrincipal[3] = "3)Ejercicios Cadenas y Vectores"
	menuPrincipal[4] = "4)Salir"
	
	// ***** EJERCICIOS BASICOS ******
	// dado 2 numeros presentar la suma
	menuNumeros[1] = "1)Sumar dos numeros"
	// dado 2 numeros si el primero es  >= al segundo sumarlo sino restarlo
	menuNumeros[2] = "2)Sumar o restar"
	// ingrese 2 numeros con una operacion matematica("+,-,*,/,%,^") 
	// realizar y presentar la respuesta de la operacion matematica
	menuNumeros[3] = "3)Caculadora"
	// presentar el mayor de 2 numeros ingresados
	menuNumeros[4] = "4)Mayor de dos numeros"
	// presentar el menor de 3 numeros ingresados
	menuNumeros[5] = "5)Mayor (menor) de tres numeros"
	// La despensa "El Baraton", a todas las ventas que pasen de $100,
	//se les aplicará un  descuento del 10%, a  todo los demás se les aplicará sólo el 5% 
	// luego del recargo del iva del 12%
	menuNumeros[6] = "6)Comprar productos"
	// Ingresar el nombre,horas trabajadas, valor hora, horas50 y horas100 de sobretiempo
	// se pide calcular el rol del pago del trabajor dado los siguientes calculos.
	// sueldo del trabajador(horasTrajabadas por el valorHora)
	// el sobretiempo=(horas50*1.5+horas100*2)*Valor
	// total ingreos = sueldo+sobretiempo
	// descuento= totalingresos*9.35%
	// liquido= totalingresos - descuento
	menuNumeros[7] = "7)Pago de Sueldos"
	// dada dos notas calcular el promedio y presentar el mensaja "Aproboado" si el promedio
	// mayor 70 y reprobado si es menor que 70
	menuNumeros[8] = "9)Notas de Alumnos"
	// dado un numero indicar si es positivo o negativo
	menuNumeros[9] = "9)Positivo/Negativo"
	// dado un numero indicar si es par o impar
	menuNumeros[10] = "10)Par e Impar"
	// dado dos nmeros indicar si el numero1 es multiplo del numero2
	menuNumeros[11] = "11)Multiplo de cualquier Numero"
	// dada una secuencia de numeros presentar el mayor y el menor de esa esa secuencia
	menuNumeros[12] = "12)El Mayor y Menor de una secuencia de numeros"
	// dada una secuencia de numeros presentar cuantos son numeros positivos
	menuNumeros[13] = "13)Positivos de una secuencia de numeros"
	// dada una serie d enumeros presntar la suma de lo numeros multiplos de 5
	menuNumeros[14] = "14)Suma de los multiplos de cinco de una serie de numeros"
	// presentar los numeros pares desde 2 hasta N
	menuNumeros[15] = "15)Generar y presentar los Numeros pares del 2 a N"
	// dada una serie de numeros presente el numero siempre y cuando sea negativo
	// y antes de finalizar presente la cantidad, la suma y el promedio de dichos numeros negativos
	menuNumeros[16] = "16)Cantidad, Suma y Promedio de numeros negativos de una serie"
	// dado una serie de numeros presentar el promedio de los numeros que sean >= 100 and <=500 
	menuNumeros[17] = "17)Serie promedio de rango de numeros"
	// Ingrese un numero si este es postivo finalice sino vuelva a ingresarlo
	menuNumeros[18] = "18)Validar que un numero sea positivo"
	// dado dos numeros base y exponente. calcular la base elevada al exponente 
	menuNumeros[19] = "19)Base y exponente"
	// dada una serie de numeros calcular los factorles de dichos numero la serie termina
	// cuando un numero de la serie sea igual a cero.
	menuNumeros[20] = "20)Serie Factoriales"
	menuNumeros[21] = "21)Salir"
	
	// ******EJERCICIOS DE RAZONAMIENTO SIN USAR CADENAS Y VECTORES*******
	// contar los digitos de cualquier numero: ej: 342 = 3 digitos
	menuRazonamiento[1] = "1)Cuantos Digitos tiene un Numero"
	// ejemplo: binario= 1100100  ==> 100 (decimal) 
	menuRazonamiento[2] = "2)Covertir de Base 2 a Base 10"
	// ejemplo: binario= 1111101000  ==> 1000 (decimal) Respuesta = 3E8 (hexadecimal)
	menuRazonamiento[3] = "3)Convertir de Base 2 a Base 16 pasando por Base 10"
	// ejemplo Si n=8 => La serie de fibonacci es = 0 1 1 2 3 5 8 13
	menuRazonamiento[4] = "4)Serie de fibonacci hasta N"
	// ejemplo si numero=10 ==> resp= 1,2,5
	menuRazonamiento[5] = "5)Divisores de un Numero"
	// cuando los divisores de un numero es igual al numero se dice que ese numero es perfecto
	// si numero es 6 los divisores son 1,2,3 sumados igual a 6 es igual al numero ==> es perfecto
	menuRazonamiento[6] = "6)Numero Perfecto"
	// un numero es primo cuando no tiene divisores excepto el 1 y el propio numero
	// ejemplo 5 no tiene divsores es "primo"  9 tiene como divisor al 3 por tanto no es "primo"
	menuRazonamiento[7] = "7)Numero Primo"
	// dos numeros son amigos si la suma de los divisores del primer numero es = a la suma de los
	// divisores del segundo numero Eje: numero=6 (1+2+3)=6 numero 25(1+5)=6 ==> 6=6 son amigos 
	menuRazonamiento[8] = "8)Verificar si dos numeros son Amigos"
	// dos numeros son primos gemelos si ambos numeros son primos en valor absoluto y la resta de
	// los 2 numeros es == 2 eje: 11 y 13 abs(11-13)==2
	menuRazonamiento[9] = "9)Verificar si dos Numeros son Primos Gemelos"
	// por cada numero de una serie verifique si es primo, si es primo contarlo
	menuRazonamiento[10] = "10)De una serie de numeros cuantos son Primos"
	menuRazonamiento[11] = "11)Salir"
	
	// ****** EJERCICIOS DE CADENAS Y VECTORES *******
	// dado n valores ingresarlos a un arreglo
	menuCadenaVectores[1] = "1)llenar un arreglo de numeros"
	// recorrer un arreglo y presentarlo uno por uno
	menuCadenaVectores[2] = "2)Presentar los elementos de un arreglo"
	// buscar el dato y presentar la posicion en que se encuntra el dato en el arreglo
	menuCadenaVectores[3] = "3)Buscar un dato en un arreglo"
	// Presentar el mayor de los datos de un arreglo
	menuCadenaVectores[4] = "4)Elemento Mayor de un arreglo"
	// Dado un arreglo copie los datos en otro de atras para delante 
	menuCadenaVectores[5] = "5)Copiar los datos de un arreglo en otro invertido"
	// Dado los arreglos1 y arreglos 2 sumarlos valor por valor del arreglo1 y arreglo2
	// y asigmarlo en el arreglo3(los tres arreglos deben tener la misma longitud)
	menuCadenaVectores[6] = "6)Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
	// de una serie de numeros solo guardar en un arreglo los nymeros primos
	menuCadenaVectores[7] = "7)Dado N numeros guardar en un arreglo los numeros primos"
	// dadas las notas guardades en un arreglos obtener el promedio de las notas >= 70
	menuCadenaVectores[8] = "8)Dadas los datos de un arreglo obtener el promedio de las notas >=> 70"
	// presentar caracter por caracter de una cadena
	menuCadenaVectores[9] = "9)Dada una cadena presentarla caracter por caracter"
	// presentar  una cadena al reves
	menuCadenaVectores[10] = "10)Dada una cadena presentarla invertida"
	// contar las vocales de jque tiene una cadena cualquiera
	menuCadenaVectores[11] = "11)Dada una cadena indicar cuantos vocales tiene"
	// contar las palabras de una cadena
	menuCadenaVectores[12] = "12)Dada una cadena indicar cuantos palabras tiene"
	// buscar si un caracteer ingresado se encuentra en una cadena si es asi presentarMenu
	// la posicion en que se encuntra ese caracter en la cedena caso contrario presentar -1
	menuCadenaVectores[13] = "13)presentar la posicion de un caracter buscado dentro de una cadena"
	// comparar 2 cadenas csracter por catacter e indicar si son iguales o no
	menuCadenaVectores[14] = "14)Dadas dos cadenas indicar si son iguales caracter por caracter"
	// una cadena es palaindorma si se lee de la misma forma de izquierda a derecha 
	// ejemplo "ana"
	menuCadenaVectores[15] = "15)Indicar si una cadena es palindroma"
	menuCadenaVectores[16] = "16)Salir"
	// cuando se escoja la opcion 4 termina el programa
	opcion=''
	Mientras opcion <> "4" Hacer
		Borrar Pantalla
		opcion = presentarMenu("********** M E N U   P R I N C I P A L **********",menuPrincipal,4)
		Borrar Pantalla
		Segun opcion Hacer
			"1":
				opc1=""
				Mientras opc1<>"21" Hacer
					opc1= presentarMenu("********** M E N U  E J E R C I C I O S  B A S I C O S **********",menuNumeros,21)
					Borrar Pantalla
					Segun opc1 Hacer
						"1":
							Escribir "Sumar Dos  Numeros"
							operacion='+'
							Escribir 'ingrese el primer numero'
							leer n1
							Escribir 'ingrese el segundo numero'
							leer n2
							calculadora(operacion,n1,n2)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						"2":
							Escribir 'sumar o restar"
							Escribir 'ingrese el primer digito'
							leer n1
							Escribir 'ingrese el segundo digito'
							leer n2 
							si n1 > n2 Entonces
								operacion = '+'
								Escribir 'el resultado es :'
								calculadora(operacion,n1,n2)
							SiNo
								operacion = '-'
								calculadora(operacion,n1,n2)
							FinSi
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						"3":
							Escribir "Calculadora"
							Escribir "Ingrese Operacion[+,-,*,/,%,^]: " Sin Saltar
							Leer ope
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer num2
							calculadora(ope,num1,num2)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
							Borrar Pantalla
						"4":
							Escribir "Mayor de dos numeros"
							para i = 1 Hasta 2 Hacer
								escribir 'ingrese el primer numero'
								leer num 
								may=nummayor(num,temp)
							FinPara
							Escribir 'el mayor es :',may
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						"5":
							Escribir "menor de tres numeros"
							para i = 1 Hasta 3 Hacer
								escribir 'ingrese un numero'
								leer num 
								men=menores(num,i,t)
							FinPara
							Escribir 'el menor es :',men
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						'6':
							Escribir "Comprar productos"
							definir descuento,t_pagar Como Real
							Escribir "ingresa el monto a pagar"
							Leer monto
							si monto > 100 Entonces
								descuento = 0.10
								Escribir 'el total a pagar es: ',pagototal( descuento,monto )
								
							SiNo
								descuento = 0.05
								Escribir 'el total a pagar es: ',pagototal( descuento,monto )
							FinSi
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						'7':
							Escribir 'Pago de Sueldos'
							Escribir 'ingrese el nombre'Sin Saltar
							leer nom
							Escribir 'ingrese las horas trabajadas'Sin Saltar
							leer h_trabajadas
							Escribir 'cuanto es su valor por hora?'Sin Saltar
							leer valor_h
							Escribir 'ingrese las horas50 de sobretiempo'
							leer horas50
							Escribir 'ingrese las horas100 de sobretiempo'
							leer horas100
							Escribir ' '
							Borrar Pantalla 
							Escribir '******** ',nom,' ********'
							Escribir 'su sueldo es : 'Sin Saltar
							operacion = '*'
							calculadora(operacion,h_trabajadas,valor_h)
							sueldo_t = h_trabajadas * valor_h
							sobretiempo = (horas50 * 1.5 + horas100 * 2 ) * valor_h
							Escribir 'el pago del sobretiempo es : ', sobretiempo 
							Escribir 'el total de ingresos es  : 'Sin Saltar
							operacion = '*'
							calculadora(operacion,sueldo_t,sobretiempo)
							total = sueldo_t + sobretiempo
							Escribir 'el total de descuento es  : 'Sin Saltar
							operacion = '*'
							calculadora(operacion,total,0.0935)
							descu = total * 0.0935
							Escribir 'su liquido es  : 'Sin Saltar
							operacion = '-'
							calculadora(operacion,total,descu)
							liquido = total - descu
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						'8':
							Escribir 'Notas de Alumnos'
							Escribir "Ingrese nota1"
							leer n1
							Escribir "Ingrese nota2"
							leer n2
							promedio = (n1 + n2) / 2
							si promedio > 70 Entonces
								Escribir "** alumno Aprobado **"
							SiNo
								Escribir "** alumno Reprobado **"
							FinSi
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						'9':
							Escribir 'Positivo/Negativo'
							Escribir 'ingrese un valor'
							leer num
							bandera = 1 
							si positivoynegativo(bandera,num) = 1 Entonces
								Escribir 'el numero es positivo'
							sino 
								Escribir 'el numero es negativo'
							FinSi
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						'10':
							Escribir 'Par e Impar'
							Escribir 'ingrese numero'
							leer n
							multi=2
							si  modulo(multi,n) = 0 Entonces
								Escribir 'el numero ',n,' es par'
							SiNo
								Escribir 'el numero ',n,' es impar'
								
							FinSi
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla 
							
						'11':
							Escribir 'Multiplo de cualquier Numero'
							Escribir 'dame un numero'
							leer n
							Escribir 'dame un numero'
							leer n2
							multi=n2
							si  modulo(multi,n)= 0 Entonces
								Escribir 'el numero ',n,' es multiplo de ',n2
							SiNo
								Escribir 'el numero no es multiplo'
							FinSi
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						'12':
							Escribir "El Mayor y Menor de una secuencia de numeros"
							Escribir 'ingrese el numero de la secuencia'
							leer secu
							para i = 1 Hasta secu Hacer
								Escribir 'ingrese el valor #',i
								leer num 
								men=menores(num,i,t)
								my=nummayor(num,temp)
								
							FinPara
							Escribir 'el numero mayor es : ',my
							Escribir 'el numero menor es : ',men
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						'13':
							Escribir 'Positivos de una secuencia de numeros'
							Escribir 'ingrese el numero de secuencia'
							leer secu
							bandera = 1
							para i = 1 Hasta secu Hacer
								Escribir 'ingrese un valor'
								leer num
								si positivoynegativo(bandera,num) = 1
									conta = conta + 1 
								FinSi
							FinPara
							Escribir 'se encontro ',conta,' numero positivos'
							conta= 0
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						'14':
							Escribir 'Suma de los multiplos de cinco de una serie de numeros'
							Escribir 'ingrese el numero de secuencia'
							leer secu 
							para i = 1 Hasta secu Hacer
								Escribir 'ingrese el valor #',i
								leer num
								multi = 5 
								si modulo(multi,num) = 0 Entonces
									acumsuma= acumsuma + num
								FinSi
							FinPara
							Escribir ' la suma de los multiplos de 5 es ',acumsuma 
							acumsuma = 0 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						'15':
							Escribir 'Generar y presentar los Numeros pares del 2 a N'
							Escribir 'ingrese un limite'
							leer lim 
							Escribir numerospares(lim)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
							
						'16':
							Escribir 'Cantidad, Suma y Promedio de numeros negativos de una serie"
							Escribir "ingrese el numero de serie"
							Leer secu
							Para i = 1 Hasta secu Hacer
								Escribir "ingrese un numero"
								leer num
								si positivoynegativo(bandera,num)=2 Entonces
									conta = conta + 1
									acumsuma = acumsuma + num
								FinSi
							FinPara
							Escribir 'la suma de los numero negativos es :',acumsuma
							Escribir 'la cantidad de numeros negativos es :',conta
							operador = '/'
							Escribir "el promedio de los numeros negativos es: "
							calculadora(operador,acumsuma,conta)
							promedio = 0 ;acumsuma= 0 ;conta = 0 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
							
						'17':
							Escribir 'Serie promedio de rango de numeros"
							escribir "ingrese numero de secuencia"
							leer secu
							para i = 1 hasta secu Hacer
								escribir "digite valores entre 100 y 500"
								leer num
								si rangodenumeros(num) = 1 Entonces
									conta = conta + 1
									acumsuma = acumsuma + num
								sino 
									Escribir 'el numero ingresado esta fuera del rango' 
								FinSi
							FinPara
							Escribir 'el promedio es :'
							operador = '/'
							calculadora(operador,acumsuma,conta)
							prom = 0 
							acumsuma= 0 
							conta = 0 
							esperar 5 Segundos
							
						'18':
							Escribir 'Validar que un numero sea positivo'
							num= -1
							bandera = 2
							Escribir ' '
							Escribir 'el programa no acepta numeros positivos'
							mientras num < 0 y bandera = 2  Hacer
								Escribir 'ingrese un numero'
								leer num 
								bandera = positivoynegativo(bandera,num)
							FinMientras
							Escribir 'ha finalizado el programa'
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
							
						'19':
							Escribir 'Base y exponente"
							Escribir "ingrese la base"
							leer b
							escribir "ingrese el exponente"
							leer e
							operacion = '^'
							Escribir 'el resultado es :'
							calculadora(operacion,b,e)
							
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						'20':
							Escribir 'Serie Factoriales'
							Escribir 'ingrese el numero de secuencia'
							leer secu 
							num = 1
							conta = 1
							mientras conta <= secu  Hacer
								Escribir 'ingrese el numero'
								leer num 
								si num  <> 0 Entonces
									resul = factorial(num)
									Escribir 'el factorial es -> ',resul
								sino 
									conta = secu
									Escribir 'se ha ingresado el valor de 0'
								FinSi
								conta = conta + 1 
							FinMientras
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
							
						"21":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"2":
				opc2=""
				Mientras opc2<>"11" Hacer
					opc2= presentarMenu("********** M E N U  E J E R C I C I O S  D E  RAZONAMIENTO **********",menuRazonamiento,11)
					Borrar Pantalla
					Segun opc2 Hacer
						"1":
							Escribir "Cantidad de Digitos de un Numero"
							Escribir 'ingrese numero"
							leer num
							r = digitosnum(num)
							Escribir 'el numero ',num,' tiene ',r,' digitos'
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						'2':
							Escribir 'Covertir de Base 2 a Base 10"
							Escribir ' '
							Escribir 'ingrese el numero binario'
							leer numbi
							result = convertirbase10(numbi)
							Escribir 'el resultado convertido a base 10 es :' result
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						'3':
							Escribir 'Convertir de Base 2 a Base 16 pasando por Base 10"
							Escribir ' '
							Escribir "ingrese el numero binario"
							leer numbi
							result = convertirbase10(numbi)
							b= convertirbase16(result)
							Escribir "el resultado es: ", b
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
							
						'4':
							Escribir 'Serie de fibonacci hasta N"
							Escribir 'ingrese el limite'
							leer lim
							fibonacci(lim)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						'5':
							Escribir 'Divisores de un Numero"
							Escribir 'ingrese un valor'
							leer n 
							i = 1
							escribir 'los divisores son :'
								Mientras i < n Hacer
									result=divisores(n,i) 
									si result <> 0 Entonces
										Escribir result,' '
									FinSi
									i = i + 1
								FinMientras
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						'6':
							Escribir 'Numero Perfecto"
							Escribir 'ingrese un valor'
							leer n 
							i = 1
							acum = 0 
							Mientras i < n Hacer
								result=divisores(n,i) 
								si result <> 0 Entonces
									acum= acum + result
								FinSi
								i = i + 1
							FinMientras
							si acum == n Entonces
								Escribir 'el numero ',n,' es perfecto'
							sino 
								Escribir 'el numero no es perfecto'
							FinSi
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
							
							
							
						"7":
							Escribir "Ejercicio Numero Primo"
							Escribir "Ingrese Numero: " Sin Saltar
							Leer num
							bandera =  primo(num)
							Si bandera=1 Entonces
								Escribir num," Es Primo"
							SiNo
								Escribir num," No Es Primo"
							Fin Si
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
							
							
						'8':
							Escribir 'Verificar si dos numeros son Amigos"
							para x = 1 Hasta 2 Hacer
								Escribir 'ingrese un valor'
								leer n 
								i = 1
								tem = acum 
								acum = 0 
								Mientras i < n Hacer
									result=divisores(n,i) 
									si result <> 0 Entonces
										acum= acum + result
									FinSi
									i = i + 1
								FinMientras
							FinPara
							si tem == acum Entonces
								Escribir "los numeros ingresados son amigos"
							SiNo
								escribir "los numeros no son amigos'
							FinSi
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							tem = 0 
							
							
						"9":
							Escribir "Ejercicio Primos Gemelos"
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer num2
							Si primo(num1)=1 y primo(num2)=1 y abs(num1-num2)=2 Entonces
								Escribir num1," y ",num2," Son Primos Gemelos"
							SiNo
								Escribir num1," y ",num2," No Son Primos Gemelos"
							Fin Si
							resp=primo(num)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
							
							
							
						'10':
							Escribir 'De una serie de numeros cuantos son Primos"
							Escribir 'ingrese el numero de secuencia'
							leer secu 
							para i = 1 Hasta secu Hacer
								Escribir 'ingrese valor #',i
								leer num 
								si primo(num) = 1 Entonces
									conta = conta + 1
								FinSi
							FinPara
							Escribir 'usted a ingresado -> ',conta,' numero primos'
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							conta = 0 
							
						"11":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"3":
				opc3=""
				Mientras opc3<>"16" Hacer
					opc3= presentarMenu("********** M E N U  E J E R C I C I O S  C A D E N A S  Y  V E C T O R E S **********",menuCadenaVectores,16)
					Borrar Pantalla
					Segun opc3 Hacer
						"1":
							Escribir "Ingresar Valores a un Arreglo"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							ingresarArreglo(arreglo,limite)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						"2":
							Escribir "Presentar los Valores de un Arreglo"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							ingresarArreglo(arreglo,limite)
							presentarArreglo(arreglo,1,limite)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						"3":
							Escribir "Buscar un dato en un Arreglo"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							ingresarArreglo(arreglo,limite)
							presentarArreglo(arreglo,1,limite)
							Escribir "Ingrese el dato a buscar en el arreglo"
							Leer dato
							pos = buscarArreglo(dato,arreglo,limite)
							Si pos > 0 Entonces
								Escribir dato," Se encuentra en la posicion: ",pos, " del arreglo"
							SiNo
								Escribir dato," No se encuentra en el arreglo"
							Fin Si
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						'4':
							Escribir 'Elemento Mayor de un arreglo"
							Escribir ' '
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
								Leer limite
								ingresarArreglo(arreglo,limite)
								my = mayordeunarreglo(arreglo,limite)
								Escribir 'el numero mayor ingresado en el arreglo es ->',my
								Escribir ' ' 
								Escribir "Espere por favor, Regresando Al Menu..."
								Esperar 3 Segundos
								Borrar Pantalla
								
						'5':
							Escribir 'Copiar los datos de un arreglo en otro invertido"
							Escribir "ingrese la cantidad de elementos"
							Leer limite
							ingresarArreglo(arreglo,limite)
							presentarArreglo(arreglo,1,limite)
							Escribir 'se presentara de manera invertida'
							presentarArregloinverso(arreglo,limite)
							esperar 5 Segundos
							
						'6':
							Escribir 'Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
							Escribir ' ' 
							Escribir 'ingrese la cantidad de elemtos'
							leer limite
							dimension arreglo1[limite]
							dimension arreglo2[limite]
							ingresarArreglo(arreglo1,limite)
							ingresarArreglo(arreglo2,limite)
							arreglosuma(arreglo1,arreglo2,limite)
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						'7':
							Escribir "dado N numeros guardar en un arreglo los numeros primos"
							Escribir "ingrese el numero de secuencia"
							Leer secu
							Para i = 1 Hasta secu Hacer
								Escribir "ingrese un numero"
								Leer num
								si primo(num) <> 0 Entonces
									arreglo[i] = num
								FinSi
							FinPara
							inicio = 1
							presentarArreglo(arreglo,inicio,secu)	
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						'8':
							Escribir "Dadas los datos de un arreglo obtener el promedio de las notas >= 70"
							Escribir "¿cuántas notas va ingresar?"
							Leer lim
							Para i = 1 Hasta lim Hacer
								Escribir "ingrese nota #" ,i
								Leer arreglo[i]
								si arreglo[i] >= 70 Entonces
									acum = acum + arreglo[i]
									conta = conta + 1
								FinSi
							FinPara
							operador = "/"
							calculadora(operador,acum,conta)
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						"9":
							Escribir 'Dada una cadena presentarla caracter por caracter"
							Escribir ' '
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							inicio = 1 
							fn = Longitud(frase)
							presentarCadena(frase,inicio,fn)
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						"10":
							Escribir "Dada una cadena presentarla invertida"
							Escribir "ingrese una frase"
							Leer frase
							fn = 1
							inicio = Longitud(frase)
							presentarCadena(frase,inicio,fn)
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						"11":
							Escribir 'Dada una cadena indicar cuantas vocales tiene'
							Escribir ' '
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							bandera=0
							vocales(frase,bandera)
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						"12":
							Escribir "Dada una cadena indicar cuantos palabras tiene"
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							bandera=1
							vocales(frase,bandera)
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						"13":
							Escribir "presentar la posicion de un caracter buscado dentro de una cadena"
							Escribir "ingrese frase"
							Leer frase
							Escribir "¿que valor desea buscar?"
							Leer enco
							posi = buscar_caracter(frase,enco)
							Escribir "el valor se encuentra en la posicion " , posi
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
								
						"14":
							Escribir "Dadas dos cadenas indicar si son iguales caracter por caracter"
							Escribir ' '
							Escribir "ingrese una frase"
							Leer frase1
							Escribir "ingrese otra frase"
							Leer frase2
							si comparar(frase1,frase2) <> 0 Entonces
								Escribir "la frase son iguales"
							SiNo
								Escribir "la frase no son iguales"
							FinSi
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
								
								
						"15":
							Escribir "Indicar si una cadena es palindroma"
							Escribir "ingrese una palabra"
							Leer p
							bandera = 2
							vocales(p,bandera)
							Escribir ' ' 
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
				
						"16":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"4":
				Escribir "Gracias por usar el sistema"	
			De Otro Modo:
				Escribir "Opcion incorrecta"
		Fin Segun
    Fin Mientras
FinAlgoritmo
