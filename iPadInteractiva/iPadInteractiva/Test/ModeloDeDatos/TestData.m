//
//  TestData.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 20/11/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import "TestData.h"
#import "AppDelegate.h"
#import "Museos.h"
#import "ImagenesMuseo.h"
#import "Iglesias.h"
#import "Servicios.h"

@implementation TestData

-(void)createData{
    
#pragma mark - Obtener Contexto
    
    // Se obtiene el contexto
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    _managedObjectContext = appDelegate.managedObjectContext;
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
   
    
    //========================  ======================== BASES DE DATOS ELSIGLOMX  ========================   ========================//
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////// M U S E O S ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    #pragma mark - MUSEOS
    
    NSEntityDescription *entityMuseos = [NSEntityDescription entityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    [fetchRequest setEntity:entityMuseos];
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////--------------------------------MUSEO DEL ALGODÓN------------------------------------///////////////////////
    
    Museos *museo1 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo1.idMuseo = @"museo01";// debe ser unico
    museo1.nombre = @"Museo del Algodón";
    museo1.imagenPrincipal = @"museoDelAlgodon.png";
    museo1.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">El público infantil tiene el espacio más lúdico en donde aprender a la vez que se divierte pues en este reciente espacio dedicado al oro blanco no sólo se ve y se escucha acerca del algodón sino que se experimenta, ejemplo de ello es la alberca de pelotas realizadas con algodón. <br/><br/> Pero no todo se concentra en la parte lúdica pues la historia y el arte local también hacen presencia con impactantes murales del pintor Gerardo Beuchot.<br/><br/> Al entrar una museografía muy cuidada queda ante el espectador, desde el jardín principal la idea es la de un campo de algodón, con los copos, ramas, tierra y agua simulando la tierra lagunera. <br/><br/> Luego es posible encontrar la placa conmemorativa con la fecha y datos acerca de su apertura, y ya en el segundo patio es posible ver un relieve metálico de Leonardo Zuloaga, y muy cerca de eso está una placa grabada que da testimonio del terreno en el que se ubica el museo que es precisamente el casco de la ex hacienda El Torreón, sitio en el que comenzó la ciudad. <br/><br/> Hay una maqueta en la que destaca la Casa del Cerro, pero en esa misma área es posible encontrar el plano oficial de la ciudad de Torreón, en una enorme cédula de vinil, las puertas son automáticas y a la cercanía del visitante de inmediato se abren para dar paso a una enorme sala principal cuyas paredes están cubiertas de elementos históricos, historia y muchos detalles referentes al significado del algodón en esta tierra como por ejemplo las típicas pacas de algodón en medidas enormes que cubren las paredes y otras pequeñitas en vitrinas como los típicos souvenirs.</div>";
    museo1.direccion = @"Av. Juárez y C. 5 de Mayo";
    museo1.horario = @"Martes a Domingo 9:00 a.m a 4:00 pm";
    museo1.telefono = @"716-3679";
    museo1.url360 = @"http://www.elsiglodetorreon.com.mx/files/recorridos/museoalgodon/museoalgodon.html";
    museo1.urlInformacion = nil;
    museo1.numImagenes = [NSNumber numberWithInt:12];
    
    //=== IMAGENES ===//
    
    ImagenesMuseo *imagen1Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen1Museo1.orden =[NSNumber numberWithInt:1];
    imagen1Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180052.jpeg";
    imagen1Museo1.descripcion = @"El Museo del Algodón expone de manera didáctica y lúdica la historia del “oro blanco” en la región.";
    imagen1Museo1.museo = museo1;
    
    ImagenesMuseo *imagen2Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen2Museo1.orden =[NSNumber numberWithInt:2];
    imagen2Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180051.jpeg";
    imagen2Museo1.descripcion = @"El Museo del Algodón está ubicado en Av. Juárez y Calle 5 de Mayo.";
    imagen2Museo1.museo = museo1;
    
    ImagenesMuseo *imagen3Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen3Museo1.orden =[NSNumber numberWithInt:3];
    imagen3Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180050.jpeg";
    imagen3Museo1.descripcion = @"El público infantil tiene el espacio más lúdico en donde aprender a la vez que se divierte.";
    imagen3Museo1.museo = museo1;
    
    ImagenesMuseo *imagen4Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen4Museo1.orden =[NSNumber numberWithInt:4];
    imagen4Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180049.jpeg";
    imagen4Museo1.descripcion = @"En este reciente espacio dedicado al oro blanco no sólo se ve y se escucha acerca del algodón sino que se experimenta.";
    imagen4Museo1.museo = museo1;
    
    ImagenesMuseo *imagen5Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen5Museo1.orden =[NSNumber numberWithInt:5];
    imagen5Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180048.jpeg";
    imagen5Museo1.descripcion = @"Al entrar una museografía muy cuidada queda ante el espectador, desde el jardín principal la idea es la de un campo de algodón.";
    imagen5Museo1.museo = museo1;
    
    ImagenesMuseo *imagen6Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen6Museo1.orden =[NSNumber numberWithInt:6];
    imagen6Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180047.jpeg";
    imagen6Museo1.descripcion = @"En una enorme cédula de vinil, las puertas son automáticas y a la cercanía del visitante de inmediato se abren para dar paso a una enorme sala principal.";
    imagen6Museo1.museo = museo1;
    
    ImagenesMuseo *imagen7Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen7Museo1.orden =[NSNumber numberWithInt:7];
    imagen7Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180046.jpeg";
    imagen7Museo1.descripcion = @"Hay una maqueta en la que destaca la Casa del Cerro, pero en esa misma área es posible encontrar el plano oficial de la ciudad de Torreón";
    imagen7Museo1.museo = museo1;
    
    ImagenesMuseo *imagen8Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen8Museo1.orden =[NSNumber numberWithInt:8];
    imagen8Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180045.jpeg";
    imagen8Museo1.descripcion = @"Las paredes están cubiertas de elementos históricos, historia y muchos detalles referentes al significado del algodón en esta tierra.";
    imagen8Museo1.museo = museo1;
    
    ImagenesMuseo *imagen9Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen9Museo1.orden =[NSNumber numberWithInt:9];
    imagen9Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180044.jpeg";
    imagen9Museo1.descripcion = @"Pero no todo se concentra en la parte lúdica pues la historia y el arte local también hacen presencia con impactantes murales del pintor Gerardo Beuchot.";
    imagen9Museo1.museo = museo1;
    
    ImagenesMuseo *imagen10Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen10Museo1.orden =[NSNumber numberWithInt:10];
    imagen10Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180043.jpeg";
    imagen10Museo1.descripcion = @"Típicas pacas de algodón en medidas enormes cubren las paredes.";
    imagen10Museo1.museo = museo1;
    
    ImagenesMuseo *imagen11Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen11Museo1.orden =[NSNumber numberWithInt:11];
    imagen11Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180042.jpeg";
    imagen11Museo1.descripcion = @"Es posible ver un relieve metálico de Leonardo Zuloaga, y muy cerca de eso está una placa grabada que da testimonio del terreno en el que se ubica el museo que es precisamente el casco de la ex hacienda El Torreón, sitio en el que comenzó la ciudad.";
    imagen11Museo1.museo = museo1;
    
    ImagenesMuseo *imagen12Museo1 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen12Museo1.orden =[NSNumber numberWithInt:12];
    imagen12Museo1.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/08/180041.jpeg";
    imagen12Museo1.descripcion = @"El museo está abierto al público de martes a domingo de 9:00 am a 4:00 pm.";
    imagen12Museo1.museo = museo1;
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////--------------------------------MUSEO DE LA REVOLUCIÓN------------------------------------//////////////////
    
    Museos *museo2 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo2.idMuseo = @"museo02";// debe ser unico
    museo2.nombre = @"Museo de la Revolución";
    museo2.imagenPrincipal = @"museoDeLaRevolucion.png";
    museo2.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Situado justo en el límite de Torreón y Gómez Palacio, en lo que se conoce como la Casa Colorada, el Museo de la Revolución se distingue por alojar, en escasos metros, armamento empleado en la época de la revolución y monedas antiguas, fotografías e imágenes del General Francisco Villa, así como información icónica e historiográfica fundamental de la Revolución Mexicana en La Laguna. <br/><br/> La finca rescatada, fue convertida en Museo a partir de Noviembre de 1983. Lo primero que cautiva la atención de quien visita el heroico edificio es el retablo, a espaldas de la Casa Colorada, donde coexisten los principales símbolos de la mexicanidad norteña: la Virgen de Guadalupe (a la izquierda), las imágenes de Torreón y del puente que hermana a la ciudades (al centro) y Pancho Villa (a la derecha). En la parte superior de la pared se lee: ¡Viva México! Esta impronta funciona como oportuno estímulo para motivar al espectador a que se adentre a la sala. La habitación está atestada de fotografías, colocadas en las paredes y de imágenes relacionadas con la gesta revolucionaria, con episodios de la vida del jefe de la División del Norte. <br/><br/> En el recorrido que detiene su afán en las vitrinas destacan: el periódico donde se informa acerca de la muerte del general Francisco Villa, el corrido del asesinato del Centauro, el acta de nacimiento de Madero, el corrido de la Casa Colorada. En este universo compositivo resalta la leyenda: \"Aquí no se honran las cenizas, sino el fuego de la Revolución Mexicana\". <br/><br/> No se logra una confluencia más efectiva, entre Villa y los símbolos medulares de la región lagunera, como en el recorrido que privilegia la percepción de los objetos colocados sobre mesas. La mascarilla mortuoria del general Villa, realizada por el artista norteamericano Esteban W. Beick, donada al museo por José Socorro Salcido (20 de julio de 1988) es un ejemplo que acendra el afecto hacia ese hombre que dijo, según narra Martín Luis Guzmán \"Creo yo que la justicia, como la guerra, ha de guardar horas amargas para quienes la hacen\".</div>";
    museo2.direccion = @"Calle Muzquiz y Blvd. Constitución";
    museo2.horario = @"Martes a Domingo 10:00 a.m a 2:00 pm";
    museo2.telefono = @"717-1857";
    museo2.url360 = @"null";
    museo2.urlInformacion = nil;
    museo2.numImagenes = [NSNumber numberWithInt:8];
    
    //=== IMAGENES ===//
    
    ImagenesMuseo *imagen1Museo2 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen1Museo2.orden =[NSNumber numberWithInt:1];
    imagen1Museo2.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/10/182956.jpeg";
    imagen1Museo2.descripcion = @"El Museo de la Revolución se distingue por alojar, en escasos metros, armamento empleado en la época de la revolución y monedas antiguas, fotografías e imágenes del General Francisco Villa, así como información icónica e historiográfica fundamental de la Revolución Mexicana en La Laguna.";
    imagen1Museo2.museo = museo2;
    
    ImagenesMuseo *imagen2Museo2 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen2Museo2.orden =[NSNumber numberWithInt:2];
    imagen2Museo2.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/10/182955.jpeg";
    imagen2Museo2.descripcion = @"El Museo de la Revolución está situado justo en el límite de Torreón y Gómez Palacio, en lo que se conoce como la Casa Colorada.";
    imagen2Museo2.museo = museo2;
    
    ImagenesMuseo *imagen3Museo2 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen3Museo2.orden =[NSNumber numberWithInt:3];
    imagen3Museo2.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/10/182954.jpeg";
    imagen3Museo2.descripcion = @"La habitación está atestada de fotografías, colocadas en las paredes y de imágenes relacionadas con la gesta revolucionaria, con episodios de la vida del jefe de la División del Norte.";
    imagen3Museo2.museo = museo2;
    
    ImagenesMuseo *imagen4Museo2 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen4Museo2.orden =[NSNumber numberWithInt:4];
    imagen4Museo2.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/10/182953.jpeg";
    imagen4Museo2.descripcion = @"Lo primero que cautiva la atención de quien visita el heroico edificio es el retablo, a espaldas de la Casa Colorada, donde coexisten los principales símbolos de la mexicanidad norteña.";
    imagen4Museo2.museo = museo2;
    
    ImagenesMuseo *imagen5Museo2 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen5Museo2.orden =[NSNumber numberWithInt:5];
    imagen5Museo2.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/10/182952.jpeg";
    imagen5Museo2.descripcion = @"Se cuenta con una colección de billetes y monedas de la época.";
    imagen5Museo2.museo = museo2;
    
    ImagenesMuseo *imagen6Museo2 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen6Museo2.orden =[NSNumber numberWithInt:6];
    imagen6Museo2.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/10/182951.jpeg";
    imagen6Museo2.descripcion = @"En el museo se pueden encontrar armas utilizadas en la revolución.";
    imagen6Museo2.museo = museo2;
    
    ImagenesMuseo *imagen7Museo2 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen7Museo2.orden =[NSNumber numberWithInt:7];
    imagen7Museo2.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/10/182950.jpeg";
    imagen7Museo2.descripcion = @"El museo de la revolución alberga distintas antigüedades de la revolución mexicana.";
    imagen7Museo2.museo = museo2;
    
    ImagenesMuseo *imagen8Museo2 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen8Museo2.orden =[NSNumber numberWithInt:8];
    imagen8Museo2.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/10/182949.jpeg";
    imagen8Museo2.descripcion = @"La finca rescatada, fue convertida en Museo a partir de Noviembre de 1983.";
    imagen8Museo2.museo = museo2;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////--------------------------------MUSEO DE LOS METALES------------------------------------//////////////////
    
    Museos *museo3 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo3.idMuseo = @"museo03";// debe ser unico
    museo3.nombre = @"Museo de los Metales";
    museo3.imagenPrincipal = @"museoDeLosMetales.png";
    museo3.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Se trata de una construcción de tipo americano ubicada en lo que fuera el edificio principal de oficinas de Met-Mex que data de 1901, mismo que tuvo una remodelación que respetó la arquitectura del recinto, pues es considerado por el Instituto Nacional de Antropología e Historia por su valor histórico. <br/><br/> Este nuevo espacio será parte de la Red de Museos Tecnológicos del país, demás de ser el primer museo en su tipo por su colección y aporte sobre el origen y proceso industrial de los metales, y se convertirá en el más importante de su ramo en América Latina. <br/><br/> Dentro de las actividades educativas se desarrollan visitas guiadas para las escuelas de Torreón, ciclos de conferencias, talleres, cursos, concursos y muestras especiales como por ejemplo la de La Pieza del Mes, además de actividades artísticas relacionadas con la temática del museo. <br/><br/> Geología, paleontología, hidrología e hidrogeología, son algunos de los temas a los que se enfrentará el visitante, con una museografía muy cuidada y una calculada distribución de los espacios creada por Alfonso Soto Soria y Sebastián Soto Olmos, museógrafos reconocidos por sus trabajos en el Museo Nacional de Antropología e Historia, el Museo Papalote, el Museo Franz Mayer, entre otros. <br/><br/> La narración museográfica dentro del recinto -realizado en su mayor parte de madera- está dividida en siete temas principales, para lo cual se apoya en gráficos, maquetas, montajes escenográficos, cuatro salas audiovisuales, diez pantallas con cédulas electrónicas, más de 500 fichas técnicas, textos, y llamativas colecciones mineralógicas, paleontológicas, de productos y herramientas del Siglo XIX. <br/><br/> Origen del Universo, La Formación de la Tierra y sus Minerales, Las Ciencias de la Tierra, La Historia de la Humanidad en torno a los Metales, La Transformación y Aplicación de los metales en la Vida Diaria y la Industria, Peñoles, y otra área titulada Desarrollo Sustentable Socialmente Responsable son las salas que hay en el recinto, esto además de un espacio que todavía no se ocupa pero que está reservado para recibir en breve El Cetro y la Corona del Centenario y otro más en el que se recibirán las muestras temporales, mismas que iniciarán con la exposición Los Metales y el Color. <br/><br/>  Entre la información que proporcionó el recinto se dieron a conocer las áreas disponibles entre las que destacan el patio de 273 metros cuadrados para usos múltiples, 150 metros cuadrados de jardines y los 763 metros cuadrados para las exhibiciones temáticas. <br/><br/> Así, un nuevo museo se abre a los laguneros, quienes podrán disfrutarlo a partir del miércoles con su contenido único en su tipo en el cual es posible encontrar desde oro, sólidas barras de plata, minerales varios y además rincones en donde la historia de la región está presente. <br/><br/> Cuenta con siete salsa permanentes, divididas en nueve temas principales. La museografía corrió a cargo de Alfonso Soto Soria y Sebastián Soto Olmos. Cuenta con diez pantallas con cédulas electrónicas y el edificio data de 1901.</div>";
    museo3.direccion = nil;
    museo3.horario = @"Martes a Domingo 10:00 a.m a 2:00 pm";
    museo3.telefono = nil;
    museo3.url360 = nil;
    museo3.urlInformacion = nil;
    museo3.numImagenes = [NSNumber numberWithInt:14];
    
    //=== IMAGENES ===//
    
    ImagenesMuseo *imagen1Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen1Museo3.orden =[NSNumber numberWithInt:1];
    imagen1Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116128.jpeg";
    imagen1Museo3.descripcion = @"Temas que van desde el origen del universo, la formación de la tierra y sus minerales y la historia de la humanidad en torno a los metales es lo que contiene el nuevo Museo de los Metales de Peñoles.";
    imagen1Museo3.museo = museo3;
    
    ImagenesMuseo *imagen2Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen2Museo3.orden =[NSNumber numberWithInt:2];
    imagen2Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116126.jpeg";
    imagen2Museo3.descripcion = @"Se trata de una construcción de tipo americano ubicada en lo que fuera el edificio principal de oficinas de Met-Mex que data de 1901, mismo que tuvo una remodelación que respetó la arquitectura del recinto, pues es considerado por el Instituto Nacional de Antropología e Historia por su valor histórico.";
    imagen2Museo3.museo = museo3;
    
    ImagenesMuseo *imagen3Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen3Museo3.orden =[NSNumber numberWithInt:3];
    imagen3Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116125.jpeg";
    imagen3Museo3.descripcion = @"Leopoldo López, jefe de vinculación de Peñoles informó que la inauguración del Museo de los Metales se llevará a cabo el próximo miércoles 26 de septiembre a las 8:30 de la noche, esto dentro del marco de los festejos por el Centenario de Torreón.";
    imagen3Museo3.museo = museo3;
    
    ImagenesMuseo *imagen4Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen4Museo3.orden =[NSNumber numberWithInt:4];
    imagen4Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116124.jpeg";
    imagen4Museo3.descripcion = @"Este nuevo espacio será parte de la Red de Museos Tecnológicos del país, demás de ser el primer museo en su tipo por su colección y aporte sobre el origen y proceso industrial de los metales, y se convertirá en el más importante de su ramo en América Latina.";
    imagen4Museo3.museo = museo3;
    
    ImagenesMuseo *imagen5Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen5Museo3.orden =[NSNumber numberWithInt:5];
    imagen5Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116123.jpeg";
    imagen5Museo3.descripcion = @"López informó que las puertas estarán abiertas para todo el público, pero básicamente dentro de las actividades educativas se desarrollarán visitas guiadas para las escuelas de Torreón, ciclos de conferencias, talleres, cursos, concursos y muestras especiales como por ejemplo la de La Pieza del Mes, además de actividades artísticas relacionadas con la temática del museo.";
    imagen5Museo3.museo = museo3;
    
    ImagenesMuseo *imagen6Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen6Museo3.orden =[NSNumber numberWithInt:6];
    imagen6Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116122.jpeg";
    imagen6Museo3.descripcion = @"Geología, paleontología, hidrología e hidrogeología, son algunos de los temas a los que se enfrentará el visitante, con una museografía muy cuidada y una calculada distribución de los espacios creada por Alfonso Soto Soria y Sebastián Soto Olmos, museógrafos reconocidos por sus trabajos en el Museo Nacional de Antropología e Historia, el Museo Papalote, el Museo Franz Mayer, entre otros.";
    imagen6Museo3.museo = museo3;
    
    ImagenesMuseo *imagen7Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen7Museo3.orden =[NSNumber numberWithInt:7];
    imagen7Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116121.jpeg";
    imagen7Museo3.descripcion = @"La narración museográfica dentro del recinto -realizado en su mayor parte de madera- está dividida en siete temas principales, para lo cual se apoya en gráficos, maquetas, montajes escenográficos, cuatro salas audiovisuales, diez pantallas con cédulas electrónicas, más de 500 fichas técnicas, textos, y llamativas colecciones mineralógicas, paleontológicas, de productos y herramientas del Siglo XIX.";
    imagen7Museo3.museo = museo3;
    
    ImagenesMuseo *imagen8Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen8Museo3.orden =[NSNumber numberWithInt:8];
    imagen8Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116120.jpeg";
    imagen8Museo3.descripcion = @"Origen del Universo, La Formación de la Tierra y sus Minerales, Las Ciencias de la Tierra, La Historia de la Humanidad en torno a los Metales, La Transformación y Aplicación de los metales en la Vida Diaria y la Industria, Peñoles, y otra área titulada Desarrollo Sustentable Socialmente Responsable son las salas que hay en el recinto, esto además de un espacio que todavía no se ocupa pero que está reservado para recibir en breve El Cetro y la Corona del Centenario y otro más en el que se recibirán las muestras temporales, mismas que iniciarán con la exposición Los Metales y el Color.";
    imagen8Museo3.museo = museo3;
    
    ImagenesMuseo *imagen9Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen9Museo3.orden =[NSNumber numberWithInt:9];
    imagen9Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116119.jpeg";
    imagen9Museo3.descripcion = @"Entre la información que proporcionó el recinto se dieron a conocer las áreas disponibles entre las que destacan el patio de 273 metros cuadrados para usos múltiples, 150 metros cuadrados de jardines y los 763 metros cuadrados para las exhibiciones temáticas.";
    imagen9Museo3.museo = museo3;
    
    ImagenesMuseo *imagen10Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen10Museo3.orden =[NSNumber numberWithInt:10];
    imagen10Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116118.jpeg";
    imagen10Museo3.descripcion = @"Así, un nuevo museo se abre a los laguneros, quienes podrán disfrutarlo a partir del miércoles con su contenido único en su tipo en el cual es posible encontrar desde oro, sólidas barras de plata, minerales varios y además rincones en donde la historia de la región está presente.";
    imagen10Museo3.museo = museo3;
    
    ImagenesMuseo *imagen11Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen11Museo3.orden =[NSNumber numberWithInt:11];
    imagen11Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116117.jpeg";
    imagen11Museo3.descripcion = @"La dirección del Museo de los Metales es bulevar Laguna 3200 Poniente, en la colonia Metalúrgica de esta ciudad.";
    imagen11Museo3.museo = museo3;
    
    ImagenesMuseo *imagen12Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen12Museo3.orden =[NSNumber numberWithInt:12];
    imagen12Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116116.jpeg";
    imagen12Museo3.descripcion = @"El museo será inaugurado el 26 de septiembre, a las 8:30 de la noche. Se ubica en el bulevar Laguna 3200 Poniente, colonia Metalúrgica.";
    imagen12Museo3.museo = museo3;
    
    ImagenesMuseo *imagen13Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen13Museo3.orden =[NSNumber numberWithInt:13];
    imagen13Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116115.jpeg";
    imagen1Museo3.descripcion = @"Cuanta con siete salsa permanentes, divididas en nueve temas principales. La museografía corrió a cargo de Alfonso Soto Soria y Sebastián Soto Olmos.";
    imagen13Museo3.museo = museo3;
    
    ImagenesMuseo *imagen14Museo3 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen14Museo3.orden =[NSNumber numberWithInt:14];
    imagen14Museo3.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2007/09/116114.jpeg";
    imagen14Museo3.descripcion = @"Cuenta con diez pantallas con cédulas electrónicas.El edificio data de 1901.";
    imagen14Museo3.museo = museo3;
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////-----------------------------NUEVO MUSEO DE LA REVOLUCION---------------------------------//////////////////
    
    Museos *museo4 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo4.idMuseo = @"museo04";// debe ser unico
    museo4.nombre = @"Nuevo Museo de la Revolución";
    museo4.imagenPrincipal = @"nuevoMuseoDeLaRevolucion.png";
    museo4.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Se trata de una construcción de tipo americano ubicada en lo que fuera el edificio principal de oficinas de Met-Mex que data de 1901, mismo que tuvo una remodelación que respetó la arquitectura del recinto, pues es considerado por el Instituto Nacional de Antropología e Historia por su valor histórico. <br/><br/> Este nuevo espacio será parte de la Red de Museos Tecnológicos del país, demás de ser el primer museo en su tipo por su colección y aporte sobre el origen y proceso industrial de los metales, y se convertirá en el más importante de su ramo en América Latina. <br/><br/> Dentro de las actividades educativas se desarrollan visitas guiadas para las escuelas de Torreón, ciclos de conferencias, talleres, cursos, concursos y muestras especiales como por ejemplo la de La Pieza del Mes, además de actividades artísticas relacionadas con la temática del museo. <br/><br/> Geología, paleontología, hidrología e hidrogeología, son algunos de los temas a los que se enfrentará el visitante, con una museografía muy cuidada y una calculada distribución de los espacios creada por Alfonso Soto Soria y Sebastián Soto Olmos, museógrafos reconocidos por sus trabajos en el Museo Nacional de Antropología e Historia, el Museo Papalote, el Museo Franz Mayer, entre otros. <br/><br/> La narración museográfica dentro del recinto -realizado en su mayor parte de madera- está dividida en siete temas principales, para lo cual se apoya en gráficos, maquetas, montajes escenográficos, cuatro salas audiovisuales, diez pantallas con cédulas electrónicas, más de 500 fichas técnicas, textos, y llamativas colecciones mineralógicas, paleontológicas, de productos y herramientas del Siglo XIX. <br/><br/> Origen del Universo, La Formación de la Tierra y sus Minerales, Las Ciencias de la Tierra, La Historia de la Humanidad en torno a los Metales, La Transformación y Aplicación de los metales en la Vida Diaria y la Industria, Peñoles, y otra área titulada Desarrollo Sustentable Socialmente Responsable son las salas que hay en el recinto, esto además de un espacio que todavía no se ocupa pero que está reservado para recibir en breve El Cetro y la Corona del Centenario y otro más en el que se recibirán las muestras temporales, mismas que iniciarán con la exposición Los Metales y el Color. <br/><br/>  Entre la información que proporcionó el recinto se dieron a conocer las áreas disponibles entre las que destacan el patio de 273 metros cuadrados para usos múltiples, 150 metros cuadrados de jardines y los 763 metros cuadrados para las exhibiciones temáticas. <br/><br/> Así, un nuevo museo se abre a los laguneros, quienes podrán disfrutarlo a partir del miércoles con su contenido único en su tipo en el cual es posible encontrar desde oro, sólidas barras de plata, minerales varios y además rincones en donde la historia de la región está presente. <br/><br/> Cuenta con siete salsa permanentes, divididas en nueve temas principales. La museografía corrió a cargo de Alfonso Soto Soria y Sebastián Soto Olmos. Cuenta con diez pantallas con cédulas electrónicas y el edificio data de 1901.</div>";
    museo4.direccion = @"Esquina de Lerdo de Tekada y Gregorio A García";
    museo3.horario = nil;
    museo4.telefono = @"722-6922";
    museo4.url360 = nil;
    museo4.urlInformacion = nil;
    museo4.numImagenes = [NSNumber numberWithInt:0];
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////-----------------------------MUSEO XIXIMES---------------------------------////////////////////////
    
    Museos *museo5 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo5.idMuseo = @"museo05";// debe ser unico
    museo5.nombre = @"Museo de Xiximes";
    museo5.imagenPrincipal = @"museoXiximes.png";
    museo5.descripcion =  @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Esta dedicado al público interesado en conocer algo de la historia a través de la Antropología. <br/><br/> El Xiximes, cuenta con una amplia sala de paleontología y antropología, que alberga una de las principales atracciones, un esqueleto que data de 750 años y un molar de mamut, la edificación cuenta también con salas de arqueología, vida contemporánea, y revolución con Gómez antiguo, dentro del inventario del museo, se cuenta con más de 2 mil piezas catalogadas y registradas por el Instituto Nacional de Antropología, e Historia. <br/><br/> El nombre del museo, Xiximes, proviene de una tribu de la región de la sierra de Durango que colinda con el estado de Sinaloa.</div>";
    museo5.direccion = @"Confluencia que forman la avenida Hidalgo y la calle Mártires de Gómez Palacio";
    museo3.horario = nil;
    museo5.telefono = nil;
    museo5.url360 = nil;
    museo5.urlInformacion = nil;
    museo5.numImagenes = [NSNumber numberWithInt:0];
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////-----------------------------MUSEO UNIVERSITARIO HISTORIA NATURAL UAL---------------------------------////////////////////////
    
    Museos *museo6 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo6.idMuseo = @"museo06";// debe ser unico
    museo6.nombre = @"Museo Universitario Historia Natural UAL";
    museo6.imagenPrincipal = @"museoUniversitario.png";
    museo6.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">SALA AMARILLA \"MUDO TESTIGO DE LA VIDA: GEOLOGÍA\" <br/><br/> GEOLOGÍA.- Campo de la ciencia que se interesa por el origen del planeta Tierra, su historia, su forma, la materia que lo configura y los procesos que actúan o han actuado sobre él. Los geólogos son científicos que estudian las rocas y los materiales derivados que forman la parte externa de la Tierra. <br/><br/>  PETROLOGÍA.- La petrología se encarga del origen, la aparición, la estructura y la historia de las rocas, en particular de las sedimentarias, metamórficas e ígneas. <br/><br/> MINERALOGÍA.- Trata de los minerales de la corteza terrestre tales como: sulfuros, carbonatos, óxidos, sulfatos, silicatos y nativos, así como los encontrados fuera de la Tierra, entre estos se encuentran las muestras lunares o los meteoritos. <br/><br/> SALA AZUL \"TRAS LAS HUELLAS DEL PASADO: PALEONTOLOGÍA\" <br/><br/> PALEONTOLOGÍA.- Estudio de la vida prehistórica animal y vegetal, que se realiza mediante el análisis de restos fósiles. El estudio de estos restos permite a los científicos determinar la historia de la evolución de organismos extintos, de la misma manera que si fueran organismos vivos. <br/><br/> LA ERA PALEOZOICA.- Duró hasta hace 245 millones de años. Se divide en periodos: cámbrico, ordovícico, silúrico, devónico, carbonífero y pérmico. <br/><br/>  LA ERA MESOZOICA.- También se denomina con frecuencia la era de los reptiles, debido a que esta clase animal dominó la Tierra durante todo este tiempo. Comenzó hace 245 millones de años e incluye los periodos triásico, jurásico y cretácico. <br/><br/>  LA ERA CENOZOICA.- La era cenozoica comenzó hace 65 millones de años. Se divide en dos periodos, el terciario y el cuaternario, que abarca hasta nuestros días. <br/><br/>SALA CAFE \"INDIOS LAGUNEROS, NUESTRO ORIGEN: ARQUEOLOGÍA\" <br/><br/> ARQUEOLOGÍA.- Disciplina que se dedica al estudio de viejas o antiguas culturas humanas. <br/><br/> Entra al fascinante mundo de nuestros antepasados donde descubrirás su manera de convivir con su entorno natural, a través del cual se alimentaron, se protegieron e hicieron suyo este inhóspito territorio, dejando además manifestaciones claras de su presencia. <br/><br/>SALA AZUL OBSCURO  \"OBSERVANDO EL CIELO: ASTRONOMIA \" <br/><br/> ASTRONOMÍA.- Ciencia que se ocupa de los cuerpos celestes del Universo, incluidos los planetas y sus satélites, los cometas y meteoritos, las estrellas y la materia interestelar, los sistemas de estrellas llamados galaxias y los cúmulos de galaxias. <br/><br/>  Descubre a través de imágenes la fantástica odisea de la conquista de la Luna, la cual inicia el 16 de julio de 1969 y concluyo ocho días después en el Océano Pacifico. <br/><br/> Se cuenta además con la sala de Exposiciones Temporales (rojo),  \"Dr. Luis Maeda Villalobos \" así como con la sala de Servicios Educativos (naranja)  \"Sr. Eduardo Guzmán \", la cual se compone de una sala de actividades, Galería de los niños y sala de proyecciones.</div>";
    museo6.direccion = @"Segundo piso interior 205 del Palacio Feferal";
    museo3.horario = @"Lunes a Viernes 9:00 am a 6:00 pm";
    museo6.telefono = @"711-4067";
    museo6.url360 = nil;
    museo6.urlInformacion = nil;
    museo6.numImagenes = [NSNumber numberWithInt:0];
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////-----------------------------MUSEO DE ARTE MODERNO---------------------------------////////////////////////
    
    Museos *museo7 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo7.idMuseo = @"museo07";// debe ser unico
    museo7.nombre = @"Museo de Arte Moderno";
    museo7.imagenPrincipal = @"";
    museo7.descripcion =  @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Integrante del Conjunto Cultural Gómez Palacio, consta de 42 obras artísticas en su sala permanente; de éstas, 19 pertenecen al Instituto Nacional de Bellas Artes y el resto son propiedad de la institución luego de ser donadas por conocida gomezpalatina. <br/><br/> El 18 de marzo de 1973, un acontecimiento transformó la vida cultural de la región; se crea la antigua Casa de la Cultura, después sería Centro Cultural y actualmente Conjunto Cultural Gómez Palacio, que alberga a su vez al Museo de Arte Moderno, sede de la colección Gironella, integrada por 19 obras pictóricas, y donada por la señora Silvia Rodríguez Valles. <br/><br/> La cesión de la Colección Gironella, contribuyó enormemente a la realización material del sueño de contar con un espacio dedicado a la expresión plástica. <br/><br/> A partir del 10 de diciembre de 1974, fecha de su apertura, el Museo realiza un quehacer de enseñanza, educación y promoción artística. Con el tiempo, ha ido enriqueciendo su acervo cultural, a través de donaciones, préstamos, con que han contribuido artistas destacados de la plástica nacional e internacional y el Instituto Nacional de Bellas Artes. <br/><br/> Actualmente la Colección del Museo de Are Moderno, cuenta con un acervo importante de Arte Mexicano Contemporáneo, de creadores de los más representativo de la Segunda Generación y a llamada “Ruptura”. <br/><br/> El Consejo Nacional para la Cultura y las Artes, el Instituto Nacional de Bellas Artes y el Instituto de Cultura del Estado de Durango, de manera periódica impulsan muestras de creadores del país mismas que el Museo de Arte Moderno exhibe en su sala para exposiciones temporales, donde acoge las creaciones de valores destacados de la región.</div>";
    museo7.direccion = @"Londres y Bilboa. Col. El Campestre. Gómez Palacio, Dgo.";
    museo7.horario = @"Abierto de 10:00 am a 7:00 pm";
    museo7.telefono = @"714-0711 y 7140316";
    museo7.url360 = nil;
    museo7.urlInformacion = nil;
    museo7.numImagenes = [NSNumber numberWithInt:0];
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////--------------------------------MUSEO FRANCISCO SARABIA------------------------------------//////////////////
    
    Museos *museo8 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo8.idMuseo = @"museo08";// debe ser unico
    museo8.nombre = @"Museo Francisco Sarabia";
    museo8.imagenPrincipal = @"museoFrancisco.png";
    museo8.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Oriundo de Ciudad Lerdo, Sarabia fue precursor de los vuelos de larga distancia, como el que hizo de la ciudad de México a Nueva York, sin escalas, en 1939. <br/><br/> Alrededor de esa aeronave hay algunas vitrinas en las que se muestran fotografías y objetos personales del aviador. <br/><br/> Hace 30 años, el siete de junio de 1972, el museo “Francisco Sarabia” de la Ciudad Jardín, abrió sus puertas al público como un homenaje al piloto aviador del mismo nombre. Francisco Sarabia Tinoco se hizo famoso por sus vuelos en el “El Conquistador del Cielo”, nombre del avión en el que siempre viajó, y que el gobernador de Yucatán le obsequió al ver su pasión por este oficio. <br/><br/> Se dedicó a arreglarlo para luego recorrer varias rutas como: Mérida, Cozumel, Chetumal, Belice, Oaxaca, Tuxtla Gutiérrez y Tapachula, Chiapas, algunos viajes de pasaje y otros de correo y transportación, pronunciando en cada uno la frase: “Por la grandeza de mi patria triunfaré”. <br/><br/> A menos de un mes de cumplir 39 años de edad, el siete de julio de 1939, Francisco Sarabia viajó de la Ciudad de México a Nueva York. El aparato comenzó a fallar haciéndolo perder el control por completo, hasta caer al río Potomac en Washington, en donde perdió la vida casi instantáneamente, a consecuencia de un golpe en la nuca. Se dice que el accidente se debió a que el motor estaba tirando aceite, y para evitarlo le colocaron unos trapos que servían como tapón, pero uno de ellos obstruyó el carburador, lo que ocasionó su caída. Aunque el avión logró flotar debido a que sus alas son de madera, no fue posible cambiar el destino del piloto mexicano. <br/><br/> Por otro lado, está la versión de que el accidente fue provocado por alguien que conscientemente colocó azúcar en el tanque de la gasolina para ocasionar su muerte, aunque tal rumor nunca se pudo comprobar. Después del fatal accidente, el avión permaneció arrumbado durante 25 años en la ciudad de Gómez Palacio, hasta que alguien decidió arreglarlo, reparar las partes dañadas y llevarlo a Lerdo, donde actualmente se exhibe para homenajear al piloto. Este avión está valuado en cinco millones de dólares, y es el segundo en su tipo en todo el mundo, el otro se encuentra en la ciudad de Washington, D.C. <br/><br/> Los visitantes al museo también podrán observar el traje de piel que portó el piloto mexicano hasta el último día en que viajó, además de las botas y el paracaídas que le fue imposible utilizar durante el trágico accidente, debido a la poca altura, lo que le impidió maniobrar. <br/><br/> También dan testimonio de su destreza y trágica muerte, las páginas principales de algunos diarios que publicaron los vuelos que realizó, así como las fotografías, y del momento de su rescate en el río Potomac. <br/><br/> Igualmente artículos que se pudieron rescatar del avión como las licencias que le permitían volar, una libreta que usaba como agenda y otros objetos personales como la máquina y loción de afeitar; además de trofeos y reconocimientos que le fueron otorgados en cada uno de sus viajes. <br/><br/> Es parte de esta valiosa muestra, una mascarilla fúnebre del rostro del piloto, hecha a base de yeso, y una carta enviada de la Presidencia de la República, con fecha del 22 de marzo de 1939, firmada por el presidente Lázaro Cárdenas, en la cual lo felicitaba por el vuelo que emprendió sin escala, desde la Ciudad de México hacia Chetumal, Quintana Roo, ya que marcó una nueva etapa que pondría de relieve el esfuerzo de los pilotos mexicanos y su competencia. <br/><br/> Francisco Sarabia nació en Ciudad Lerdo, Dgo., el tres de julio de 1900, estudió la preparatoria en el México State College en El Paso, Texas y la carrera de Mecánica Automovilista en el Sweeney Automovile School, en Kansas, City. En el año de 1928 cursó sus estudios de aviación, en el Chicago Aeronautical School y trabajó en el Circo Aéreo hasta el año de 1929. De 1930 a 1931 permaneció en la ciudad de Morelia, Michoacán, acarreando cereales y pasaje, y en 1932 inició sus trabajos en la empresa Transportes Aéreos de Chiapas, S.A.</div>";
    museo8.direccion = @"Av. Allende 2230 Ote.";
    museo8.horario = @"8:00 am a 7:00 pm ";
    museo8.telefono = @"750-5000";
    museo8.url360 = nil;
    museo8.urlInformacion = nil;
    museo8.numImagenes = [NSNumber numberWithInt:11];
    
    //=== IMAGENES ===//
    
    ImagenesMuseo *imagen1Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen1Museo8.orden =[NSNumber numberWithInt:1];
    imagen1Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10398.jpeg";
    imagen1Museo8.descripcion = @"Hace 30 años, el siete de junio de 1972, el museo “Francisco Sarabia” de la Ciudad Jardín, abrió sus puertas al público como un homenaje al piloto aviador del mismo nombre. Francisco Sarabia Tinoco se hizo famoso por sus vuelos en el “El Conquistador del Cielo”, nombre del avión en el que siempre viajó, y que el gobernador de Yucatán le obsequió al ver su pasión por este oficio. Se dedicó a arreglarlo para luego recorrer varias rutas como: Mérida, Cozumel, Chetumal, Belice, Oaxaca, Tuxtla Gutiérrez y Tapachula, Chiapas, algunos viajes de pasaje y otros de correo y transportación, pronunciando en cada uno la frase: “Por la grandeza de mi patria triunfaré”.";
    imagen1Museo8.museo = museo8;
    
    ImagenesMuseo *imagen2Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen2Museo8.orden =[NSNumber numberWithInt:2];
    imagen2Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10397.jpeg";
    imagen2Museo8.descripcion = @"A menos de un mes de cumplir 39 años de edad, el siete de julio de 1939, Francisco Sarabia viajó de la Ciudad de México a Nueva York. El aparato comenzó a fallar haciéndolo perder el control por completo, hasta caer al río Potomac en Washington, en donde perdió la vida casi instantáneamente, a consecuencia de un golpe en la nuca. Se dice que el accidente se debió a que el motor estaba tirando aceite, y para evitarlo le colocaron unos trapos que servían como tapón, pero uno de ellos obstruyó el carburador, lo que ocasionó su caída. Aunque el avión logró flotar debido a que sus alas son de madera, no fue posible cambiar el destino del piloto mexicano.";
    imagen2Museo8.museo = museo8;
    
    ImagenesMuseo *imagen3Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen3Museo8.orden =[NSNumber numberWithInt:3];
    imagen3Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10396.jpeg";
    imagen3Museo8.descripcion = @"or otro lado, está la versión de que el accidente fue provocado por alguien que conscientemente colocó azúcar en el tanque de la gasolina para ocasionar su muerte, aunque tal rumor nunca se pudo comprobar. Después del fatal accidente, el avión permaneció arrumbado durante 25 años en la ciudad de Gómez Palacio, hasta que alguien decidió arreglarlo, reparar las partes dañadas y llevarlo a Lerdo, donde actualmente se exhibe para homenajear al piloto. Este avión está valuado en cinco millones de dólares, y es el segundo en su tipo en todo el mundo, el otro se encuentra en la ciudad de Washington, D.C.";
    imagen3Museo8.museo = museo8;
    
    ImagenesMuseo *imagen4Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen4Museo8.orden =[NSNumber numberWithInt:4];
    imagen4Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10395.jpeg";
    imagen4Museo8.descripcion = @"Los visitantes al museo también podrán observar el traje de piel que portó el piloto mexicano hasta el último día en que viajó, además de las botas y el paracaídas que le fue imposible utilizar durante el trágico accidente, debido a la poca altura, lo que le impidió maniobrar.";
    imagen4Museo8.museo = museo8;
    
    ImagenesMuseo *imagen5Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen5Museo8.orden =[NSNumber numberWithInt:5];
    imagen5Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10394.jpeg";
    imagen5Museo8.descripcion = @"Valiosos artículos de Francisco Sarabia se exhiben en vitrinas del museo";
    imagen5Museo8.museo = museo8;
    
    ImagenesMuseo *imagen6Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen6Museo8.orden =[NSNumber numberWithInt:6];
    imagen6Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10393.jpeg";
    imagen6Museo8.descripcion = @"Francisco Sarabia nació en Ciudad Lerdo, Dgo., el tres de julio de 1900, estudió la preparatoria en el México State College en El Paso, Texas y la carrera de Mecánica Automovilista en el Sweeney Automovile School, en Kansas, City. En el año de 1928 cursó sus estudios de aviación, en el Chicago Aeronautical School y trabajó en el Circo Aéreo hasta el año de 1929. De 1930 a 1931 permaneció en la ciudad de Morelia, Michoacán, acarreando cereales y pasaje, y en 1932 inició sus trabajos en la empresa Transportes Aéreos de Chiapas, S.A.";
    imagen6Museo8.museo = museo8;
    
    ImagenesMuseo *imagen7Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen7Museo8.orden =[NSNumber numberWithInt:7];
    imagen7Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10392.jpeg";
    imagen7Museo8.descripcion = @"También se aprecian las fotografías de la familia de Francisco Sarabia.";
    imagen7Museo8.museo = museo8;
    
    ImagenesMuseo *imagen8Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen8Museo8.orden =[NSNumber numberWithInt:8];
    imagen8Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10391.jpeg";
    imagen8Museo8.descripcion = @"Entre las fotografías se aprecia la de su esposa Agripina Díaz y sus tres hijos, dos mujeres y un hombre, de quienes se desconocen sus nombres.";
    imagen8Museo8.museo = museo8;
    
    ImagenesMuseo *imagen9Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen9Museo8.orden =[NSNumber numberWithInt:9];
    imagen9Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10390.jpeg";
    imagen9Museo8.descripcion = @"También dan testimonio de su destreza y trágica muerte, las páginas principales de algunos diarios que publicaron los vuelos que realizó, así como las fotografías, y del momento de su rescate en el río Potomac.";
    imagen9Museo8.museo = museo8;
    
    ImagenesMuseo *imagen10Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen10Museo8.orden =[NSNumber numberWithInt:10];
    imagen10Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10389.jpeg";
    imagen10Museo8.descripcion = @"Igualmente artículos que se pudieron rescatar del avión como las licencias que le permitían volar, una libreta que usaba como agenda y otros objetos personales como la máquina y loción de afeitar; además de trofeos y reconocimientos que le fueron otorgados en cada uno de sus viajes.";
    imagen10Museo8.museo = museo8;
    
    ImagenesMuseo *imagen11Museo8 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen11Museo8.orden =[NSNumber numberWithInt:11];
    imagen11Museo8.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/04/10388.jpeg";
    imagen11Museo8.descripcion = @"Es parte de esta valiosa muestra, una mascarilla fúnebre del rostro del piloto, hecha a base de yeso, y una carta enviada de la Presidencia de la República, con fecha del 22 de marzo de 1939, firmada por el presidente Lázaro Cárdenas, en la cual lo felicitaba por el vuelo que emprendió sin escala, desde la Ciudad de México hacia Chetumal, Quintana Roo, ya que marcó una nueva etapa que pondría de relieve el esfuerzo de los pilotos mexicanos y su competencia.";
    imagen11Museo8.museo = museo8;
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////--------------------------------MUSEO DE LA MONEDA------------------------------------//////////////////
    
    Museos *museo9 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo9.idMuseo = @"museo09";// debe ser unico
    museo9.nombre = @"Museo de la Moneda";
    museo9.imagenPrincipal = @"museoDeLaMoneda.png";
    museo9.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Una acción de suma trascendencia que contribuye a la reactivación del Centro Histórico de Torreón es la apertura de un espacio único dedicado a la difusión de nuestra historia y cultura, se trata del Museo de la Moneda, el primero en el norte de país, cabe resaltar que en México, únicamente en las ciudades de Toluca y Torreón cuentan museos numismáticos, es decir museos dedicados a la difusión de la historia a través de la moneda. <br/><br/> La exposición abarca un viaje a través de la historia de México, mostrando las primeras monedas acuñadas en la Nueva España en 1536, el Primer Imperio Con Agustín de Iturbide, Segundo Imperio con Maximiliano de Hasburgo, la Revolución Mexicana hasta la época actual, es decir en el Museo, el visitante podrá contemplar las que nos muestran más de 400 año de cambios sociales, económicos y políticos de nuestro país. <br/><br/> Edificio Municipal Centro Histórico (Antiguo Banxico) <br/><br/> La sucursal del Banco de México en Torreón, fue inaugurada el 1º de febrero de 1947. Su construcción duró dos años y fue proyectada por el ingeniero Gonzalo Garita. Se encargó de la cimentación y estructura de concreto armado, el arquitecto Jerónimo Gómez Robleda; de la albañilería y acabados la Constructora Lagunera del ingeniero José Bracho y el arquitecto Carlos Gómez Palacio. <br/><br/>  Su cimentación y estructura es de concreto armado y muros de relleno de tabique, sus fachadas están recubiertas de cantera de Durango y en sus muros interiores se utilizó mármol travertino de la región. <br/><br/>  El primero en el norte del país <br/><br/> El museo de la moneda, el primero en el norte del país, contribuye a la reactivación del Centro Histórico de Torreón, el Museo es un espacio dedicado a la difusión de nuestra historia y cultura, en la República Mexicana, únicamente en las ciudades de Toluca y Torreón cuentan museos numismáticos, es decir museos dedicados a la difusión de la historia a través de la moneda. <br/><br/>  La moneda más grande de México <br/><br/> La moneda más grande que se ha acuñado en México se exhibe actualmente en el Museo de la Moneda de Torreón. <br/><br/> Se trata de la Moneda Libertad de un kilogramo de plata pura de Ley .999, donado por el Banco de México, con acabado mate y un diámetro de 110 milímetros. <br/><br/> En el reverso muestra la victoria alada retomada del Monumento al Ángel de la Independencia, teniendo como fondo el paisaje de los volcanes Popocatépetl e Iztaccíhuatl. <br/><br/> Maravedies <br/><br/> Entre 1536 y 1538 se acuñaron en la Nueva España los maravedíes, monedas de cobre que fueron rechazadas por los nativos por su escaso valor y eran arrojados a las lagunas y arroyos. <br/><br/> ¿De donde viene el nombre del peso? <br/><br/> Antes de 1732, la moneda que se acuñaba en México no tenía una circunferencia uniforme. Algunos aprovechaban estas circunstancias para raspar los bordes de las piezas de plata, disminuyendo el valor de la moneda. <br/><br/> ¿Qué es la numismática? <br/><br/> La numismática es el estudio de las monedas, papel moneda y medallas antiguas y modernas, analizadas desde la perspectiva histórica e iconográfica y sus relaciones con la economía, geografía, política y arte del país donde fueron acuñadas. <br/><br/> Para que la moneda llegue a nuestras manos intervienen en el proceso: minería, ingeniería, química, metalurgia, economía, política y arte. <br/><br/> Servicios que ofrece el Museo: <br/><br/> *Visitas guiadas <br/><br/> Valuación Gratuita de Monedas. Sociedad Numismática de la Laguna A.C. <br/><br/> *Proyección Videos sobre: <br/><br/> -Historia de la moneda en México <br/> -Historia de Torreón a través de sus personajes <br/> -Historia del metal</div>";
    museo9.direccion = @"Edificio Municipal Centro Histórico, Av. Morelos 1217, Sótano.";
    museo9.horario = @"Martes a dominfo de 9:00 a 15:30 horas";
    museo9.telefono = @"749-1773";
    museo9.url360 = nil;
    museo9.urlInformacion = nil;
    museo9.numImagenes = [NSNumber numberWithInt:7];
    
    //=== IMAGENES ===//
    
    ImagenesMuseo *imagen1Museo9 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen1Museo9.orden =[NSNumber numberWithInt:1];
    imagen1Museo9.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2005/11/72288.jpeg";
    imagen1Museo9.descripcion = @"Ubicado en lo que un día fue la bóveda del Banco de México se inauguró el Museo de la Moneda, el primero en su tipo de todo el Norte del país.";
    imagen1Museo9.museo = museo9;
    
    ImagenesMuseo *imagen2Museo9 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen2Museo9.orden =[NSNumber numberWithInt:2];
    imagen2Museo9.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2005/11/72287.jpeg";
    imagen2Museo9.descripcion = @"Varios laguneros se reunieron en el recinto para conocer la bóveda y las exhibiciones con las que se iniciará esta etapa, donde por fin se pudo constatar el trabajo de la Sociedad Numismática de La Laguna, que convirtió la bóveda del antiguo Banco de México en un espacio único dedicado a la difusión de la historia y la cultura.";
    imagen2Museo9.museo = museo9;
    
    ImagenesMuseo *imagen3Museo9 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen3Museo9.orden =[NSNumber numberWithInt:3];
    imagen3Museo9.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2005/11/72286.jpeg";
    imagen3Museo9.descripcion = @"Actualmente la sociedad cuenta con alrededor de 300 miembros, entre ellos varios nacionales e internacionales de lugares como Estados Unidos, Cuba, Sudamérica, España, Alemania y otros lugares. Por lo pronto, los laguneros ya pueden disfrutar del Museo de la Moneda en esta ciudad y conocer la historia de México a través de la numismática. El horario de visita es de lunes a viernes, de 8:00 de la mañana a 3:00 de la tarde, con entrada libre.";
    imagen3Museo9.museo = museo9;
    
    ImagenesMuseo *imagen4Museo9 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen4Museo9.orden =[NSNumber numberWithInt:4];
    imagen4Museo9.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2005/11/72285.jpeg";
    imagen4Museo9.descripcion = @"Durante la ceremonia inaugural estuvo presente Marisa González, presidenta nacional de la Sociedad Numismática de México, quien llegó acompañada por Javier López Delerena, vicepresidente de la misma.";
    imagen4Museo9.museo = museo9;
    
    ImagenesMuseo *imagen5Museo9 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen5Museo9.orden =[NSNumber numberWithInt:5];
    imagen5Museo9.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2005/11/72284.jpeg";
    imagen5Museo9.descripcion = @"La invitada especial destacó la importancia de que existan estos espacios, “ya que en nuestro país tenemos 470 años de historia numismática y es muy triste que la gente no lo sepa y no lo pueda ver, en México sólo existe un museo numismático en Toluca, Estado de México, y ahora éste en Torreón”.";
    imagen5Museo9.museo = museo9;
    
    ImagenesMuseo *imagen6Museo9 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen6Museo9.orden =[NSNumber numberWithInt:6];
    imagen6Museo9.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2005/11/72283.jpeg";
    imagen6Museo9.descripcion = @"Agregó que lo interesantes es “que la gente conozca nuestra historia a través de la monedas, y un poquito involucrar a los chicos y a los jóvenes en lo que es la numismática, al coleccionismo de monedas, que aparte de que va uno coleccionado la historia en la palma de las manos, puede haber otras cosas como es el arte, como es el gran trabajo del grabado que se ha hecho a través del tiempo”.";
    imagen6Museo9.museo = museo9;
    
    ImagenesMuseo *imagen7Museo9 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen7Museo9.orden =[NSNumber numberWithInt:7];
    imagen7Museo9.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2005/11/72282.jpeg";
    imagen7Museo9.descripcion = @"Los puntos más importantes para evaluar una moneda, según Marisa González, son:  -La calidad de la moneda. -El estado en el que se encuentre. -El material con el que está hecha. -La época en la que fue elaborada. -La emisión que se hizo de esas monedas.  -Considerar todos los aspectos que le den valor agregado.";
    imagen7Museo9.museo = museo9;
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////--------------------------------MUSEO DEL FERROCARRIL------------------------------------//////////////////
    
    Museos *museo10 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo10.idMuseo = @"museo10";// debe ser unico
    museo10.nombre = @"Museo del Ferrocarril";
    museo10.imagenPrincipal = @"museoFerrocarril.png";
    museo10.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Torreón es una ciudad joven, ubicada en el semidesierto de México. Llegado a Torreón en 1883, el ferrocarril fue un elemento indispensable para detonar el progreso de la Comarca Lagunera. Por lo tanto, esta región tiene que concebirse completamente ligada con el ferrocarril. <br/><br/> El museo cuenta con: <br/><br/> * La locomotora de vapor 1140, que prestó sus servicios durante décadas para beneficio de muchos miles usuarios de Ferrocarriles Nacionales de México. <br/> * Una sala de exhibiciones que consta de: una maqueta de fantasía, equipada con trenes que hacen un atractivo recorrido; dos maquetas de las primeras estaciones ferroviarias de Torreón; instrumentos de trabajo que se empleaon el diversos departamentos de Ferrocarriles Nacionales de México, secuencias fotográficas que muestran tanto el desarrollo del ferrocarril en el mundo, así como instalaciones ferroviarias de la División Torreón; también hay fotos de la gente que hizo posible, aquí en nuestra Ciudad, el funcionamiento de tan importante empresa para estatal. <br/> * Un carro campamento, que reproduce el ambiente en que vivían los trabajadores y sus familias que recorrían los caminos de hierro. <br/> * Una fragua o taller de herrería, enque se fabricaban piezas y herrajes propios para la instalación correcta de las vías, así como para el reforzamiento de los carros del ferrocarril. <br/> * Un vagón de la ciencia, en donde se dan instrucciones al fascinante mundo de la ciencia. <br/><br/>  Colecciones principales: <br/><br/> 2 trenes a escala, estación de paso.</div>";
    museo10.direccion = @"Blvd. Revolución y C. Valez Carrillo.";
    museo10.horario = @"Abierto de Martes a Domingo de 10:00 am a 5:00 pm";
    museo10.telefono = @"712-2312";
    museo10.url360 = @"http://www.elsiglodetorreon.com.mx/files/recorridos/museoferrocarril/museoferrocarril.html";
    museo10.urlInformacion = nil;
    museo10.numImagenes = [NSNumber numberWithInt:8];
    
    //=== IMAGENES ===//
    
    ImagenesMuseo *imagen1Museo10 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen1Museo10.orden =[NSNumber numberWithInt:1];
    imagen1Museo10.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2004/11/46941.jpeg";
    imagen1Museo10.descripcion = @"Parece como si fuera ayer, cuando las primeras paladas de tierra se levantaban, dice don Ezequiel Romero, director del Museo del Ferrocarril. En su mente aún viven y vivirán los primeros intentos para que un importante proyecto para Torreón se concretara hace seis años.";
    imagen1Museo10.museo = museo10;
    
    ImagenesMuseo *imagen2Museo10 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen2Museo10.orden =[NSNumber numberWithInt:2];
    imagen2Museo10.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2004/11/46940.jpeg";
    imagen2Museo10.descripcion = @"Y es que como el desarrollo de la ciudad está vinculado con industrias ferroviarias -explica- y con el objetivo de rescatar la memoria y ofrecer a la ciudadanía un espacio de esparcimiento, se cristalizó en 1998 la restauración y acondicionamiento de las bodegas de Ferrocarriles Nacionales de México, para convertirlas en el Museo del Ferrocarril.";
    imagen2Museo10.museo = museo10;
    
    ImagenesMuseo *imagen3Museo10 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen3Museo10.orden =[NSNumber numberWithInt:3];
    imagen3Museo10.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2004/11/46939.jpeg";
    imagen3Museo10.descripcion = @"El museo celebra su sexto aniversario, por lo que el director de dicho recinto cultural hizo una atenta invitación al público lagunero a unirse a la celebración. También se festeja “el acto heroico de Jesús García Corona, quien es reconocido mundialmente por haber dado su vida para salvar el pueblo de Nacozari, Sonora”. Aunque este personaje nació en la ciudad de Hermosillo un 13 de noviembre de 1883, el poblado en el que murió en 1907 fue el que lo vio crecer y desarrollarse, primero en la Compañía Minera The Moctezuma Cooper Company y al poco tiempo, como un gran maquinista.";
    imagen3Museo10.museo = museo10;
    
    ImagenesMuseo *imagen4Museo10 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen4Museo10.orden =[NSNumber numberWithInt:4];
    imagen4Museo10.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2004/11/46938.jpeg";
    imagen4Museo10.descripcion = @"Para esta doble celebración, las actividades iniciaron con una peregrinación que salió de la antigua Estación de Ferrocarriles (ahora Cinart Pilar Rioja), ubicada en Prolongación Colón y concluyó con una ofrenda floral en el monumento al Héroe de Nacozari,que se encuentra en el edificio de la Sección 27, situado sobre el bulevar Revolución 669 Poniente. Después se trasladaron al Museo del Ferrocarril, ubicado sobre el bulevar Revolución, sin número, para dar inicio a un atractivo programa cultural apoyado por la Dirección Municipal de Cultura de Torreón.";
    imagen4Museo10.museo = museo10;
    
    ImagenesMuseo *imagen5Museo10 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen5Museo10.orden =[NSNumber numberWithInt:5];
    imagen5Museo10.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2004/11/46937.jpeg";
    imagen5Museo10.descripcion = @"En dicho evento participaron la Banda Infantil de Ciudad Lerdo ; por la tarde, el director Héctor David Ávila Ortiz al frente del Ballet Folklórico Neminiztli y también hubo música mexicana a cargo de María de Lourdes, Yasmín, Agustín Moreno, José Padilla y el Trío Los Diferentes.";
    imagen5Museo10.museo = museo10;
    
    ImagenesMuseo *imagen6Museo10 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen6Museo10.orden =[NSNumber numberWithInt:6];
    imagen6Museo10.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2004/11/46936.jpeg";
    imagen6Museo10.descripcion = @"La historia del Ferrocarril Central Mexicano en lo que a Torreón se refiere tuvo su inicio un 23 de septiembre de 1883, fecha en que las paralelas de acero llegaron y permitieron el impulso y progreso de la región agrícola, dedicada al monocultivo del algodón. Este medio de transporte ha sido muy importante para la ciudad, así como el agua para la desértica región, porque gracias a la llegada de los primeros pobladores con el paso del ferrocarril es que se formó Torreón, declarada como ciudad en 1907.";
    imagen6Museo10.museo = museo10;
    
    ImagenesMuseo *imagen7Museo10 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen7Museo10.orden =[NSNumber numberWithInt:7];
    imagen7Museo10.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2004/11/46935.jpeg";
    imagen7Museo10.descripcion = @"A seis años de apertura, el Museo del Ferrocarril ofrece al público los siguientes edificios y trenes. -EDIFICIO DE CARPINTERÍA: En 1938, este edificio albergó la carpintería de Ferrocarriles Nacionales en Torreón. Actualmente alberga una sala de exposición fotográfica, así como algunos planos y piezas de los diferentes departamentos de la antigua compañía. -EDIFICIO DE LA FRAGUA: Este espacio se levantó en 1907 y hasta 1992 fue sede del taller de fundición, en donde se fabricaban, moldeaban o reparaban diversas piezas indispensables para el rodaje de los carros. En esta sala se exhiben de momento, piezas encontradas bajo tierra y que son herramientas originales que usaban para el desempeño de su trabajo.";
    imagen7Museo10.museo = museo10;
    
    ImagenesMuseo *imagen8Museo10 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen8Museo10.orden =[NSNumber numberWithInt:8];
    imagen8Museo10.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2004/11/46934.jpeg";
    imagen8Museo10.descripcion = @"LA ARMONERA: En este lugar se encuentra una reproducción de una armonera (carretillero) con conexión a la vía. El edificio data de mediados del siglo pasado y fue restaurado con objetos de la segunda Estación de Torreón. -EL DEPARTAMENTO DE VÍA: En éste se exhiben herramientas que forman parte de la espina dorsal de todo el sistema ferroviario. Las vías en buenas condiciones, permiten a los trenes desplazarse con eficiencia y seguridad. -EL CABÚS: Aproximadamente data de los años 20 y era utilizado por las tripulaciones de los trenes de carga. -COCHE CAMPAMENTO: Esta pieza data de 1904, era utilizado como casa rodante por los empleados del Departamento de Vía. Cabe señalar, que un vagón lo habitaban dos familias y solamente el mayordomo de la cuadrilla era quien ocupaba un carro entero.";
    imagen8Museo10.museo = museo10;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////-----------------------------CANAL DE LA PERLA---------------------------------////////////////////////
    
    Museos *museo11 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo11.idMuseo = @"museo11";// debe ser unico
    museo11.nombre = @"Canal de la Perla";
    museo11.imagenPrincipal = @"canalDeLaPerla.png";
    museo11.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Esta obra de ingeniería, vestigio de la historia de La Laguna, cuenta con muros de mampostería de noventa centímetros de espesor, un tramado de ladrillo en tres capas tipo bóveda franciscana, mide entre cuatro y seis metros de altura y 4.50 de ancho. <br/><br/> Cuenta con 4 entradas: <br/><br/> * Calle Rodríguez esquina Av. Hidalgo <br/> * Calle Cepeda esquina Av. Juárez <br/> * Calle Valdés Carrillo esquina Av. Juárez (Plaza de Armas) <br/> * Calle Zaragoza esquina Av. Morelos <br/><br/> El Canal de la Perla es un viejo acueducto, olvidado durante años y oculto. De acuerdo con revistas turísticas, desde un principio se conceptuó como un corredor para la instalación de restaurantes, librerías, galerías y tiendas artesanales, todo en una atmósfera de cultura en la gran bóveda estilo franciscano. <br/><br/> Los elementos arqueológicos que se han encontrado en el Canal de la Perla son diversos y de distintos materiales, barro, vidrio, metal y hueso, entre los más abundantes. Hay también cosas de plástico, cuero y papel. <br/><br/> Son básicamente, botellas, envases de vidrio que ostentan inscripciones de las marcas de empresas que fabricaban refrescos a principios de siglo, así como tradicionales boticas que tuvieron presencia importante entonces. <br/><br/> Para establecer el valor histórico y la temporalidad de los objetos encontrados, se han hecho consultas en Archivos del Instituto de Documentación y Centro Histórico Eduardo Guerra, igualmente el Archivo Histórico de la Universidad Iberoamericana Unidad Laguna. <br/><br/>  El paseo <br/><br/> La longitud del acueducto del Canal de la Perla que ya fue rehabilitado y actualmente sirve de paseo cultural es de 420 metros. <br/><br/> -Abarca desde el crucero de la calle Zaragoza y avenida Morelos hasta la calle Cepeda y avenida Juárez, pasando por la Plaza de Armas, lugar donde se encuentra otro acceso en la Juárez y Valdez Carrillo. <br/><br/> -La idea original del proyecto contemplaba el conectar este canal con el mercado Juárez y la parte de arriba donde se proyectaba crear un estacionamiento, pero hasta el momento no se ha definido si se realizará. <br/><br/> CRONOLOGÍA DEL DESCUBRIMIENTO <br/><br/> 1.- A principios del mes de marzo de 2003, en el centro de la ciudad, precisamente en la confluencia de las calles Rodríguez y avenida Hidalgo, de manera accidental durante la construcción de los cimientos de un nuevo inmueble, se produjo un profundo hundimiento de tierra que fue sorprendente por ser del tamaño de un camión de tres toneladas. <br/> 2.- A mediados de ese mismo mes y luego de identificar ese aparente túnel como parte del Canal de la Perla, la Dirección de Obras Públicas presentó un proyecto de rescate y conservación de lo que en un principio se esbozó como un “Corredor Histórico Cultural del Canal de la Perla”, con la idea de limpiar de manera total y luego acondicionar por principio, un tramo de 300 metros a fin de convertirlo en un sitio de interés turístico en pleno centro de Torreón. <br/> 3.- A finales de ese mes de marzo, se concretó la visita de representantes del Instituto Nacional de Antropología e Historia (INAH) Coahuila: Fueron las Secciones de Arqueología, así como la Dirección de Salvamento Arqueológico y la de Monumentos Históricos, que se abocaron de inmediato a la tarea de eliminar un dictamen preliminar. <br/> Como resultado de esto se suspende la obra de inmediato, al encontrarse en el proceso de desazolve, un relleno con depósitos, producto de desechos culturales humanos, así como otros naturales. Eso determinó la realización de un rescate de arqueología histórica. <br/> 4.- En junio 26, pese a una gran cantidad de área por explorar y acondicionar, se realizó la primera visita pública al Canal de la Perla, organizada por la Dirección de Obras Públicas y supervisada por el INAH. <br/> 5.- Diciembre de 2003, ya se desazolvaron 500 metros lineales hasta la calle Zaragoza a la altura de la avenida Morelos e iniciará en enero el proceso de restauración de los interiores en lo que comprende un ambicioso proyecto de ingeniería para dotarlo de sistema de drenaje, agua potable, alumbrado público y restauración total de paredes y el embovedado. <br/><br/> FUENTE: Instituto Nacional de Antropología e Historia, (INAH) Coahuila <br/><br/> FUENTE: Investigación de El Siglo de Torreón</div>";
    museo10.direccion = @"Blvd. Revolución y C. Valez Carrillo.";
    museo11.direccion = @"1.- C. Rodríguez esquina Av. Hidalgo, 2.-C. Cepeda esquina Av. Juárez, 3.- C.Valdés Carrillo esquina Av. Juárez y 4.- C. Zaragoza esquina Av. Morelos.";
    museo11.horario = @"Martes a domingo de 10:00 a 20:00 horas";
    museo11.telefono = nil;
    museo11.url360 = nil;
    museo11.urlInformacion = nil;
    museo11.numImagenes = [NSNumber numberWithInt:0];
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////--------------------------------MUSEO CASA DEL CERRO------------------------------------//////////////////
    
    Museos *museo12 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo12.idMuseo = @"museo12";// debe ser unico
    museo12.nombre = @"Museo Casa del Cerro";
    museo12.imagenPrincipal = @"casaDelCerro.png";
    museo12.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">La Casa del Cerro, es considerada como un monumento histórico de la ciudad, porque precisamente en ese sector del Mercado Alianza nació lo que en principio fue la Villa del Torreón. <br/><br/> La Casa del Cerro es una construcción realizada por el Ingeniero Federico Wulff para su familia de 7 integrantes; se empieza a construir en el año de 1901 durante el cual, se realizan excavaciones de la noria de piedra en busca de agua potable, encontrando solo agua salitrosa, que es utilizada para regar los jardines y abastecer la alberca. <br/><br/> Un año después se inicia la edificación de un \"modificado castillo alemán de piedra gris\" hecho de cantera seleccionada y traída de Durango para su fachada. Es una casa habitación con 15 piezas y un sótano; canasta de lavandería que funciona a través de los cuartos de baño de la primera planta a la segunda. Es una de las primeras casas en la ciudad cuyas recamaras principales cuentan con guardarropas y lavamanos. Su edificación se realizó entre 1904 y 1905, y es a partir de 1993, uno de los más importantes museos de la región. <br/><br/> Sus pisos en la mayoría de las salas son de madera de encino y pino en el interior, y en el exterior, azulejos italianos. Al pie del chalet se construye la oficina de su dueño, con una sala de recepción en la planta baja; la segunda planta era utilizada como cuartos de trabajos. <br/><br/>  Entusiastas laguneros forman un patronato para restaurar y rehabilitar el inmueble que actualmente es el Museo Histórico de la Ciudad Casa del Cerro, que narra en sus distintas salas el desarrollo de nuestra ciudad y muestra el trabajo de artistas plásticos laguneros en su galería de arte contemporáneo y pinacoteca de arte permanente anexas, cuenta además, con un teatro al aire libre donde se llevan a cabo distintos eventos, desde la presentación de libros hasta conciertos de distinta índole, así como un jardín de cactáceas con las principales variedades de nuestra región.</div>";
    museo12.direccion = @"Calz. Industrial s/n, Sector Alianza.";
    museo12.horario = @"Abierto de Martes a Domingo de 10:00 am a 4:00 pm";
    museo12.telefono = @"716-5072";
    museo12.url360 = nil;
    museo12.urlInformacion = nil;
    museo12.numImagenes = [NSNumber numberWithInt:12];
    
    //=== IMAGENES ===//
    
    ImagenesMuseo *imagen1Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen1Museo12.orden =[NSNumber numberWithInt:1];
    imagen1Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11775.jpeg";
    imagen1Museo12.descripcion = @"La Casa del Cerro nació en el año de 1905, dos años antes de que la Villa de Torreón fuera elevada a la categoría de ciudad, el día 15 de septiembre de 1907.";
    imagen1Museo12.museo = museo12;
    
    ImagenesMuseo *imagen2Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen2Museo12.orden =[NSNumber numberWithInt:2];
    imagen2Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11774.jpeg";
    imagen2Museo12.descripcion = @"El ingeniero Federico Wulff, quien era de espíritu romántico y sentimental fue quien la construyó y le dio la forma arquitectónica de castillo alemán.";
    imagen2Museo12.museo = museo12;
    
    ImagenesMuseo *imagen3Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen3Museo12.orden =[NSNumber numberWithInt:3];
    imagen3Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11773.jpeg";
    imagen3Museo12.descripcion = @"La Casa del Cerro es cubierta por bellos atardeceres laguneros y fue construida tomando en cuenta los vientos dominantes y la posición del sol; es un edificio fresco en verano y tibio en invierno, desde su nacimiento ha visto nacer y desaparecer varios lugares, calles, costumbres y formas de vida, la casa sufrió varias heridas durante la revolución, después fue restaurada y ahora se mantiene con fuerza y vitalidad como un gran monumento histórico.";
    imagen3Museo12.museo = museo12;
    
    ImagenesMuseo *imagen4Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen4Museo12.orden =[NSNumber numberWithInt:4];
    imagen4Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11772.jpeg";
    imagen4Museo12.descripcion = @"Elaborada en cantera de Durango , en su interior se nota el buen gusto que tenían sus fundadores, ya que todos sus muebles y objetos de decoración que se encontraban en dicho lugar fueron muy bien pensados.";
    imagen4Museo12.museo = museo12;
    
    ImagenesMuseo *imagen5Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen5Museo12.orden =[NSNumber numberWithInt:5];
    imagen5Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11771.jpeg";
    imagen5Museo12.descripcion = @"El ingeniero Federico Wulff elaboró el primer plano de la ciudad por petición de don Andrés Eppen en 1887, él tenía su lugar de residencia en Lerdo, Durango; ya que apreciaba mucho la temperatura de esa ciudad.";
    imagen5Museo12.museo = museo12;
    
    ImagenesMuseo *imagen6Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen6Museo12.orden =[NSNumber numberWithInt:6];
    imagen6Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11770.jpeg";
    imagen6Museo12.descripcion = @"Viendo la posibilidad de construir una casa en el Cerro de las Noas, adquirió de don Julio Doucet terreno suficiente para sus propósitos, entre ellos construirla en lo alto para observar desde su casa el cruce de las vías que originaron el desarrollo de Torreón.";
    imagen6Museo12.museo = museo12;
    
    ImagenesMuseo *imagen7Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen7Museo12.orden =[NSNumber numberWithInt:7];
    imagen7Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11769.jpeg";
    imagen7Museo12.descripcion = @"Su casa al parecer fue construida entre los años 1904 y 1905, constaba de 17 piezas y un sótano; un déposito de agua construido de piedra, una casa anexa al chalet compuesta de tres piezas de ladrillo y una bodega.";
    imagen7Museo12.museo = museo12;
    
    ImagenesMuseo *imagen8Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen8Museo12.orden =[NSNumber numberWithInt:8];
    imagen8Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11768.jpeg";
    imagen8Museo12.descripcion = @"El señor Wulff contrajo matrimonio con Herlinda Gras, después de un tiempo vendió su casa a su hijo, un soltero, comerciante y ciudadano norteamericano, pasaron varios años y el 6 de febrero de 1924 vende su casa a don Celso Garza por un precio de 19 mil 500 dólares, pasando en el año de 1932 a manos de doña María del Refugio Martínez viuda de Morales.";
    imagen8Museo12.museo = museo12;
    
    ImagenesMuseo *imagen9Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen9Museo12.orden =[NSNumber numberWithInt:9];
    imagen9Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11767.jpeg";
    imagen9Museo12.descripcion = @"Existen muchos espacios de gran interés dentro de la casa y además están muy bien explicados.";
    imagen9Museo12.museo = museo12;
    
    ImagenesMuseo *imagen10Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen10Museo12.orden =[NSNumber numberWithInt:10];
    imagen10Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11766.jpeg";
    imagen10Museo12.descripcion = @"La Casa del Cerro, es considerada como un monumento histórico de la ciudad, porque precisamente en ese sector del Mercado Alianza nació lo que en principio fue la Villa del Torreón.";
    imagen10Museo12.museo = museo12;
    
    ImagenesMuseo *imagen11Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen11Museo12.orden =[NSNumber numberWithInt:11];
    imagen11Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11765.jpeg";
    imagen11Museo12.descripcion = @"Entusiastas laguneros forman un patronato para restaurar y rehabilitar el inmueble que actualmente es el Museo Histórico de la Ciudad Casa del Cerro";
    imagen11Museo12.museo = museo12;
    
    ImagenesMuseo *imagen12Museo12 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen12Museo12.orden =[NSNumber numberWithInt:12];
    imagen12Museo12.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11764.jpeg";
    imagen12Museo12.descripcion = @"Horarios de servicio: Abierto de Martes a Domingo de 10:00 am a 4:00 pm.";
    imagen12Museo12.museo = museo12;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////--------------------------------MUSEO AROCENA------------------------------------//////////////////
    
    Museos *museo13 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo13.idMuseo = @"museo13";// debe ser unico
    museo13.nombre = @"Museo Arocena";
    museo13.imagenPrincipal = @"museoArocena.png";
    museo13.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">El Museo Arocena abre sus puertas a partir del 27 de agosto del 2007 con la misión de brindar a la comunidad lagunera y a sus visitantes, un moderno recinto museístico orgulloso de mostrar una importante selección de obras artísticas de valor universal, además de interesantes huellas de la historia regional. <br/><br/> La inauguración del Museo Arocena en Torreón Coahuila, culmina la primera etapa del proyecto cultural de la Fundación E. Arocena <br/><br/> El antiguo edificio del Casino de La Laguna, ha sido restaurado y rehabilitado como recinto del Museo. El ubicarlo en este bello inmueble brinda una aportación al rescate urbano del centro de Torreón. <br/><br/> El área con que se inaugura el museo abarca cinco mil metros cuadrados en cuatro plantas. La entrada principal es a través de una atractiva plaza de usos múltiples. El museo cuenta con varias salas destinadas a las exposiciones permanentes, además de un gran espacio para exhibiciones temporales. <br/><br/> Se ofrecerá adicionalmente el servicio de una biblioteca especializada en arte e historia, cafetería, tienda con venta de libros, revistas y otros artículos y un auditorio con capacidad para más de 120 espectadores. <br/><br/> Mediante la organización de talleres, cursos, conferencias y recorridos guiados se pretende complementar la visita a las salas del museo. La participación de la comunidad en el proyecto está garantizada a través de los programas de servicio social, voluntariado y la Asociación de Amigos del Museo. <br/><br/> La riqueza y variedad de la colección la consolidan como una de las más importantes del país. Durante más de 100 años, la familia Arocena ha logrado reunir invaluables objetos artísticos que fueron otorgados en custodia a la Fundación, asegurándose así la creación y permanencia del Museo. <br/><br/> A través de este extraordinario acervo es posible apreciar la evolución técnica y estilística del arte y de las artes aplicadas en México y Europa, así como sus puntos de divergencia, encuentro e influencias. El recorrido permanente de arte abarca 300 magníficas obras en dos exhibiciones principales: El Arte del México Virreinal y El Arte Europeo. <br/><br/> En la pinacoteca novohispana se exhiben importantes retratos como Sor María Margarita Marcelina del pintor Miguel Cabrera (1695-1768) y obras de temática religiosa como la Virgen Dolorosa , hermosa pintura sobre lámina con marco repujado de plata y el óleo del siglo XVIII titulado Ecce Homo. El gusto barroco por los símbolos y alegorías se observa en la estupenda pintura Alegoría de la Suma Teológica de Santo Tomás de Aquino también del XVIII. <br/><br/> El visitante podrá apreciar la sección de escultura hispano-oriental en plata y marfil, la amplia selección de mobiliario con decoración en marquetería y taracea, además de ejemplos de mayólica y cerámica de Compañía de Indias. Posiblemente la sección más destacada del arte virreinal sea la dedicada a la platería civil y religiosa. <br/><br/> Las obras europeas provienen principalmente de España y datan de los siglos XIV al XIX. El recorrido sigue la evolución de estilos desde el gótico, renacentista, manierista, barroco hasta el neoclásico. En la primera parte pueden apreciarse pinturas sobre tabla hispano flamencas de los siglos XIV al XVI. Del siglo de oro español se exhiben la Virgen de la Inmaculada Concepción, obra del sevillano Bartolomé Esteban Murillo (1617–1682) y San Francisco de Asís frente al crucifijo de la capilla de San Damián, atribuido a Francisco de Zurbarán (1598-1664). <br/><br/> La historia nacional y regional ha encontrado lugar en el Museo Arocena a través de dos exhibiciones: México en el Tiempo y Crónica de la Laguna, ambas ubicadas en la última planta del edificio. Este guión se complementa mediante el apoyo de distintos recursos museográficos como videos e interactivos sobre cada tema. <br/><br/> Durante la primera etapa del museo, la sala de exposiciones temporales albergará una selección de obras contemporáneas, parte de una colección privada, producidas en México entre los años 1980 y 2006. <br/><br/> Los visitantes podrán apreciar obras de diversos estilos y corrientes de jóvenes artistas mexicanos o extranjeros radicados en nuestro país. <br/><br/> El origen y continuidad de las instituciones museísticas ha dependido de su estratégica relación con el coleccionismo y el mecenazgo. El Museo Arocena cuenta con un patronato que se ha dado a la tarea de implementar una campaña financiera para la realización de esta magna obra. En él colaboran desinteresadamente miembros de la comunidad cultural, empresarial y gubernamental. <br/><br/> Gracias a esta red de colaboración entre distintos sectores sociales y la Fundación E. Arocena será posible lograr, en una segunda etapa del proyecto, el rescate de dos edificios históricos colindantes al Casino de la Laguna: el Edificio Russek que data de 1907 y el Edificio Arocena edificado en 1920. Estos inmuebles serán rehabilitados para ofrecer más áreas de exhibición temporal y permanente, así como otros servicios relacionados con el Museo Arocena.</div>";
    museo13.direccion = @"Calle Cepeda No. 370.";
    museo13.horario = @"Martes a Domingos de 10:00 am a 6:00 pm; Jueves de 10:00 am a 8:00 pm";
    museo13.telefono = @"716-2072";
    museo13.url360 = nil;
    museo13.urlInformacion = nil;
    museo13.numImagenes = [NSNumber numberWithInt:14];
    
    //=== IMAGENES ===//
    
    ImagenesMuseo *imagen1Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen1Museo13.orden =[NSNumber numberWithInt:1];
    imagen1Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182692.jpeg";
    imagen1Museo13.descripcion = @"El Museo Arocena abre sus puertas a partir del 27 de agosto del 2007 con la misión de brindar a la comunidad lagunera y a sus visitantes, un moderno recinto museístico orgulloso de mostrar una importante selección de obras artísticas de valor universal, además de interesantes huellas de la historia regional.";
    imagen1Museo13.museo = museo13;
    
    ImagenesMuseo *imagen2Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen2Museo13.orden =[NSNumber numberWithInt:2];
    imagen2Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182691.jpeg";
    imagen2Museo13.descripcion = @"El área con que se inaugura el museo abarca cinco mil metros cuadrados en cuatro plantas.";
    imagen2Museo13.museo = museo13;
    
    ImagenesMuseo *imagen3Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen3Museo13.orden =[NSNumber numberWithInt:3];
    imagen3Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182690.jpeg";
    imagen3Museo13.descripcion = @"En el museo se pueden encontrar distimtas obras del Renacimiento.";
    imagen3Museo13.museo = museo13;
    
    ImagenesMuseo *imagen4Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen4Museo13.orden =[NSNumber numberWithInt:4];
    imagen4Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182689.jpeg";
    imagen4Museo13.descripcion = @"El museo cuenta con varias salas destinadas a las exposiciones permanentes.";
    imagen4Museo13.museo = museo13;
    
    ImagenesMuseo *imagen5Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen5Museo13.orden =[NSNumber numberWithInt:5];
    imagen5Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182688.jpeg";
    imagen5Museo13.descripcion = @"El museo alberga pinturas, mobiliaria y objetos religiosos.";
    imagen5Museo13.museo = museo13;
    
    ImagenesMuseo *imagen6Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen6Museo13.orden =[NSNumber numberWithInt:6];
    imagen6Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182687.jpeg";
    imagen6Museo13.descripcion = @"En el museo Arocena se encuentra una sala permanente sobre el Arte Virreinal Mexicano.";
    imagen6Museo13.museo = museo13;
    
    ImagenesMuseo *imagen7Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen7Museo13.orden =[NSNumber numberWithInt:7];
    imagen7Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182686.jpeg";
    imagen7Museo13.descripcion = @"Se puede apreciar la evolución del arte en México y Europa por medio de sus obras.";
    imagen7Museo13.museo = museo13;
    
    ImagenesMuseo *imagen8Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen8Museo13.orden =[NSNumber numberWithInt:8];
    imagen8Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182685.jpeg";
    imagen8Museo13.descripcion = @"El Museo Arocena cuenta también con exposiciones de la historia de la comarca lagunera.";
    imagen8Museo13.museo = museo13;
    
    ImagenesMuseo *imagen9Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen9Museo13.orden =[NSNumber numberWithInt:9];
    imagen9Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182684.jpeg";
    imagen9Museo13.descripcion = @"Los visitantes pueden conocer la historia y caracteristicas de la región.";
    imagen9Museo13.museo = museo13;
    
    ImagenesMuseo *imagen10Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen10Museo13.orden =[NSNumber numberWithInt:10];
    imagen10Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182683.jpeg";
    imagen10Museo13.descripcion = @"El antiguo edificio del Casino de La Laguna, ha sido restaurado y rehabilitado como recinto del Museo.";
    imagen10Museo13.museo = museo13;
    
    ImagenesMuseo *imagen11Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen11Museo13.orden =[NSNumber numberWithInt:11];
    imagen11Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182682.jpeg";
    imagen11Museo13.descripcion = @"En el museo tambien se puede dar un recorrido por la Casa Histórica Arocena.";
    imagen11Museo13.museo = museo13;
    
    ImagenesMuseo *imagen12Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen12Museo13.orden =[NSNumber numberWithInt:12];
    imagen12Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182681.jpeg";
    imagen12Museo13.descripcion = @"La Casa Histórica Arocena cuenta con una colección de 245 objetos restaurados.";
    imagen12Museo13.museo = museo13;
    
    ImagenesMuseo *imagen13Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen13Museo13.orden =[NSNumber numberWithInt:13];
    imagen13Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182680.jpeg";
    imagen13Museo13.descripcion = @"Los visitantes pueden viajar en el tiempo al visitar La Casa Histórica Arocena.";
    imagen13Museo13.museo = museo13;
    
    ImagenesMuseo *imagen14Museo13 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen14Museo13.orden =[NSNumber numberWithInt:14];
    imagen14Museo13.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2010/09/182679.jpeg";
    imagen14Museo13.descripcion = @"Tras dos años de trabajo de investigación y restauración la Casa Histórica Arocena abrió sus puertas el 04 de marzo de 2010.";
    imagen14Museo13.museo = museo13;
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////-----------------------------MUSEO DE PALEONTOLOGIA---------------------------------////////////////////////
    
    Museos *museo14 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo14.idMuseo = @"museo14";// debe ser unico
    museo14.nombre = @"Museo de Paleontología";
    museo14.imagenPrincipal = @"";
    museo14.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">Ubicado en pleno centro de la ciudad de Torreón, Coahuila por la Avenida Juárez, entre las calles Leona Vicario e Ildefonso Fuentes, exhibe moluscos, artrópodos, equinodermos, cordados. <br/><br/> El museo posee una vasta y variada colección de piezas de fósiles marinos entre los que se incluyen amonites, almejas, ostras, dientes de tiburón, dientes petrificados, belemites, baculites y trilobites. <br/><br/> De las regiones desérticas de México se han colectado especímenes de fósiles de animales, huesos de dinosaurio y mamut, caparazones de tortuga, vegetales petrificados de maderas y frutos. <br/><br/> También se exhiben piezas de material antropológico correspondiente a las tribus propias de la región como: puntas de flechas, morteros y metates, nasas, cuernos de venado, petroglifos. <br/><br/> Colecciones principales: <br/><br/> Fósiles marinos, huesos de dinosaurio y mamut, caparazones de tortuga, puntas de flechas, petroglifos.</div>";
    museo14.direccion = @"Av. Juárez 580";
    museo14.horario = @"Martes a domingo de 10:00 am a 6:00 pm";
    museo14.telefono = @"713-9545";
    museo14.url360 = nil;
    museo14.urlInformacion = nil;
    museo14.numImagenes = [NSNumber numberWithInt:0];
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////--------------------------------MUSEO DE REGIONAL DE LA LAGUNA------------------------------------//////////////////
    
    Museos *museo15 =[NSEntityDescription insertNewObjectForEntityForName:@"Museos" inManagedObjectContext:_managedObjectContext];
    museo15.idMuseo = @"museo15";// debe ser unico
    museo15.nombre = @"Museo de Regional de la Laguna";
    museo15.imagenPrincipal = @"museoRegional.png";
    museo15.descripcion = @"</div><span style=\"font-family:'HelveticaNeue-CondensedBold'; color:#000000;\">En él se presentan grandes exposiciones de todos los géneros, desde pictóricas hasta relativas a la historia del país. <br/><br/> Su carácter antropológico no lo limita a llevar a cabo presentaciones históricas, sino también contemporáneas. Su diseño es moderno y funcional, con grandes salas de exposiciones y bellos jardines que adornan su alrededor. <br/><br/> Ubicado en el Bosque Venustiano Carranza, este museo es ampliamente visitado por los estudiantes de la región. El Museo Regional de La Laguna es una de las más bellas piezas culturales de Torreón. <br/><br/> Colecciones principales: <br/><br/> Objetos de la zona ocupadas por las tribus lagunera, objetos de las culturas del área mesoamericana y de diferentes culturas. <br/><br/> El primero de enero de 1973 se colocó la primera piedra del Museo Regional de La Laguna, ubicado en los interiores del Bosque Venustiano Carranza. El 22 de noviembre de 1976 se abrió al público. En 1999 se remodeló extensamente tanto sus salas de exposicón que fueron empleadas como nuevos espacios que se agregaron. <br/><br/> Actualemente, el museo cuenta con biblioteca, librería, auditorio con capacidad para 200 personas, cafetería, sanitarios, recepción y guardarropa, además cuenta con servicios educativos donde se ofrecen talleres, visitas guiadas, conferencias y se atiende al público en general. <br/><br/>  El Museo Regional de La Laguna se encuentra ubicado en la parte sur del Bosque Venustiano Carranza. Cuenta con colecciones permanentes que se encuentran en cuatro salas: <br/><br/> * Sala de Arqueología Regional: Se muestran objetos de la zona ocupadas por las tribus laguneras. <br/>< * Sala Mesoamericana: Contiene objetos de las culturas del área mesoamericana. <br/> * Sala Lucio Lagos: Muestra objetos que fueron coleccionados por el Sr. Lagos durante toda su vida y que son objetos de las diferentes culturas de Mesoamérica. <br/> * Sala de Etnografía Mexicana: Donde se muestra la vestimenta y objetos de los diferentes grupos etnicos del país.</div>";
    museo15.direccion = @"Av. Juárez 1300 Ote. (Interiores del Bosque Venustiano Carranza).";
    museo15.horario = @"Martes a Domingos de 10:00 am a 6:30 pm";
    museo15.telefono = @"716-2072";
    museo15.url360 = nil;
    museo15.urlInformacion = nil;
    museo15.numImagenes = [NSNumber numberWithInt:14];
    
    //=== IMAGENES ===//
    
    ImagenesMuseo *imagen1Museo15 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen1Museo15.orden =[NSNumber numberWithInt:1];
    imagen1Museo15.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11761.jpeg";
    imagen1Museo15.descripcion = @"El Museo Regional de la Laguna, fundado en 1976, es una entidad federal dependiente del Instituto Nacional de Antropología e Historia, que conserva, investiga y difunde el patrimonio cultural de la región.";
    imagen1Museo15.museo = museo15;
    
    ImagenesMuseo *imagen2Museo15 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen2Museo15.orden =[NSNumber numberWithInt:2];
    imagen2Museo15.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11760.jpeg";
    imagen2Museo15.descripcion = @"El museo cuenta con cuatro salas de exposición permanentes. 1.- Sala de Arqueología Regional: se muestran objetos de tribus laguneras que ocparon la zona.";
    imagen2Museo15.museo = museo15;
    
    ImagenesMuseo *imagen3Museo15 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen3Museo15.orden =[NSNumber numberWithInt:3];
    imagen3Museo15.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11759.jpeg";
    imagen3Museo15.descripcion = @"2.- Sala Mesoamérica: Contiene objetos de las culturas del área de Mesoamérica.";
    imagen3Museo15.museo = museo15;
    
    ImagenesMuseo *imagen4Museo15 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen4Museo15.orden =[NSNumber numberWithInt:4];
    imagen4Museo15.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11758.jpeg";
    imagen4Museo15.descripcion = @"3.- Sala Licio Lagos: Muestra los objetos que fueron coleccionados por el Sr. Lagos, de las culturas mesoaméricanas, durante su vida.";
    imagen4Museo15.museo = museo15;
    
    ImagenesMuseo *imagen5Museo15 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen5Museo15.orden =[NSNumber numberWithInt:5];
    imagen5Museo15.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11757.jpeg";
    imagen5Museo15.descripcion = @"4.- Sala de Etnografía Mexicana: Se muestran los diferentes grupos étnicos del país.";
    imagen5Museo15.museo = museo15;
    
    ImagenesMuseo *imagen6Museo15 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen6Museo15.orden =[NSNumber numberWithInt:6];
    imagen6Museo15.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11756.jpeg";
    imagen6Museo15.descripcion = @"También cuenta con una sala de exposiciones temporales, auditorio para 200 personas, librería, biblioteca con más de 2000 títulos, aula de servicios educativos, cafetería y oficinas administrativas.";
    imagen6Museo15.museo = museo15;
    
    ImagenesMuseo *imagen7Museo15 = [NSEntityDescription insertNewObjectForEntityForName:@"ImagenesMuseo" inManagedObjectContext:_managedObjectContext];
    imagen7Museo15.orden =[NSNumber numberWithInt:7];
    imagen7Museo15.nombre = @"http://media22.elsiglodetorreon.com.mx/g/2003/05/11755.jpeg";
    imagen7Museo15.descripcion = @"El Museo Regional de la Laguna pone al alcance una exhibición de quienes han sido y como vivían los laguneros en tiempos remotos. Pero también debe de hablar de quienes son en el presente y quiza deje entrever quienes puedan llegar a ser en un futuro.";
    imagen7Museo15.museo = museo15;
    
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////// I G L E S I A S ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    #pragma mark - IGLESIAS
    
    NSEntityDescription *entityIglesias = [NSEntityDescription entityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    [fetchRequest setEntity:entityIglesias];

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////--------------------------------IGLESIA 1------------------------------------///////////////////////
    
    Iglesias *iglesia1 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia1.tipo = @"Oficina";
    iglesia1.nombre = @"Oficinas de la Diócesis de Torreón";
    iglesia1.direccion = @"Av. Morelos #46 Pte. 27000";
    iglesia1.ciudad = @"Torreón, Coah.";
    iglesia1.telefono = @"(871) 7-12-30-43";
    iglesia1.fax = @"(871) 7-12-52-44";
    iglesia1.email = @"diocesistorr@prodigy.net.mx";
    iglesia1.capellan = nil;
    iglesia1.fiesta_patronal = nil;
    iglesia1.erigida = nil;
    iglesia1.parroco = nil;
    iglesia1.correspondencia = nil;
    
    Iglesias *iglesia2 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia2.tipo = @"Capilla";
    iglesia2.nombre = @"Capilla Beato Miguel Agustín Pro";
    iglesia2.direccion = @"Puerto Escondido Nº 4330 Col. Nueva California 27060";
    iglesia2.ciudad = @"Torreón, Coah.";
    iglesia2.telefono = @"720-3050";
    iglesia2.fax = nil;
    iglesia2.email = @"PP. Compañía de Jesús (Jesuitas)";
    iglesia2.capellan = nil;
    iglesia2.fiesta_patronal = @"23 de noviembre";
    iglesia2.erigida = nil;
    iglesia2.parroco = nil;
    iglesia2.correspondencia = nil;
    
    Iglesias *iglesia3 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia3.tipo = @"Capilla";
    iglesia3.nombre = @"Capilla La Divina Providencia";
    iglesia3.direccion = @"Prolongación Treviño Nº 1326 Pte. 27150";
    iglesia3.ciudad = @"Torreón, Coah.";
    iglesia3.telefono = @"716-3401";
    iglesia3.fax = nil;
    iglesia3.email = nil;
    iglesia3.capellan = @"Pbro. Miguel Ángel Cervantes Cepeda";
    iglesia3.fiesta_patronal = @"2 de junio";
    iglesia3.erigida = @"25 de mayo de 1997";
    iglesia3.parroco = nil;
    iglesia3.correspondencia = nil;
    
    Iglesias *iglesia4 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia4.tipo = @"Capilla";
    iglesia4.nombre = @"Capilla La Resurrección del Señor (Centro Saulo)";
    iglesia4.direccion = @"Blvd. Rodríguez Triana y Blvd. Las Fuentes";
    iglesia4.ciudad = @"Torreón, Coah.";
    iglesia4.telefono = @"720-0080 y 720-0110";
    iglesia4.fax = nil;
    iglesia4.email = nil;
    iglesia4.capellan = @"Pbro. Lic. Luis Servando Orozco Rodríguez Adscrito Pbro. Arturo Ramírez Carpinteyro";
    iglesia4.fiesta_patronal = @"Domingo de Pascua";
    iglesia4.erigida = nil;
    iglesia4.parroco = nil;
    iglesia4.correspondencia = nil;
    
    Iglesias *iglesia5 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia5.tipo = @"Capilla";
    iglesia5.nombre = @"Capilla La Virgen Maria de la Medalla Milagrosa";
    iglesia5.direccion = @"Rubén Darío y Miguel de Unamuno Res. El Fresno 27018";
    iglesia5.ciudad = @"Torreón, Coah.";
    iglesia5.telefono = @" 750-9160";
    iglesia5.fax = nil;
    iglesia5.email = nil;
    iglesia5.capellan = @"Pbro. Carlos Martínez Sada";
    iglesia5.fiesta_patronal = @"27 de noviembre";
    iglesia5.erigida = nil;
    iglesia5.parroco = nil;
    iglesia5.correspondencia = nil;
    
    Iglesias *iglesia6 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia6.tipo = @"Capilla";
    iglesia6.nombre = @"Capilla De Nuestra Señora de Guadalupe (La Guadalupana)";
    iglesia6.direccion = @"Calle 19 Nº 789 Nte. 27000";
    iglesia6.ciudad = @"Torreón, Coah.";
    iglesia6.telefono = @"717-7708 y 713-8851";
    iglesia6.fax = nil;
    iglesia6.email = nil;
    iglesia6.capellan = @"Pbro. Jorge Silva López";
    iglesia6.fiesta_patronal = @"12 de diciembre";
    iglesia6.erigida = @"21 de abril de 1997";
    iglesia6.parroco = nil;
    iglesia6.correspondencia = nil;
    
    Iglesias *iglesia7 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia7.tipo = @"Capilla";
    iglesia7.nombre = @"Capilla De Nuestra Señora del Perpetuo Socorro";
    iglesia7.direccion = @"Calle Falcón Nº 343 Sur 27000";
    iglesia7.ciudad = @"Torreón, Coah.";
    iglesia7.telefono = @" 712-0270";
    iglesia7.fax = nil;
    iglesia7.email = nil;
    iglesia7.capellan = @" R.P. Alberto Mejía Lara, cssr -R.P. Mauro Gutiérrez Luévano, cssr -R.P. Jesús Sepúlveda Bárcenas, cssr -R.P. Carlos Hernández Talavera, cssr";
    iglesia7.fiesta_patronal = @"27 de junio";
    iglesia7.erigida = @"Junio de 1946";
    iglesia7.parroco = nil;
    iglesia7.correspondencia = nil;
    
    Iglesias *iglesia8 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia8.tipo = @"Capilla";
    iglesia8.nombre = @"Capilla De Nuestra del Rible";
    iglesia8.direccion = @" Paseo de los Arboles Nº 40 Col. El Roble 27110";
    iglesia8.ciudad = @"Torreón, Coah.";
    iglesia8.telefono = @"718-2111";
    iglesia8.fax = nil;
    iglesia8.email = nil;
    iglesia8.capellan = @"Pbro. César Ramírez López";
    iglesia8.fiesta_patronal = @"18 de diciembre";
    iglesia8.erigida = @"12 de agosto de 2005";
    iglesia8.parroco = nil;
    iglesia8.correspondencia = nil;
    
    Iglesias *iglesia9 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia9.tipo = @"Capilla";
    iglesia9.nombre = @"Capilla San Agustín";
    iglesia9.direccion = @"Viento sur # 350, Col. Ampl. La Rosita";
    iglesia9.ciudad = @"Torreón, Coah.";
    iglesia9.telefono = @"720-0416";
    iglesia9.fax = nil;
    iglesia9.email = nil;
    iglesia9.capellan = @"Pbro. Lic. José de Jesús García Contreras";
    iglesia9.fiesta_patronal = @"28 de agosto";
    iglesia9.erigida = @"8 de noviembre de 2000";
    iglesia9.parroco = nil;
    iglesia9.correspondencia = nil;
    
    Iglesias *iglesia10 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia10.tipo = @"Capilla";
    iglesia10.nombre = @"Capilla San Ignacio de Loyola";
    iglesia10.direccion = @"Ecuador y Áreas Verdes, Col. Aviación 27050";
    iglesia10.ciudad = @"Torreón, Coah.";
    iglesia10.telefono = nil;
    iglesia10.fax = nil;
    iglesia10.email = nil;
    iglesia10.capellan = @"PP. Compañía de Jesús (Jesuitas)";
    iglesia10.fiesta_patronal = @"31 de julio";
    iglesia10.erigida = nil;
    iglesia10.parroco = nil;
    iglesia10.correspondencia = nil;
    
    Iglesias *iglesia11 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia11.tipo = @"Capilla";
    iglesia11.nombre = @"Capilla San Isidro Labrador";
    iglesia11.direccion = @"Av. Juárez Nº 3435 Ote. Col. Nuevo Torreón 27000";
    iglesia11.ciudad = @"Torreón, Coah.";
    iglesia11.telefono = @"713-9461";
    iglesia11.fax = nil;
    iglesia11.email = nil;
    iglesia11.capellan = @" Pbro. Javier Cisneros Pérez";
    iglesia11.fiesta_patronal = @"15 de mayo";
    iglesia11.erigida = @"23 de junio de 1998";
    iglesia11.parroco = nil;
    iglesia11.correspondencia = nil;
    
    Iglesias *iglesia12 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia12.tipo = @"Capilla";
    iglesia12.nombre = @"Capilla San Miguel Arcángel";
    iglesia12.direccion = @"Río Pánuco Nº 327, Col. Navarro  27010";
    iglesia12.ciudad = @"Torreón, Coah.";
    iglesia12.telefono = @"713-5077";
    iglesia12.fax = nil;
    iglesia12.email = nil;
    iglesia12.capellan = @"Mons. Jesús Cortinas Hernández";
    iglesia12.fiesta_patronal = @"29 de septiembre";
    iglesia12.erigida = nil;
    iglesia12.parroco = nil;
    iglesia12.correspondencia = nil;
    
    Iglesias *iglesia13 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia13.tipo = @"Capilla";
    iglesia13.nombre = @"Capilla Santa Maria del Milagro de Cana";
    iglesia13.direccion = @"Calz. Cuitláhuac con Vicente Suárez s/n Col. Abastos";
    iglesia13.ciudad = @"Torreón, Coah.";
    iglesia13.telefono = @" 722-8606";
    iglesia13.fax = nil;
    iglesia13.email = nil;
    iglesia13.capellan = @"Pbro. Rogelio Bautista García";
    iglesia13.fiesta_patronal = @"1º Domingo de julio";
    iglesia13.erigida = @"3 de julio del 2005.";
    iglesia13.parroco = nil;
    iglesia13.correspondencia = nil;
    
    Iglesias *iglesia14 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia14.tipo = @"Catedral";
    iglesia14.nombre = @"Parroquia Catedral Nuestra Señora del Carmen";
    iglesia14.direccion = @"Matamoros Nº 45 Pte. Col. Centro 27000";
    iglesia14.ciudad = @"Torreón, Coah.";
    iglesia14.telefono = @"Tel. 712-0971 y 716-2620";
    iglesia14.fax = nil;
    iglesia14.email = nil;
    iglesia14.capellan = nil;
    iglesia14.fiesta_patronal = @"16 de julio";
    iglesia14.erigida = @"1º de mayo de 1920";
    iglesia14.parroco = @"Mons. Francisco Castillo Santana Vic. Parroq. Mons. Alejo Ollervides Aguirre Vic. Parroq. Pbro. Antonio Mata Rendón Vic. Parroq. Pbro. José Luis Rodríguez Fernández Vic. Parroq. Pbro. José Rodríguez Tenorio. Vic. Adsc. Pbro. Lic. Ignacio Mendoza Wong-Sánchez";
    iglesia14.correspondencia = nil;
    
    Iglesias *iglesia15 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia15.tipo = @"Parroquia";
    iglesia15.nombre = @"Parroquia Cristo Redentor del Hombre";
    iglesia15.direccion = @"Atzcapotzalco Nº 525, Col. las Carolinas 27040";
    iglesia15.ciudad = @"Torreón, Coah.";
    iglesia15.telefono = @"721-7913";
    iglesia15.fax = nil;
    iglesia15.email = nil;
    iglesia15.capellan = nil;
    iglesia15.fiesta_patronal = @"6º Domingo de Pascua";
    iglesia15.erigida = @"13 de abril de 1982";
    iglesia15.parroco = @"Pbro. Francisco Javier Gómez Orozco Pbro. Oscar Anguiano Venegas, ofm";
    iglesia15.correspondencia = nil;
    
    Iglesias *iglesia16 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia16.tipo = @"Parroquia";
    iglesia16.nombre = @"Parroquia Cristo Rey";
    iglesia16.direccion = @"Zacatecas y García Carrillo 27000";
    iglesia16.ciudad = @"Torreón, Coah.";
    iglesia16.telefono = @"713-1459";
    iglesia16.fax = nil;
    iglesia16.email = nil;
    iglesia16.capellan = nil;
    iglesia16.fiesta_patronal = @"Domingo de Cristo Rey";
    iglesia16.erigida = @"14 de abril de 1974";
    iglesia16.parroco = @"Pbro. Lorenzo Sánchez Euzárraga";
    iglesia16.correspondencia = nil;
    
    Iglesias *iglesia17 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia17.tipo = @"Parroquia";
    iglesia17.nombre = @"Parroquia El Buen Pastor - Luchana, Coah.";
    iglesia17.direccion = @"Domicilio Conocido 27801";
    iglesia17.ciudad = @"Ejidos";
    iglesia17.telefono = @"(872) 773-4002";
    iglesia17.fax = nil;
    iglesia17.email = nil;
    iglesia17.capellan = nil;
    iglesia17.fiesta_patronal = @"4º Domingo de Pascua";
    iglesia17.erigida = @"4 de noviembre de 1978";
    iglesia17.parroco = @" Pbro. Desiderio Barrientos Carranza";
    iglesia17.correspondencia = nil;
    
    Iglesias *iglesia18 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia18.tipo = @"Parroquia";
    iglesia18.nombre = @"Parroquia El Espiritu Santo";
    iglesia18.direccion = @"Cerrada San Ricardo Nº 218, Col. La Fuente 27290";
    iglesia18.ciudad = @"Torreón, Coah.";
    iglesia18.telefono = @" 720-8017";
    iglesia18.fax = nil;
    iglesia18.email = nil;
    iglesia18.capellan = nil;
    iglesia18.fiesta_patronal = @"Domingo de Pentecostés";
    iglesia18.erigida = @"30 de noviembre de 1986";
    iglesia18.parroco = @"Pbro. Lic. Ismael Gallegos Corona";
    iglesia18.correspondencia = nil;
    
    Iglesias *iglesia19 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia19.tipo = @"Parroquia";
    iglesia19.nombre = @"Parroquia El Inmaculado Corazón de Maria";
    iglesia19.direccion = @"Mayrán Nº 190, Col. Torreón, Jardín 27200";
    iglesia19.ciudad = @"Torreón, Coah.";
    iglesia19.telefono = @"713-5664";
    iglesia19.fax = nil;
    iglesia19.email = nil;
    iglesia19.capellan = nil;
    iglesia19.fiesta_patronal = @"Sábado Siguiente al Sagrado Corazón";
    iglesia19.erigida = @"24 de octubre de 1986";
    iglesia19.parroco = @"R.P. Manuel Francisco Guadalupe Vilchis Bernal, cmf Vic. Parroq. R.P. Luis Núñez Gutiérrez, cmf Vic. Parroq. R.P. Cecilio Armando Ibarra Carrillo, cmf Vic. Parroq. R.P. Benjamín Rivera Rangel, cmf.";
    iglesia19.correspondencia = nil;
    
    Iglesias *iglesia20 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia20.tipo = @"Parroquia";
    iglesia20.nombre = @"Parroquia El Niño Jesús de la Salud";
    iglesia20.direccion = @"Palermo y Cerdeña s/n Col. Torreón Residencial 27250";
    iglesia20.ciudad = @"Torreón, Coah.";
    iglesia20.telefono = @"718-3544";
    iglesia20.fax = nil;
    iglesia20.email = nil;
    iglesia20.capellan = nil;
    iglesia20.fiesta_patronal = @"Domingo prox. al 30 de abril";
    iglesia20.erigida = @"18 de marzo de 1995";
    iglesia20.parroco = @"Pbro. José Luis Gómez Gómez";
    iglesia20.correspondencia = nil;
    
    Iglesias *iglesia21 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia21.tipo = @"Parroquia";
    iglesia21.nombre = @"Parroquia Jesús Maestro";
    iglesia21.direccion = @"Calle “K” (entre Ave. 2ª y 3ª) Col. Eduardo Guerra 27280";
    iglesia21.ciudad = @"Torreón, Coah.";
    iglesia21.telefono = @"732-8922";
    iglesia21.fax = nil;
    iglesia21.email = nil;
    iglesia21.capellan = nil;
    iglesia21.fiesta_patronal = @"5º domingo de Pascua";
    iglesia21.erigida = @"21 de marzo de 2002";
    iglesia21.parroco = @"Pbro. Roberto Chávez Casillas";
    iglesia21.correspondencia = nil;
    
    Iglesias *iglesia22 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia22.tipo = @"Parroquia";
    iglesia22.nombre = @"Parroquia La Ascensión del Señor";
    iglesia22.direccion = @"Blvd. Francisco I. Madero y Francisco Villa, Col. División del Norte 27170";
    iglesia22.ciudad = @"Torreón, Coah.";
    iglesia22.telefono = @"730-2866 y 730-0995";
    iglesia22.fax = nil;
    iglesia22.email = nil;
    iglesia22.capellan = nil;
    iglesia22.fiesta_patronal = @"Domingo anterior a Pentecostés";
    iglesia22.erigida = @"22 de marzo de 1987";
    iglesia22.parroco = @"Pbro. Miguel Rubio Fernández";
    iglesia22.correspondencia = nil;
    
    Iglesias *iglesia23 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia23.tipo = @"Parroquia";
    iglesia23.nombre = @"Parroquia La Inmaculada Concepción";
    iglesia23.direccion = @"Calle González Treviño Nº 200, Col. Ampl. Los Ángeles 27140";
    iglesia23.ciudad = @"Torreón, Coah.";
    iglesia23.telefono = @"716-0752";
    iglesia23.fax = nil;
    iglesia23.email = nil;
    iglesia23.capellan = nil;
    iglesia23.fiesta_patronal = @"8 de diciembre";
    iglesia23.erigida = @"8 de septiembre de 2003";
    iglesia23.parroco = @"Pbro. Gerardo Delgado Pedroza y Vic. Parroq. Pbro. Jesús Sánchez Valles";
    iglesia23.correspondencia = nil;
    
    Iglesias *iglesia24 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia24.tipo = @"Parroquia";
    iglesia24.nombre = @"Parroquis La Inmaculada Concepción -  La Joya, Coah";
    iglesia24.direccion = @"Domicilio Conocido";
    iglesia24.ciudad = @"Ejidos";
    iglesia24.telefono = @"792-8179";
    iglesia24.fax = nil;
    iglesia24.email = nil;
    iglesia24.capellan = nil;
    iglesia24.fiesta_patronal = @"8 de diciembre";
    iglesia24.erigida = @"5 de agosto de 2005";
    iglesia24.parroco = @" Pbro. José Pablo Gallegos Becerra";
    iglesia24.correspondencia = nil;
    
    Iglesias *iglesia25 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia25.tipo = @"Parroquia";
    iglesia25.nombre = @"Parroquia La Resurrección del Señor - Concordia, Coah.";
    iglesia1.direccion = @"Hidalgo y 20 de Noviembre 27950";
    iglesia25.ciudad = @"Ejidos";
    iglesia25.telefono = @"(872) 777-0367 y 777-0104";
    iglesia25.fax = nil;
    iglesia25.email = nil;
    iglesia25.capellan = nil;
    iglesia25.fiesta_patronal = @"Domingo de Resurrección";
    iglesia25.erigida = @"20 de diciembre de 1910";
    iglesia25.parroco = @"Pbro. José Campos Rodríguez y Vic. Parroq. Pbro. Martín Valadez Delgado";
    iglesia25.correspondencia = @"Apdo. Postal Nº 81 27800 San Pedro, Coah.";
    
    Iglesias *iglesia26 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia26.tipo = @"Parroquia";
    iglesia26.nombre = @"Parroquia La Sagrada Familia";
    iglesia26.direccion = @"Gustavo A. Madero, Col. La Unión 27350";
    iglesia26.ciudad = @"Torreón, Coah.";
    iglesia26.telefono = @"712-4307 y 712-7192";
    iglesia26.fax = nil;
    iglesia26.email = nil;
    iglesia26.capellan = nil;
    iglesia26.fiesta_patronal = @"4º Domingo de enero";
    iglesia26.erigida = @" 28 de febrero de 1960";
    iglesia26.parroco = @"Pbro. Salvador Gómez Domínguez.";
    iglesia26.correspondencia = nil;
    
    Iglesias *iglesia27 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia27.tipo = @"Parroquia";
    iglesia27.nombre = @"Parroquia La Transfiguración del Señor";
    iglesia27.direccion = @"Ñado Nº 423, Col. Valle Oriente";
    iglesia27.ciudad = @"Torreón, Coah.";
    iglesia27.telefono = @"733-5218";
    iglesia27.fax = nil;
    iglesia27.email = nil;
    iglesia27.capellan = nil;
    iglesia27.fiesta_patronal = @"6 de agosto";
    iglesia27.erigida = @"16 de diciembre de 1992";
    iglesia27.parroco = @"R.P. José Luis Torres Pedroza, O. Carm. Vic. Parroq. R.P. William Smith, O Carm. Vic. Parroq. R.P. Mario Loya Cabadilla, O Carm Vic. Parroq. R.P. Emilio Rodríguez Méndez, O Carm.";
    iglesia27.correspondencia = nil;
    
    Iglesias *iglesia28 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia28.tipo = @"Parroquia";
    iglesia28.nombre = @"Parroquia Los Ángeles";
    iglesia28.direccion = @"Zuloaga Nº 98, Col. Los Ángeles 27140";
    iglesia28.ciudad = @"Torreón, Coah.";
    iglesia28.telefono = @"713-4607";
    iglesia28.fax = nil;
    iglesia28.email = nil;
    iglesia28.capellan = nil;
    iglesia28.fiesta_patronal = @"2 de octubre";
    iglesia28.erigida = @"1º de enero de 1974";
    iglesia28.parroco = @"Pbro. Jorge Luis Castañeda Castañeda";
    iglesia28.correspondencia = nil;
    
    Iglesias *iglesia29 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia29.tipo = @"Parroquia";
    iglesia29.nombre = @"Parroquia Maria Madre de la Iglesia - Juan Eugenio, Coah.";
    iglesia29.direccion = @"Domicilio Conocido";
    iglesia29.ciudad = @"Ejidos";
    iglesia29.telefono = @"710-9884";
    iglesia29.fax = nil;
    iglesia29.email = nil;
    iglesia29.capellan = nil;
    iglesia29.fiesta_patronal = @"31 de mayo";
    iglesia29.erigida = @"26 de junio de 1988";
    iglesia29.parroco = @"R. P. Eraclio Pérez García, cmf Vic. Parroq. R.P. José Luis Fabela Vélez, cmf.";
    iglesia29.correspondencia = nil;
    
    Iglesias *iglesia30 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia30.tipo = @"Parroquia";
    iglesia30.nombre = @"Parroquia Nuestra Señora de Fátima";
    iglesia30.direccion = @"Ave. 4ª. y Calle 10 s/n, Col. Braulio Fernández Aguirre 27370";
    iglesia30.ciudad = @"Torreón, Coah.";
    iglesia30.telefono = @"718-9300";
    iglesia30.fax = nil;
    iglesia30.email = nil;
    iglesia30.capellan = nil;
    iglesia30.fiesta_patronal = @"13 de mayo";
    iglesia30.erigida = @"1º de marzo de 1960";
    iglesia30.parroco = @"Pbro. Jesús de la Torre de la Torre Vic. Parroq. Pbro. Luis del Río Ruiz";
    iglesia30.correspondencia = nil;
    
    Iglesias *iglesia31 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia31.tipo = @"Parroquia";
    iglesia31.nombre = @"Parroquia Nuestra Señora de Guadalupe";
    iglesia31.direccion = @"Juárez Nº 1570 Pte. Col. Centro 27000";
    iglesia31.ciudad = @"Torreón, Coah.";
    iglesia31.telefono = @"712-4181";
    iglesia31.fax = @" 716-2325";
    iglesia31.email = nil;
    iglesia31.capellan = nil;
    iglesia31.fiesta_patronal = @"12 de diciembre";
    iglesia31.erigida = @" 27 de diciembre 1894";
    iglesia31.parroco = @"R.P. Leobardo Bernal Caviedes, cmf Vic. Parroq. R.P. Miguel Angel Nieto Bernal, cmf Vic. Parroq. R.P. Juan José Pérez Garcidueñas, cmf Vic. Parroq. R.P. José Angel Vázquez Villalobos, cmf.";
    iglesia31.correspondencia = nil;
    
    Iglesias *iglesia32 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia32.tipo = @"Parroquia";
    iglesia32.nombre = @"Parroquia Nuestra Señora de Guadalupe - Boquillas de las Perlas, Coah.";
    iglesia32.direccion = @"Domicilio Conocido";
    iglesia32.ciudad = @"Ejidos";
    iglesia32.telefono = nil;
    iglesia32.fax = nil;
    iglesia32.email = nil;
    iglesia32.capellan = nil;
    iglesia32.fiesta_patronal = @"12 de diciembre";
    iglesia32.erigida = @"15 de agosto de 1970";
    iglesia32.parroco = @"Pbro. Antonio Cisneros Luna";
    iglesia32.correspondencia = @"Apdo. Postal Nº 65 “D” 27200 Torreón, Coah. Tel. (671) 791-3056; 756-0712";
    
    Iglesias *iglesia33 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia33.tipo = @"Parroquia";
    iglesia33.nombre = @"Parroquia Nuestra Señora de Guadalupe - San Antonio del Coyote, Coah.";
    iglesia33.direccion = @"Domicilio Conocido";
    iglesia33.ciudad = @"Ejidos";
    iglesia33.telefono = @"775-0108";
    iglesia33.fax = nil;
    iglesia33.email = nil;
    iglesia33.capellan = nil;
    iglesia33.fiesta_patronal = @"12 de diciembre";
    iglesia33.erigida = @"2 de mayo de 1903";
    iglesia33.parroco = @"Pbro. Jorge Soto Flores y Vic. Parroq. Pbro. Enrique Ramírez Alvarado";
    iglesia33.correspondencia = nil;
    
    Iglesias *iglesia34 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia34.tipo = @"Parroquia";
    iglesia34.nombre = @"Parroquia Nuestra Señora de Guadalupe - La Unión, Coah";
    iglesia34.direccion = @"Domicilio Conocido";
    iglesia34.ciudad = @"Ejidos";
    iglesia34.telefono = @"750-6348";
    iglesia34.fax = nil;
    iglesia34.email = nil;
    iglesia34.capellan = nil;
    iglesia34.fiesta_patronal = @"12 de diciembre";
    iglesia34.erigida = @"2 de mayo de 1977";
    iglesia34.parroco = @"Pbro. Tobías de la Torre de la Torre";
    iglesia34.correspondencia = nil;
    
    Iglesias *iglesia35 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia35.tipo = @"Parroquia";
    iglesia35.nombre = @"Parroquia Nuestra Señora de Guadalupe Reina de América";
    iglesia35.direccion = @"Galeana y 16 de Septiembre, Col. Madero 27900";
    iglesia35.ciudad = @"Francisco I. Madero, Coah.";
    iglesia35.telefono = @"(872) 773-3871";
    iglesia35.fax = nil;
    iglesia35.email = nil;
    iglesia35.capellan = nil;
    iglesia35.fiesta_patronal = @"12 de octubre";
    iglesia35.erigida = @"5 de noviembre de 1995";
    iglesia35.parroco = @"Pbro. Víctor Manuel Santacruz Polendo";
    iglesia35.correspondencia = nil;
    
    Iglesias *iglesia36 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia36.tipo = @"Parroquia";
    iglesia36.nombre = @"Parroquia Nuestra Señora de Guadalupe y de Sanjuan Diego (La Villita)";
    iglesia36.direccion = @"Calzada Saltillo esquina Calle San Pedro s/n Col. La Mina-Valle Verde 27057";
    iglesia36.ciudad = @"Torreón, Coah.";
    iglesia36.telefono = @"733-4747";
    iglesia36.fax = nil;
    iglesia36.email = nil;
    iglesia36.capellan = nil;
    iglesia36.fiesta_patronal = @"9 de diciembre";
    iglesia36.erigida = @"30 de abril de 2004";
    iglesia36.parroco = @"Pbro. Leonel Hernández Narváez";
    iglesia36.correspondencia = nil;
    
    Iglesias *iglesia37 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia37.tipo = @"Parroquia";
    iglesia37.nombre = @"Parroquia Nuestra Señora de la Encarnación";
    iglesia37.direccion = @"Paseo del Olimpo y Paseo de la Iglesia, Col. La Rosita 27150";
    iglesia37.ciudad = @"Torreón, Coah.";
    iglesia37.telefono = @"720-3450";
    iglesia37.fax = nil;
    iglesia37.email = nil;
    iglesia37.capellan = nil;
    iglesia37.fiesta_patronal = @"25 de marzo";
    iglesia37.erigida = @"25 de marzo de 1995";
    iglesia37.parroco = @"Pbro. José Natividad Fuentes García";
    iglesia37.correspondencia = nil;
    
    Iglesias *iglesia38 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia38.tipo = @"Parroquia";
    iglesia38.nombre = @"Parroquia Nuestra Señora de Lourdes";
    iglesia38.direccion = @"Calle 5a. y Privada Amador Cárdenas Col. Nva. Los Ángeles 27140";
    iglesia38.ciudad = @"Torreón, Coah.";
    iglesia38.telefono = @"713-4664";
    iglesia38.fax = nil;
    iglesia38.email = nil;
    iglesia38.capellan = nil;
    iglesia38.fiesta_patronal = @" 11 de febrero";
    iglesia38.erigida = @"10 de diciembre de 1978";
    iglesia38.parroco = @"Pbro. Antonio Ramírez García";
    iglesia38.correspondencia = nil;
    
    Iglesias *iglesia39 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia39.tipo = @"Parroquia";
    iglesia39.nombre = @"Parroquia Nuestra Señora de San Juan de los Lagos";
    iglesia39.direccion = @"Calle 26 Nº 72 27000 ";
    iglesia39.ciudad = @"Torreón, Coah.";
    iglesia39.telefono = @"713-9081";
    iglesia39.fax = nil;
    iglesia39.email = nil;
    iglesia39.capellan = nil;
    iglesia39.fiesta_patronal = @"15 de agosto";
    iglesia39.erigida = @"8 de octubre de 1994";
    iglesia39.parroco = @"Pbro. Lic. Ramiro Mora Jáuregui Vic. Parroq. Pbro. Mario López Escobedo";
    iglesia39.correspondencia = nil;
    
    Iglesias *iglesia40 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia40.tipo = @"Parroquia";
    iglesia40.nombre = @"Parroquia Nuestra Señora de San Juan de los Lagos";
    iglesia40.direccion = @"Av. Libertad Nº 91, Barrio Monterrey 27800";
    iglesia40.ciudad = @"San Pedro, Coah.";
    iglesia40.telefono = @"(872) 772-3381";
    iglesia40.fax = nil;
    iglesia40.email =nil;
    iglesia40.capellan = nil;
    iglesia40.fiesta_patronal = @"8 de diciembre";
    iglesia40.erigida = @"8 de octubre de 1995";
    iglesia40.parroco = @"Pbro. Sergio Arturo Díaz Márquez";
    iglesia40.correspondencia = nil;
    
    Iglesias *iglesia41 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia41.tipo = @"Parroquia";
    iglesia41.nombre = @"Parroquia Nuestra Señora del Carmen - La Paz, Coah.";
    iglesia41.direccion = @"Domicilio Conocido";
    iglesia41.ciudad = @"Ejidos";
    iglesia41.telefono = @"711-2617";
    iglesia41.fax = nil;
    iglesia41.email = nil;
    iglesia41.capellan = nil;
    iglesia41.fiesta_patronal = @"16 de julio";
    iglesia41.erigida = @"20 de julio de 2003";
    iglesia41.parroco = @"Pbro. José Jaime de León Romero";
    iglesia41.correspondencia = nil;
    
    Iglesias *iglesia42 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia42.tipo = @"Parroquia";
    iglesia42.nombre = @"Parroquia Nuestra Señora del Refugio";
    iglesia42.direccion = @"Ave. Cuauhtémoc y Guerrero 27440";
    iglesia42.ciudad = @"Matamoros, Coah.";
    iglesia42.telefono = @"762-0095";
    iglesia42.fax = nil;
    iglesia42.email = nil;
    iglesia42.capellan = nil;
    iglesia42.fiesta_patronal = @"4 de julio";
    iglesia42.erigida = @"5 de abril de 1875";
    iglesia42.parroco = @"Pbro. Gerardo Franco Zapata, Vic. Parroq. Pbro. Bernardo Lozano Hernández y Vic. Parroq. Pbro. Jorge Alberto Ruiz Torres";
    iglesia42.correspondencia = nil;
    
    Iglesias *iglesia43 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia43.tipo = @"Parroquia";
    iglesia43.nombre = @"Parroquia Sagrado Corazón de Jesús";
    iglesia43.direccion = @"Cuauhtémoc y Artes Gráficas 27000";
    iglesia43.ciudad = @"Torreón, Coah.";
    iglesia43.telefono = @"713-1879 y 713-4975";
    iglesia43.fax = nil;
    iglesia43.email = nil;
    iglesia43.capellan = nil;
    iglesia43.fiesta_patronal = @"2º viernes después de Corpus Christi";
    iglesia43.erigida = @"17 de octubre de 1956";
    iglesia43.parroco = @"Pbro. Patricio Aguirre Fuentes, Vic. Parroq. Pbro. Alfredo Fernández Vargas  y Vic. Parroq. Manuel Gregorio Aguirre Fuentes";
    iglesia43.correspondencia = nil;
    
    Iglesias *iglesia44 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia44.tipo = @"Parroquia";
    iglesia44.nombre = @"Parroquia Sagrado Corazón de Jesús";
    iglesia44.direccion = @"Hidalgo y Zaragoza 27900";
    iglesia44.ciudad = @"Francisco I. Madero, Coah.";
    iglesia44.telefono = @"872) 773-2005";
    iglesia44.fax = nil;
    iglesia44.email = nil;
    iglesia44.capellan = nil;
    iglesia44.fiesta_patronal = @"2º viernes después Corpus Christi";
    iglesia44.erigida = @"6 de octubre de 1895";
    iglesia44.parroco = @"Pbro. Víctor Manuel Monreal Santacruz";
    iglesia44.correspondencia = nil;
    
    Iglesias *iglesia45 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia45.tipo = @"Parroquia";
    iglesia45.nombre = @"Parroquia San Felipe de Jesús";
    iglesia45.direccion = @"Serapio Santiago Nº 126, Col. Ampliación Los Ángeles 27140";
    iglesia45.ciudad = @"Torreón, Coah.";
    iglesia45.telefono = @"712-1846";
    iglesia45.fax = nil;
    iglesia45.email = nil;
    iglesia45.capellan = nil;
    iglesia45.fiesta_patronal = @"Patronal: 5 de febrero";
    iglesia45.erigida = @"5 de noviembre de 1967";
    iglesia45.parroco = @"R.P. Reynaldo Brizuela García, Vic. Parroq. R. P. J. Jesús Mendoza Barragán, ofm Vic. Parroq. José Carlos Mijares Calderón";
    iglesia45.correspondencia = nil;
    
    Iglesias *iglesia46 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia46.tipo = @"Parroquia";
    iglesia46.nombre = @"Parroquia San Francisco de Asis";
    iglesia46.direccion = @"Ave. del Trabajo Nº 333, Col. 1º de Mayo 27370";
    iglesia46.ciudad = @"Torreón, Coah.";
    iglesia46.telefono = @" 712-2050";
    iglesia46.fax = nil;
    iglesia46.email = nil;
    iglesia46.capellan = nil;
    iglesia46.fiesta_patronal = @"4 de octubre";
    iglesia46.erigida = @"2 de octubre de 1994";
    iglesia46.parroco = @"Pbro. Carlos Gerardo Granados Rodríguez";
    iglesia46.correspondencia = nil;
    
    Iglesias *iglesia47 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia47.tipo = @"Parroquia";
    iglesia47.nombre = @"Parroquia San Isidro Labrador - Congregación Hidalgo, Coah.";
    iglesia47.direccion = @"Domicilio Conocido";
    iglesia47.ciudad = @"Ejidos";
    iglesia47.telefono = @"762-4335";
    iglesia47.fax = nil;
    iglesia47.email = nil;
    iglesia47.capellan = nil;
    iglesia47.fiesta_patronal = @"15 de mayo";
    iglesia47.erigida = @"3 de noviembre de 1993";
    iglesia47.parroco = @"Pbro. Carlos Franco Hernández";
    iglesia47.correspondencia = nil;
    
    Iglesias *iglesia48 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia48.tipo = @"Parroquia";
    iglesia48.nombre = @"Parroquia San Jerónimo -  Lequeitio, Coah.";
    iglesia48.direccion = @"Domicilio Conocido";
    iglesia48.ciudad = @"Ejidos";
    iglesia48.telefono = @"(872) 773-6006";
    iglesia48.fax = nil;
    iglesia48.email = nil;
    iglesia48.capellan = nil;
    iglesia48.fiesta_patronal = @" 30 de septiembre";
    iglesia48.erigida = @"30 de septiembre de 1994";
    iglesia48.parroco = @"Pbro. Juan Carlos Espinoza Gutiérrez";
    iglesia48.correspondencia = nil;
    

    Iglesias *iglesia49 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia49.tipo = @"Parroquia";
    iglesia49.nombre = @"Parroquia San José";
    iglesia49.direccion = @"López Ortiz Nº 365 Nte. 27000";
    iglesia49.ciudad = @"Torreón, Coah.";
    iglesia49.telefono = @"713-00-33 y 722-2434";
    iglesia49.fax = nil;
    iglesia49.email = nil;
    iglesia49.capellan = nil;
    iglesia49.fiesta_patronal = @"19 de marzo";
    iglesia49.erigida = @"12 de diciembre de 1959";
    iglesia49.parroco = @"Pbro. José Luis Escamilla Estrada Vic. Parroq. Pbro. Juan Fernando Navarrete Quintana";
    iglesia49.correspondencia = nil;
    
    Iglesias *iglesia50 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia50.tipo = @"Parroquia";
    iglesia50.nombre = @"Parroquia San José Obrero";
    iglesia50.direccion = @"Calle Costera Nº 253, Col. Villa la Hacienda";
    iglesia50.ciudad = @"Torreón, Coah.";
    iglesia50.telefono = @"731-1857";
    iglesia50.fax = nil;
    iglesia50.email = nil;
    iglesia50.capellan = nil;
    iglesia50.fiesta_patronal = @"1º de Mayo";
    iglesia50.erigida = @"23 de agosto de 1998";
    iglesia50.parroco = @"Pbro. Alejandro Flores Gaytán";
    iglesia50.correspondencia = nil;
    
    Iglesias *iglesia51 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia51.tipo = @"Parroquia";
    iglesia51.nombre = @"Parroquia San Juan Bautista";
    iglesia51.direccion = @"Independencia Nº 365, Col. Libertad. 27340";
    iglesia51.ciudad = @"Torreón, Coah.";
    iglesia51.telefono = @"712-7575 y 712-8937";
    iglesia51.fax = nil;
    iglesia51.email = nil;
    iglesia51.capellan = nil;
    iglesia51.fiesta_patronal = @"24 de junio";
    iglesia51.erigida = @"29 de febrero de 1960";
    iglesia51.parroco = @"Pbro. Gerardo Zatarain García.";
    iglesia51.correspondencia = nil;
    
    Iglesias *iglesia52 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia52.tipo = @"Parroquia";
    iglesia52.nombre = @"Parroquia San Judas Tadeos";
    iglesia52.direccion = @"Torre de Cristo Nº 333, Col. Las Torres 27085";
    iglesia52.ciudad = @"Torreón, Coah.";
    iglesia52.telefono = @"720-1482";
    iglesia52.fax = @"720-5527";
    iglesia52.email = nil;
    iglesia52.capellan = nil;
    iglesia52.fiesta_patronal = @"28 de octubre";
    iglesia52.erigida = @"27 de octubre de 1990";
    iglesia52.parroco = @"R. P. José Ma. Castillo Plascencia, sj Vic. Parroq. R.P. Ramón Sevilla Flores, sj Vic. Parroq. R.P. Carlos Julio Tapia Orozco, sj Vic. Parroq. R.P. Xavier Gutiérrez Cantú, sj Vic. Parroq. R.P. Juan José Esquivias López, sj Vic. Parroq. R.P, Sergio Manuel Guzmán García, sj Vic. Parroq. R.P. Samuel Lozano de los Santos, sj Vic. Parroq. R.P. Jaime Arias Leñero, sj Vic. Parroq. R.P. José de Jesús Segura Paniagua, sj";
    iglesia52.correspondencia = nil;
    
    Iglesias *iglesia53 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia53.tipo = @"Parroquia";
    iglesia53.nombre = @"Parroquia San Marcos Evangelista";
    iglesia53.direccion = @"Escobedo 3327 Ote. Col. San Marcos 27060";
    iglesia53.ciudad = @"Torreón, Coah.";
    iglesia53.telefono = @"720-0595";
    iglesia53.fax = nil;
    iglesia53.email = nil;
    iglesia53.capellan = nil;
    iglesia53.fiesta_patronal = @"25 de abril";
    iglesia53.erigida = @"6 de noviembre de 2003";
    iglesia53.parroco = @"Pbro. Víctor Manuel Gómez Hernández";
    iglesia53.correspondencia = nil;
    
    Iglesias *iglesia54 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia54.tipo = @"Parroquia";
    iglesia54.nombre = @"Parroquia San Martín de Porres";
    iglesia54.direccion = @"Ave. Universidad Esq. con Ave. del Bosque Col. Villa de la Merced";
    iglesia54.ciudad = @"Torreón, Coah.";
    iglesia54.telefono = @"730-4973";
    iglesia54.fax = nil;
    iglesia54.email = nil;
    iglesia54.capellan = nil;
    iglesia54.fiesta_patronal = @"3 de noviembre";
    iglesia54.erigida = @"7 de noviembre de 1998";
    iglesia54.parroco = @"Pbro. José Ángel Díaz Ávila";
    iglesia54.correspondencia = nil;
    
    Iglesias *iglesia55 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia55.tipo = @"Parroquia";
    iglesia55.nombre = @"Parroquia San Pablo Apóstol";
    iglesia55.direccion = @"Calz. Fidel Velásquez s/n, Col. Fidel Velásquez";
    iglesia55.ciudad = @"Torreón, Coah.";
    iglesia55.telefono = @"733-1990";
    iglesia55.fax = nil;
    iglesia55.email = nil;
    iglesia1.capellan = nil;
    iglesia55.fiesta_patronal = @"29 de junio";
    iglesia55.erigida = @"21 de diciembre de 1986";
    iglesia55.parroco = @"Pbro. Lic. Jacinto Rivera Rodríguez";
    iglesia55.correspondencia = nil;
    
    Iglesias *iglesia56 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia56.tipo = @"Parroquia";
    iglesia56.nombre = @"Parroquia San Pedro Apóstol";
    iglesia56.direccion = @"Mónaco Nº 415, Col. San Isidro 27100";
    iglesia56.ciudad = @"Torreón, Coah.";
    iglesia56.telefono = @"713-5706 y 717-3853";
    iglesia56.fax = nil;
    iglesia56.email = nil;
    iglesia56.capellan = nil;
    iglesia56.fiesta_patronal = @"29 de junio";
    iglesia56.erigida = @"2 de julio de 1995";
    iglesia56.parroco = @"Pbro. Lic. Armando López Serna";
    iglesia56.correspondencia = nil;
    
    Iglesias *iglesia57 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia57.tipo = @"Parroquia";
    iglesia57.nombre = @"Parroquia San Pedro Apóstol";
    iglesia57.direccion = @"Manuel Acuña Nº 20 27800";
    iglesia57.ciudad = @"San Pedro, Coah.";
    iglesia57.telefono = @"(872) 772-0239 y 772-0015";
    iglesia57.fax = nil;
    iglesia57.email = nil;
    iglesia57.capellan = nil;
    iglesia57.fiesta_patronal = @"29 de junio";
    iglesia57.erigida = @"24 de mayo de 1892";
    iglesia57.parroco = @"Pbro. Javier Bernal Hernández, Vic. Parroq. Pbro. Alfredo Rodríguez Escobedo y Vic. Parroq. Pbro. Leonel Serrano de la Cruz Vic. Parroq. Pbro. Jorge Silva López";
    iglesia57.correspondencia = nil;
    
    Iglesias *iglesia58 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia58.tipo = @"Parroquia";
    iglesia58.nombre = @"Parroquia San Rafael Arcangel";
    iglesia58.direccion = @"Prol. Calzada Colón Nº 1001 Sur Col. Nueva Aurora 27220";
    iglesia58.ciudad = @"Torreón, Coah.";
    iglesia58.telefono = @"712-8873";
    iglesia58.fax = nil;
    iglesia58.email = nil;
    iglesia58.capellan = nil;
    iglesia58.fiesta_patronal = @"29 de septiembre";
    iglesia58.erigida = @"20 de enero de 1974";
    iglesia58.parroco = @"Pbro. Luis Fernando López Villasana";
    iglesia58.correspondencia = nil;
    
    Iglesias *iglesia59 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia59.tipo = @"Parroquia";
    iglesia59.nombre = @"Parroquia Santa Cecilia";
    iglesia59.direccion = @"Avenida Torreón y Calle Querétaro Col. Las Julietas 27296";
    iglesia59.ciudad = @"Torreón, Coah.";
    iglesia59.telefono = @"750-5738";
    iglesia59.fax = nil;
    iglesia59.email = nil;
    iglesia59.capellan = nil;
    iglesia59.fiesta_patronal = @"22 de noviembre";
    iglesia59.erigida = @"15 de octubre de 1994";
    iglesia59.parroco = @"Pbro. Mario Hernández Huitrón";
    iglesia59.correspondencia = nil;
    
    Iglesias *iglesia60 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia60.tipo = @"Parroquia";
    iglesia60.nombre = @"Parroquia Santa Madre de Dios - Ejido La Partida, Coah.";
    iglesia60.direccion = @"Domicilio Conocido";
    iglesia60.ciudad = @"Ejidos";
    iglesia60.telefono = @"744-3022";
    iglesia60.fax = nil;
    iglesia60.email = nil;
    iglesia60.capellan = @"1º de enero";
    iglesia60.fiesta_patronal = nil;
    iglesia60.erigida = @"1º de enero de 1988";
    iglesia60.parroco = @"Pbro. Juan Manuel Trasfí Anaya";
    iglesia60.correspondencia = nil;
    
    Iglesias *iglesia61 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia61.tipo = @"Parroquia";
    iglesia61.nombre = @"Parroquia Santa Teresita del Niño Jesús";
    iglesia61.direccion = @"Faisanes y Gansos, Col. Jacarandas 27100";
    iglesia61.ciudad = @"Torreón, Coah.";
    iglesia61.telefono = @"717-3304";
    iglesia61.fax = nil;
    iglesia61.email = nil;
    iglesia61.capellan = nil;
    iglesia61.fiesta_patronal = @"1º de octubre";
    iglesia61.erigida = @"26 de noviembre de 1983";
    iglesia61.parroco = @"Pbro. Gerardo Antonio Rocha Ramírez";
    iglesia61.correspondencia = nil;
    
    Iglesias *iglesia62 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia62.tipo = @"Parroquia";
    iglesia62.nombre = @"Parroquia Santiago Apóstol";
    iglesia62.direccion = @"Domicilio Conocido";
    iglesia62.ciudad = @"Viesca, Coah.";
    iglesia62.telefono = @"(671) 764-0221";
    iglesia62.fax = nil;
    iglesia62.email = nil;
    iglesia62.capellan = nil;
    iglesia62.fiesta_patronal = @"25 de julio";
    iglesia62.erigida = @"17 de abril de 1875";
    iglesia62.parroco = @"Pbro. Armando Altamira Briones";
    iglesia62.correspondencia = nil;
    
    Iglesias *iglesia63 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia63.tipo = @"Parroquia";
    iglesia63.nombre = @"Parroquia Santo Cristo";
    iglesia63.direccion = @"Río Sena y Río Aguanaval Col. Estrella 27101";
    iglesia63.ciudad = @"Torreón, Coah.";
    iglesia63.telefono = @"718-9350";
    iglesia63.fax = nil;
    iglesia63.email = nil;
    iglesia63.capellan = nil;
    iglesia63.fiesta_patronal = @"6 de agosto";
    iglesia63.erigida = @"23 de noviembre de 2001";
    iglesia63.parroco = @"Pbro. Sergio Alberto Aguirre Gutiérrez";
    iglesia63.correspondencia = nil;
    
    Iglesias *iglesia64 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia64.tipo = @"Santuario";
    iglesia64.nombre = @"Santuario de Cristo Rey (Cerro de las Noas)";
    iglesia64.direccion = @"Calle de Los Misterios Col. Nueva Creación";
    iglesia64.ciudad = @"Torreón, Coah.";
    iglesia64.telefono = @"716-2233 y 712-3943";
    iglesia64.fax = nil;
    iglesia64.email = nil;
    iglesia64.capellan = nil;
    iglesia64.fiesta_patronal = @"Fiesta de Cristo Rey";
    iglesia64.erigida = nil;
    iglesia64.parroco = @"Pbro. José Rodríguez Tenorio";
    iglesia64.correspondencia = nil;
    
    Iglesias *iglesia65 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia65.tipo = @"Parroquia";
    iglesia65.nombre = @"Parroquia del Divino Niño";
    iglesia65.direccion = @"C. Desierto s/n Col. Sta. Rosa";
    iglesia65.ciudad = @"Gómez Palacio, Dgo.";
    iglesia65.telefono = @"871/719-1717";
    iglesia65.fax = nil;
    iglesia65.email = nil;
    iglesia65.capellan = nil;
    iglesia65.fiesta_patronal = nil;
    iglesia65.erigida = nil;
    iglesia65.parroco = nil;
    iglesia65.correspondencia = nil;
    
    Iglesias *iglesia66 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia66.tipo = @"Parroquia";
    iglesia66.nombre = @"Parroquia Ntra. Sra. de Guadalupe";
    iglesia66.direccion = @"C. Prolongación Nicolas Bravo s/n, C.P: 35156 Col. S. Isidro Lerdo, Dgo.";
    iglesia66.ciudad = @"Gómez Palacio, Dgo.";
    iglesia66.telefono = @"871/725-5019";
    iglesia66.fax = nil;
    iglesia66.email = nil;
    iglesia66.capellan = nil;
    iglesia66.fiesta_patronal = nil;
    iglesia66.erigida = nil;
    iglesia66.parroco = nil;
    iglesia66.correspondencia = nil;

    Iglesias *iglesia67 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia67.tipo = @"Parroquia";
    iglesia67.nombre = @"Parroquia de San Felipe de Jesús";
    iglesia67.direccion = @"Despacho Parroquial, C.P: 31203";
    iglesia67.ciudad = @"Gómez Palacio, Dgo.";
    iglesia67.telefono = @"San Felipe, Gómez Palacio, Dgo.";
    iglesia67.fax = nil;
    iglesia67.email = nil;
    iglesia67.capellan = nil;
    iglesia67.fiesta_patronal = nil;
    iglesia67.erigida = nil;
    iglesia67.parroco = nil;
    iglesia67.correspondencia = nil;
    
    Iglesias *iglesia68 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia68.tipo = @"Parroquia";
    iglesia68.nombre = @"Parroquia de Santa Rita de Casia";
    iglesia68.direccion = @"Calle Santos Zúñiga y Av. Espilacio Rea, C.P: 35150 Col. 5 de mayo";
    iglesia68.ciudad = @"Gómez Palacio, Dgo.";
    iglesia68.telefono = @"871/725-8214";
    iglesia68.fax = nil;
    iglesia68.email = nil;
    iglesia68.capellan = nil;
    iglesia68.fiesta_patronal = nil;
    iglesia68.erigida = nil;
    iglesia68.parroco = nil;
    iglesia68.correspondencia = nil;
    
    Iglesias *iglesia69 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia69.tipo = @"Parroquia";
    iglesia69.nombre = @"Parroquia de Ntra. Sra. de los Dolores - La Popular, Mpio. de Gómez";
    iglesia69.direccion = @"Apdo. Postal 1-80, C.P: 35001";
    iglesia69.ciudad = @"Ejidos";
    iglesia69.telefono = @"871/711-8131";
    iglesia69.fax = nil;
    iglesia69.email = nil;
    iglesia69.capellan = nil;
    iglesia69.fiesta_patronal = nil;
    iglesia69.erigida = nil;
    iglesia69.parroco = nil;
    iglesia69.correspondencia = nil;

    Iglesias *iglesia70 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia70.tipo = @"Parroquia";
    iglesia70.nombre = @"Paroquia de Ntra. Sra. de S. Jn. de los Lagos";
    iglesia70.direccion = @"Independencia 945 Nte. C.P: 35000";
    iglesia70.ciudad = @"Gómez Palacio, Dgo.";
    iglesia70.telefono = @"871/715-6657";
    iglesia70.fax = nil;
    iglesia70.email = nil;
    iglesia70.capellan = nil;
    iglesia70.fiesta_patronal = nil;
    iglesia70.erigida = nil;
    iglesia70.parroco = nil;
    iglesia70.correspondencia = nil;

    Iglesias *iglesia71 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia71.tipo = @"Parroquia";
    iglesia71.nombre = @"Parroquia de El Pueblito";
    iglesia71.direccion = @"Abasolo 365 Sur, C.P: 35000";
    iglesia71.ciudad = @"Gómez Palacio, Dgo.";
    iglesia71.telefono = @"871/714-2959";
    iglesia71.fax = nil;
    iglesia71.email = nil;
    iglesia71.capellan = nil;
    iglesia71.fiesta_patronal = nil;
    iglesia71.erigida = nil;
    iglesia71.parroco = nil;
    iglesia71.correspondencia = nil;

    
    Iglesias *iglesia72 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia72.tipo = @"Parroquia";
    iglesia72.nombre = @"Parroquia del Sagrado Corazón de Jesús";
    iglesia72.direccion = @"Hidalgo #85 Zona Centro, C.P: 35150";
    iglesia72.ciudad = @"Lerdo, Dgo.";
    iglesia72.telefono = @"871/725-0721";
    iglesia72.fax = nil;
    iglesia72.email = nil;
    iglesia72.capellan = nil;
    iglesia72.fiesta_patronal = nil;
    iglesia72.erigida = nil;
    iglesia72.parroco = nil;
    iglesia72.correspondencia = nil;

    
    Iglesias *iglesia73 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia73.tipo = @"Parroquia";
    iglesia73.nombre = @"Parroquia Cristo Rey";
    iglesia73.direccion = @"Rayón y Constitución Col. Fco. Zarco, C.P: 35050";
    iglesia73.ciudad = @"Gómez Palacio, Dgo.";
    iglesia73.telefono = @"871/715-2376";
    iglesia73.fax = nil;
    iglesia73.email = nil;
    iglesia73.capellan = nil;
    iglesia73.fiesta_patronal = nil;
    iglesia73.erigida = nil;
    iglesia73.parroco = nil;
    iglesia73.correspondencia = nil;

    
    Iglesias *iglesia74 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia74.tipo = @"Parroquia";
    iglesia74.nombre = @"Parroquia del Divino Niño";
    iglesia74.direccion = @"C. Desierto s/n Col. Sta. Rosa,";
    iglesia74.ciudad = @"Gómez Palacio, Dgo.";
    iglesia74.telefono = @"871/719-1717";
    iglesia74.fax = nil;
    iglesia74.email = nil;
    iglesia74.capellan = nil;
    iglesia74.fiesta_patronal = nil;
    iglesia74.erigida = nil;
    iglesia74.parroco = nil;
    iglesia74.correspondencia = nil;

    
    Iglesias *iglesia75 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia75.tipo = @"Parroquia";
    iglesia75.nombre = @"Parroquia Santa María de Guadalupe";
    iglesia75.direccion = @"Hidalgo e Independencia Centro, C.P: 35000";
    iglesia75.ciudad = @"Gómez Palacio, Dgo.";
    iglesia75.telefono = @"871/714-1294";
    iglesia75.fax = @"714-2050";
    iglesia75.email = nil;
    iglesia75.capellan = nil;
    iglesia75.fiesta_patronal = nil;
    iglesia75.erigida = nil;
    iglesia75.parroco = nil;
    iglesia75.correspondencia = nil;

    
    Iglesias *iglesia76 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia76.tipo = @"Parroquia";
    iglesia76.nombre = @"Parroquia San Antonio de Padua";
    iglesia76.direccion = @"C. Sn. Federico 130 Fracc. S. Antonio, C.P: 35015";
    iglesia76.ciudad = @"Gómez Palacio, Dgo.";
    iglesia76.telefono = @"871/752-4312";
    iglesia76.fax = nil;
    iglesia76.email = nil;
    iglesia76.capellan = nil;
    iglesia76.fiesta_patronal = nil;
    iglesia76.erigida = nil;
    iglesia76.parroco = nil;
    iglesia76.correspondencia = nil;

    Iglesias *iglesia77 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia77.tipo = @"Parroquia";
    iglesia77.nombre = @"Parroquia del Sagrado Corazón de Jesús";
    iglesia77.direccion = @"Hidalgo 85 Zona Centro, C.P: 35150";
    iglesia77.ciudad = @"Lerdo, Dgo.";
    iglesia77.telefono = @"871/725-0721";
    iglesia77.fax = nil;
    iglesia77.email = nil;
    iglesia77.capellan = nil;
    iglesia77.fiesta_patronal = nil;
    iglesia77.erigida = nil;
    iglesia77.parroco = nil;
    iglesia77.correspondencia = nil;

    Iglesias *iglesia78 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia78.tipo = @"Parroquia";
    iglesia78.nombre = @"Parroquia de la Inmaculada Concepción";
    iglesia78.direccion = @"C. Victoria y Colima Col. Las Rosas, C.P: 35090";
    iglesia78.ciudad = @"Gómez Palacio, Dgo.";
    iglesia78.telefono = @"871/723-2411";
    iglesia78.fax = nil;
    iglesia78.email = nil;
    iglesia78.capellan = nil;
    iglesia78.fiesta_patronal = nil;
    iglesia78.erigida = nil;
    iglesia78.parroco = nil;
    iglesia78.correspondencia = nil;
    
    Iglesias *iglesia79 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia79.tipo = @"Parroquia";
    iglesia79.nombre = @"Parroquia de San José";
    iglesia79.direccion = @"Calle Ocampo y Fer. Saravia, C.P: 35150";
    iglesia79.ciudad = @"Lerdo, Dgo.";
    iglesia79.telefono = @"871/714-9344";
    iglesia79.fax = nil;
    iglesia79.email = nil;
    iglesia79.capellan = nil;
    iglesia79.fiesta_patronal = nil;
    iglesia79.erigida = nil;
    iglesia79.parroco = nil;
    iglesia79.correspondencia = nil;
    
    Iglesias *iglesia80=[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia80.tipo = @"Parroquia";
    iglesia80.nombre = @"Parroquia la Inmaculada Concepción";
    iglesia80.direccion = @"Av. Paricutín 30 Col. César G. Meraz, C.P: 35169";
    iglesia80.ciudad = @"Lerdo, Dgo.";
    iglesia80.telefono = @"871/714-0429";
    iglesia80.fax = nil;
    iglesia80.email = nil;
    iglesia80.capellan = nil;
    iglesia80.fiesta_patronal = nil;
    iglesia80.erigida = nil;
    iglesia80.parroco = nil;
    iglesia80.correspondencia = nil;
    
    Iglesias *iglesia81 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia81.tipo = @"Parroquia";
    iglesia81.nombre = @"Parroquia San Antonio de Padua";
    iglesia81.direccion = @"Juan de la Barrera s/n Col. Los Sauces, C.P: 35158";
    iglesia81.ciudad = @"Lerdo, Dgo.";
    iglesia81.telefono = @"871/725-7846";
    iglesia81.fax = nil;
    iglesia81.email = nil;
    iglesia81.capellan = nil;
    iglesia81.fiesta_patronal = nil;
    iglesia81.erigida = nil;
    iglesia81.parroco = nil;
    iglesia81.correspondencia = nil;
    
    Iglesias *iglesia82 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia82.tipo = @"Parroquia";
    iglesia82.nombre = @"Parroquia del Sagrado Corazón de Jesús";
    iglesia82.direccion = @"Matamoros y Fco. I. Madero, C.P: 35000";
    iglesia82.ciudad = @"Gómez Palacio, Dgo.";
    iglesia82.telefono = @"871/714-1645";
    iglesia82.fax = nil;
    iglesia82.email = nil;
    iglesia82.capellan = nil;
    iglesia82.fiesta_patronal = nil;
    iglesia82.erigida = nil;
    iglesia82.parroco = nil;
    iglesia82.correspondencia = nil;
    
    Iglesias *iglesia83 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia83.tipo = @"Parroquia";
    iglesia83.nombre = @"Parroquia de Nuestra Señora del Refugio ";
    iglesia83.direccion = @"Zacatecas y Sarabia s/n. Col. 20 de Nov., C.P. 35155";
    iglesia83.ciudad = @"Lerdo, Dgo.";
    iglesia83.telefono = @"871/ 725-0243";
    iglesia83.fax = nil;
    iglesia83.email = nil;
    iglesia83.capellan = nil;
    iglesia83.fiesta_patronal = nil;
    iglesia83.erigida = nil;
    iglesia83.parroco = nil;
    iglesia83.correspondencia = nil;
    
    Iglesias *iglesia84 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia84.tipo = @"Parroquia";
    iglesia84.nombre = @"Parroquia del Sagrado Corazón de Jesú";
    iglesia84.direccion = @"Hidalgo #85, C.P. 35150 ";
    iglesia84.ciudad = @"Lerdo, Dgo.";
    iglesia84.telefono = @"871/725-0721";
    iglesia84.fax = nil;
    iglesia84.email = nil;
    iglesia84.capellan = nil;
    iglesia84.fiesta_patronal = nil;
    iglesia84.erigida = nil;
    iglesia84.parroco = nil;
    iglesia84.correspondencia = nil;
    
    Iglesias *iglesia85 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia85.tipo = @"Parroquia";
    iglesia85.nombre = @"Parroquia del Sagrado Corazón de Jesús ";
    iglesia85.direccion = @"Matamoros y Fco. I. Madero, C.P. 35000 ";
    iglesia85.ciudad = @"Gómez Palacio, Dgo.";
    iglesia85.telefono = @"871/ 714-1645 ";
    iglesia85.fax = nil;
    iglesia85.email = nil;
    iglesia85.capellan = nil;
    iglesia85.fiesta_patronal = nil;
    iglesia85.erigida = nil;
    iglesia85.parroco = nil;
    iglesia85.correspondencia = nil;
    
    Iglesias *iglesia86 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia86.tipo = @"Parroquia";
    iglesia86.nombre = @"Parroquia del Nuestra Señora de la Luz";
    iglesia86.direccion = @"A. del Castillo #888, Col. F. Velazquez, C.P. 35590";
    iglesia86.ciudad = @"Gómez Palacio, Dgo.";
    iglesia86.telefono = @"871/ 719-5508 ";
    iglesia86.fax = nil;
    iglesia86.email = nil;
    iglesia86.capellan = nil;
    iglesia86.fiesta_patronal = nil;
    iglesia86.erigida = nil;
    iglesia86.parroco = nil;
    iglesia86.correspondencia = nil;
    
    Iglesias *iglesia87 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia87.tipo = @"Parroquia";
    iglesia87.nombre = @"Parroquia del San Francisco Javier ";
    iglesia87.direccion = @"Despacho Parroquial, C.P. 35050 ";
    iglesia87.ciudad = @"Gómez Palacio, Dgo.";
    iglesia87.telefono = @"871/ 715-8588 ";
    iglesia87.fax = nil;
    iglesia87.email = nil;
    iglesia87.capellan = nil;
    iglesia87.fiesta_patronal = nil;
    iglesia87.erigida = nil;
    iglesia87.parroco = nil;
    iglesia87.correspondencia = nil;
    
    Iglesias *iglesia88 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia88.tipo = @"Parroquia";
    iglesia88.nombre = @"Parroquia de Santa Rosa de Lima ";
    iglesia88.direccion = @"Av. Auza #964 Ote., Col. Sta. Rosa, C.P. 35040";
    iglesia88.ciudad = @"Gómez Palacio, Dgo.";
    iglesia88.telefono = @"871/ 714-0161";
    iglesia88.fax = nil;
    iglesia88.email = nil;
    iglesia88.capellan = nil;
    iglesia88.fiesta_patronal = nil;
    iglesia88.erigida = nil;
    iglesia88.parroco = nil;
    iglesia88.correspondencia = nil;
    
    Iglesias *iglesia89 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia89.tipo = @"Parroquia";
    iglesia89.nombre = @"Parroquia del Señor de la Misericordia ";
    iglesia89.direccion = @"Brillante y Esmeralda, Col. Esperanza, C.P. 35020";
    iglesia89.ciudad = @"Gómez Palacio, Dgo.";
    iglesia89.telefono = @"871/ 715-1584 ";
    iglesia89.fax = nil;
    iglesia89.email = nil;
    iglesia89.capellan = nil;
    iglesia89.fiesta_patronal = nil;
    iglesia89.erigida = nil;
    iglesia89.parroco = nil;
    iglesia89.correspondencia = nil;
    
    Iglesias *iglesia90 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia90.tipo = @"Parroquia";
    iglesia90.nombre = @"Parroquia del San José ";
    iglesia90.direccion = @"Av. Rayón #925 Sur, C.P. 35000 ";
    iglesia90.ciudad = @"Gómez Palacio, Dgo.";
    iglesia90.telefono = @"871/ 714-3090 ";
    iglesia90.fax = nil;
    iglesia90.email = nil;
    iglesia90.capellan = nil;
    iglesia90.fiesta_patronal = nil;
    iglesia90.erigida = nil;
    iglesia90.parroco = nil;
    iglesia90.correspondencia = nil;
    
    Iglesias *iglesia91 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia91.tipo = @"Parroquia";
    iglesia91.nombre = @"Parroquia de Nuestra Señora del Perpetuo Socorro";
    iglesia91.direccion = @"México #91, Col. 5 de Mayo, C.P. 35040 ";
    iglesia91.ciudad = @"Gómez Palacio, Dgo.";
    iglesia91.telefono = @"871/ 715-4058";
    iglesia91.fax = nil;
    iglesia91.email = nil;
    iglesia91.capellan = nil;
    iglesia91.fiesta_patronal = nil;
    iglesia91.erigida = nil;
    iglesia91.parroco = nil;
    iglesia91.correspondencia = nil;
    
    Iglesias *iglesia92 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia92.tipo = @"Parroquia";
    iglesia92.nombre = @"Parroquia del Espíritu Santo";
    iglesia92.direccion = @"Av. Ingenieros y Calle 17, Fracc. Filadelfia, C.P. 35000 ";
    iglesia92.ciudad = @"Gómez Palacio, Dgo.";
    iglesia92.telefono = @"871/ 715-8980 ";
    iglesia92.fax = nil;
    iglesia92.email = nil;
    iglesia92.capellan = nil;
    iglesia92.fiesta_patronal = nil;
    iglesia92.erigida = nil;
    iglesia92.parroco = nil;
    iglesia92.correspondencia = nil;

    Iglesias *iglesia93 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia93.tipo = @"Parroquia";
    iglesia93.nombre = @"Parroquia de Santa María de Guadalupe ";
    iglesia93.direccion = @"Hidalgo e Indepenencia, Centro";
    iglesia93.ciudad = @"Gómez Palacio, Dgo.";
    iglesia93.telefono = @"871/ 714-1294";
    iglesia93.fax = nil;
    iglesia93.email = nil;
    iglesia93.capellan = nil;
    iglesia93.fiesta_patronal = nil;
    iglesia93.erigida = nil;
    iglesia93.parroco = nil;
    iglesia93.correspondencia = nil;

    Iglesias *iglesia94 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia94.tipo = @"Parroquia";
    iglesia94.nombre = @"Parroquia de la Sagrada Familia ";
    iglesia94.direccion = @"Victoria y Colima, Col. Las Rosas, C.P. 35090 ";
    iglesia94.ciudad = @"Gómez Palacio, Dgo.";
    iglesia94.telefono = @"871/ 714-6488 ";
    iglesia94.fax = nil;
    iglesia94.email = nil;
    iglesia94.capellan = nil;
    iglesia94.fiesta_patronal = nil;
    iglesia94.erigida = nil;
    iglesia94.parroco = nil;
    iglesia94.correspondencia = nil;

    Iglesias *iglesia95 =[NSEntityDescription insertNewObjectForEntityForName:@"Iglesias" inManagedObjectContext:_managedObjectContext];
    iglesia95.tipo = @"Parroquia";
    iglesia95.nombre = @"Parroquia de Nuestra Señora del Carmen ";
    iglesia95.direccion = @"D. Arango y A. López, Col. El Dorado, C.P. 35028 ";
    iglesia95.ciudad = @"Gómez Palacio, Dgo.";
    iglesia95.telefono = @"871/ 715-5151";
    iglesia95.fax = nil;
    iglesia95.email = nil;
    iglesia95.capellan = nil;
    iglesia95.fiesta_patronal = nil;
    iglesia95.erigida = nil;
    iglesia95.parroco = nil;
    iglesia95.correspondencia = nil;
    
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////////// S E R V I C I O S ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
#pragma mark - SERVICIOS
    
    NSEntityDescription *entityServicios = [NSEntityDescription entityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    [fetchRequest setEntity:entityServicios];
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////--------------------------------SERVICIO 1------------------------------------///////////////////////
    
    Servicios *servicio1 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio1.nombre = @"Cine";
    servicio1.icono = @"profile.png";
    
    Servicios *servicio2 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio2.nombre = @"Clima";
    servicio2.icono = @"gear.png";
    
    Servicios *servicio3 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio3.nombre = @"Directorio";
    servicio3.icono = @"globe.png";
    
    Servicios *servicio4 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio4.nombre = @"Divisas";
    servicio4.icono = @"star.png";
    
    Servicios *servicio5 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio5.nombre = @"Emergencias";
    servicio5.icono = @"profile.png";
    
    Servicios *servicio6 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio6.nombre = @"Eventos";
    servicio6.icono = @"gear.png";
    
    Servicios *servicio7 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio7.nombre = @"Horoscopos";
    servicio7.icono = @"globe.png";
    
    Servicios *servicio8 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio8.nombre = @"Iglesias";
    servicio8.icono = @"star.png";
    
    Servicios *servicio9 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio9.nombre = @"Lalaguna";
    servicio9.icono = @"profile.png";
    
    Servicios *servicio11 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio11.nombre = @"Museos";
    servicio11.icono = @"gear.png";
    
    Servicios *servicio12 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio12.nombre = @"Obituarios";
    servicio12.icono = @"globe.png";
    
    Servicios *servicio13 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio13.nombre = @"Tienda";
    servicio13.icono = @"star.png";
    
    Servicios *servicio14 =[NSEntityDescription insertNewObjectForEntityForName:@"Servicios" inManagedObjectContext:_managedObjectContext];
    servicio14.nombre = @"Vuelos";
    servicio14.icono = @"profile.png";
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    
#pragma mark - Salvar Contexto
    
    NSError *error = nil;
    if (![_managedObjectContext save:&error]) {
		abort();
    }
}

@end
