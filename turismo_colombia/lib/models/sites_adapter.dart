import 'package:hive_flutter/hive_flutter.dart';

part 'sites_adapter.g.dart';

@HiveType(typeId: 0)
class SiteAdapter extends HiveObject {
  @HiveField(0)
  String? siteName;

  @HiveField(1)
  String? cityName;

  @HiveField(2)
  String? departmentName;

  @HiveField(3)
  String? temperature;

  @HiveField(4)
  String? description;

  @HiveField(5)
  String? urlAvatar;
}
