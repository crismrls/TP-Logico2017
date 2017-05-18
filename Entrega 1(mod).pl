propiedad("Tinsmith Circle 1774",700,detalle("3 ambientes","Jardin","")).
propiedad("Av. Moreno 708",200,detalle("7 ambientes","Jardin","Piscina 30m3")).
propiedad("Calle Falsa 123",2000,detalle("3 ambientes","Sin Jardin","")).
interesados(carlos,"3 ambientes","Jardin").
interesados(ana,"Piscina 100m3").
interesados(maria, "2 ambientes", "Piscina 15m3").
interesados(pedro, "2 ambientes", "Piscina 15m3").



//Consultas//
1) conPiscina(Calle,Valor,detalle(Ambientes,Exterior,Piscina)):- propiedad(_,_,detalle(_,_,Piscina)).
   >true
   conPiscina(Calle,Valor,detalle(Ambientes,Exterior,Piscina)):- propiedad(Calle,Valor,detalle(Ambientes,Exterior,Piscina)).
   >Ambientes = "7 ambientes",
    Calle = "Av. Moreno 708",
    Exterior = "Jardin",
    Valor = 200
2) 

//Consultas alternativas//
1) propiedad(_,_,detalle(_,_,"Piscina 30m3")). // propiedad(Direccion,Valor,detalle(Ambiente,Jardin,"Piscina 30m3"))
2) propiedad(Direccion,Valor,detalle("3 ambientes",Jardin,Piscina))