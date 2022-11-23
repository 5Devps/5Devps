import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:turismo_colombia/boxes.dart';
import 'package:turismo_colombia/models/sites_adapter.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Favoritos'),
      ),
      backgroundColor: Colors.lightGreen,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: _buildListView(),
        ),
      ),
    );
  }

  Widget _buildListView() {
    return ValueListenableBuilder<Box<SiteAdapter>>(
      valueListenable: Boxes.getFavoritesBox().listenable(),
      builder: (context, box, _) {
        final siteBox = box.values.toList().cast<SiteAdapter>();
        return ListView.builder(
          itemCount: siteBox.length,
          itemBuilder: (BuildContext context, i) {
            final pass = siteBox[i];
            //final site = site[index];

            //TAREJETAS CON INFORMACIÓN DE LOS SITIOS
            return Card(
              child: ListTile(
                //AVATAR
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(pass.urlAvatar ?? ""),
                ),

                //TITULO DEL SITIO, DESCRIPCIÓN CORTA Y FLECHA DE ENLACE A PAGINA POI
                title: Text(pass.siteName ?? ""),
                subtitle: Text(pass.description ?? ""),

                onLongPress: () {
                  setState(() {
                    pass.delete();
                  });
                },

                //PRUEBA A FUTURO DE ICONO EN PANTALLA FAVORITOS EN CADA CARD
                //trailing: const Icon(Icons.arrow_forward),
                /*onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SitePage(site: ),
                      ),
                      );
                    },*/
              ),
            );
          },
        );
      },
    );
  }
}
