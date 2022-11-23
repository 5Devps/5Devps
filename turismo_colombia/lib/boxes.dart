import 'package:hive/hive.dart';
import 'package:turismo_colombia/models/sites.dart';
import 'package:turismo_colombia/models/sites_adapter.dart';

class Boxes {
  static Box<SiteAdapter> getFavoritesBox() => Hive.box<SiteAdapter>('db');
}
