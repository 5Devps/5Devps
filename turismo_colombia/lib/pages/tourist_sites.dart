// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:turismo_colombia/models/sites.dart';
import 'package:turismo_colombia/pages/site_page.dart';

import '../repository/rating_box.dart';

import 'login_page.dart';

//PAGINA DE LISTA DE SITIOS
class TouristSitesPage extends StatefulWidget {
  const TouristSitesPage({super.key});

  @override
  State<TouristSitesPage> createState() => _TouristSitesPageState();
}

//INSTANCIAS DE LA CLASE SITIOS
class _TouristSitesPageState extends State<TouristSitesPage> {
  List<Sites> sites = [
    Sites(
        id: '',
        siteName: 'TORRE DEL RELOJ',
        cityName: 'CIUDAD: POPAYÁN',
        departmentName: 'DEPARTAMENTO: CAUCA',
        temperature: 'TEMPERATURA: 14-25 °C ',
        description:
            'Esta atractiva estructura de estilo colonial se construyó entre 1673 y 1682 con 90,000 ladrillos.',
        fullDescription:
            'Puedes comenzar tu gira a través de Popayán, preguntándote voy a ver la hermosa torre del reloj, también conocida como "La nariz de Popayán". Se encuentra en la esquina suroeste de Parque Caldas, en el centro histórico de la ciudad.Esta atractiva estructura de estilo colonial se construyó entre 1673 y 1682 con 90,000 ladrillos. Es un regalo hecho por los sacerdotes de la zona en el año 1737. Aunque el terremoto de 1983 dañó la torre hasta cierto punto, se puede restaurar sin ningún inconveniente. Definitivamente, es un distintivo de Popayán que debes dejar de apreciar',
        urlAvatar: 'assets/images/TorreReloj3.jpg',
        urlMaps:
            "https://lh5.googleusercontent.com/p/AF1QipNQcCajiOBaqxNfIVBBZACkMSEifG3vFF3iXtYR=w408-h306-k-no",
        address: "cr6-111 a, Cl 5 #6-1, Popayán, Cauca",
        latitud: 2.4415217,
        longitud: -76.6069759),
    Sites(
        id: '',
        siteName: 'CATEDRAL N. SEÑORA DE LA ASUNCIÓN',
        cityName: 'CIUDAD: POPAYÁN',
        departmentName: 'DEPARTAMENTO: CAUCA',
        temperature: 'TEMPERATURA: 14-25 °C ',
        description:
            'En estos recintos, podrá notar una arquitectura colonial o neoclásica muy interesante',
        fullDescription:
            'Puedes visitar varias iglesias en Popayán, mucho más interesantes para las fechas como Pascua. Entre ellos se encuentra la Catedral de Nuestra Señora de la Asunción, la Iglesia de San Francisco, el Santuario de Belén, la Ermita de Popayán y el Templo de la Encarnación de las Monjas. En estos recintos, podrá notar una arquitectura colonial o neoclásica muy interesante, así como las obras artísticas de varios tipos que llamarán su atención por su belleza. Tómese un tiempo para apreciar los detalles de estos edificios religiosos, ya que son una parte importante de la historia y las costumbres de la ciudad.',
        urlAvatar: 'assets/images/Iglesias2.jpg',
        urlMaps:
            "https://lh5.googleusercontent.com/p/AF1QipPH7GsT7gwem7z3WZjGwrRlDbQQXNCpKt3lZpU2=w408-h292-k-no",
        address: "Cl. 5a, Centro, Popayán, Cauca",
        latitud: 2.4412884,
        longitud: -76.6066659),
    Sites(
        id: '',
        siteName: 'PUENTE HUMILLADERO',
        cityName: 'CIUDAD: POPAYÁN',
        departmentName: 'DEPARTAMENTO: CAUCA',
        temperature: 'TEMPERATURA: 14-25 °C ',
        description:
            'Es una construcción que se remonta a finales del siglo XIX',
        fullDescription:
            'El Puente Humilladero es otro lugar en el que debe visitar en su viaje a Popayán. Es una construcción que se remonta a finales del siglo XIX, y que ha sido parte de las generaciones de Popayanejos. Su nombre se debe a que antes de su construcción hubiera una pendiente en el suelo que hizo que la gente caminaba inclinada, como si se humillaban. El detalle es que da un toque misterioso al puente.Además, entre sus atracciones son sus 12 arcos, donde pasa el río Molino. Adicionalmente, desde aquí puede tomar fotografías increíbles, ya que la vista de la ciudad es espectacular.',
        urlAvatar: 'assets/images/PuenteHumilladero2.jpg',
        urlMaps:
            "https://lh5.googleusercontent.com/p/AF1QipPMf3BInhjyOSd7n5-H5dYNvnpFmJFwQbFLzU6c=w408-h272-k-no",
        address: "Cra. 5 #1-28, Centro, Popayán, Cauca",
        latitud: 2.4439943,
        longitud: -76.6048822),
    Sites(
        id: '',
        siteName: 'MORRO DEL TULCÁN',
        cityName: 'CIUDAD: POPAYÁN',
        departmentName: 'DEPARTAMENTO: CAUCA',
        temperature: 'TEMPERATURA: 14-25 °C',
        description:
            'Uno de los monumentos precolombinos más importantes de la ciudad de Popayán.',
        fullDescription:
            'El Morro de Tulcán, uno de los monumentos precolombinos más importantes de la ciudad de Popayán. Aquí puede ver el espacio donde había un cementerio que pertenecía a los pueblos indígenas pubeneanos, donde se encuentra que se encuentran las tumbas y otros objetos de valor histórico.Incluso, en este lugar puedes ver un monumento a Sebastián de Belalcázar, el fundador de la ciudad. Sin lugar a duda, es un punto esencial para visitar en Popayán.',
        urlAvatar: 'assets/images/morroTulcan.jpg',
        urlMaps:
            "https://lh5.googleusercontent.com/p/AF1QipPq3rt1EueYyI3T_qsNVPdA5P4Pu0_QufWj2hif=w443-h240-k-no",
        address: "Cl. 1, Popayán, Cauca",
        latitud: 2.4446051,
        longitud: -76.6002541),
    Sites(
        id: '',
        siteName: 'RINCÓN DE PAYANÉS',
        cityName: 'CIUDAD: POPAYÁN',
        departmentName: 'DEPARTAMENTO: CAUCA',
        temperature: 'TEMPERATURA: 14-25 °C ',
        description: 'Es una réplica de la ciudad hecha por miniatura.',
        fullDescription:
            'La esquina de Palenese o "Pueblito Patojo". Es una réplica de la ciudad hecha por miniatura para que las atracciones de Popayán puedan verse en su totalidad.Aquí puede ver los edificios principales hechos a escala, así como varias exposiciones artísticas, así como artesanías hechas por los lugareños. Incluso en este lugar, puede probar los deliciosos platos típicos del departamento de Cauca.',
        urlAvatar: 'assets/images/payanes.jpg',
        urlMaps:
            "https://lh5.googleusercontent.com/p/AF1QipO17UWMHLTmQFIAjZmx4syuEve3bkf1Fd2ifadz=w408-h306-k-no",
        address: "Popayán, Cauca",
        latitud: 2.4434422,
        longitud: -76.5984837),
    Sites(
        id: '',
        siteName: 'PARQUE NATURAL PURACÉ',
        cityName: 'CIUDAD: POPAYÁN',
        departmentName: 'DEPARTAMENTO: CAUCA',
        temperature: 'TEMPERATURA: 14-25 °C',
        description:
            'Ubicado a 30 minutos en camino de Popayán. Este parque incluye los departamentos de Cauca y Huila.',
        fullDescription:
            'El Parque Nacional Puracé Natural, ubicado a 30 minutos en camino de Popayán. Este parque incluye los departamentos de Cauca y Huila. Dentro de esta área protegida se encuentra el complejo volcánico Serranía de los Cocos, Puracé, Coconuco, el volcán Sotará, entre otras atracciones naturales.Entre las actividades que puede realizar en este lugar, visitan las Termas de San Juan, recorriendo la ruta del cóndor para observar a esta magnífica ave, disfrutar de las cascadas para conocer la laguna de San Rafael y mucho más. Definitivamente, es el destino turístico perfecto para amantes de la naturaleza y la aventura.',
        urlAvatar: 'assets/images/purace1.jpg',
        urlMaps:
            "https://lh5.googleusercontent.com/p/AF1QipNyUjqRNgnB-16elkFsbEBRvKkBwQec_fS9Eqth=w408-h544-k-no",
        address: "Popayán-Isnos, Cauca",
        latitud: 2.128216,
        longitud: -76.4160547),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: const Text("Sitios Turisticos"),
      ),
      body: ListView.builder(
          itemCount: sites.length,
          itemBuilder: (context, index) {
            final site = sites[index];

            //TAREJETAS CON INFORMACIÓN DE LOS SITIOS
            return Card(
              child: ListTile(
                //AVATAR
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(site.urlAvatar),
                ),

                //TITULO DEL SITIO, DESCRIPCIÓN CORTA Y FLECHA DE ENLACE A PAGINA POI
                title: Text(site.siteName),
                subtitle: Text(site.description),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SitePage(site: site),
                  ));
                },
              ),
            );
          }),

      //BOTON FLOTANTE
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.home),
      ),
    );
  }
}
