// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sites {
  final String id;
  final String siteName;
  final String cityName;
  final String departmentName;
  final String temperature;
  final String description;
  final String fullDescription;
  final String urlAvatar;
  final String urlMaps;
  final String address;
  final double latitud;
  final double longitud;

  String? name;

  var imageLink;

  Sites({
    required this.id,
    required this.siteName,
    required this.cityName,
    required this.departmentName,
    required this.temperature,
    required this.description,
    required this.fullDescription,
    required this.urlAvatar,
    required this.urlMaps,
    required this.address,
    required this.latitud,
    required this.longitud,
  });
}
