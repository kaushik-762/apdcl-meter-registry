// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumers.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConsumersAdapter extends TypeAdapter<Consumers> {
  @override
  final int typeId = 7;

  @override
  Consumers read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Consumers()
      ..cID = fields[0] as String
      ..cName = fields[1] as String
      ..email = fields[2] as String
      ..metermake = fields[3] as String
      ..phaseType = fields[4] as String
      ..pin = fields[5] as String
      ..date = fields[6] as String;
  }

  @override
  void write(BinaryWriter writer, Consumers obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.cID)
      ..writeByte(1)
      ..write(obj.cName)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.metermake)
      ..writeByte(4)
      ..write(obj.phaseType)
      ..writeByte(5)
      ..write(obj.pin)
      ..writeByte(6)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConsumersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
