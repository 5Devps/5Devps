import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:turismo_colombia/models/place.dart';

class Geolocation extends StatefulWidget {
  final Place place;
  const Geolocation(this.place, {super.key});

  @override
  State<Geolocation> createState() => _GeolocationState();
}

//GEOLOCALIZACIÓN
class _GeolocationState extends State<Geolocation> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
            target: LatLng(widget.place.latitud, widget.place.longitud),
            zoom: 16),
        markers: _marker(),
      ),
    );
  }

//METODO MARCADOR DE LUGAR EN EL MAPA
  Set<Marker> _marker() {
    var marker = Set<Marker>();

    marker.add(
      Marker(
          markerId: MarkerId(widget.place.address),
          position: LatLng(widget.place.latitud, widget.place.longitud),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          infoWindow: InfoWindow(
            title: widget.place.address,
          )),
    );
    return marker;
  }
}
