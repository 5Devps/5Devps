// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sites_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SiteAdapterAdapter extends TypeAdapter<SiteAdapter> {
  @override
  final int typeId = 0;

  @override
  SiteAdapter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SiteAdapter()
      ..siteName = fields[0] as String?
      ..cityName = fields[1] as String?
      ..departmentName = fields[2] as String?
      ..temperature = fields[3] as String?
      ..description = fields[4] as String?
      ..urlAvatar = fields[5] as String?;
  }

  @override
  void write(BinaryWriter writer, SiteAdapter obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.siteName)
      ..writeByte(1)
      ..write(obj.cityName)
      ..writeByte(2)
      ..write(obj.departmentName)
      ..writeByte(3)
      ..write(obj.temperature)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.urlAvatar);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SiteAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
