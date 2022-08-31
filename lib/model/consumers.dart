import 'package:hive/hive.dart';
part 'consumers.g.dart';


@HiveType(typeId: 7)


class Consumers extends HiveObject{
  @HiveField(0)
  late String cID;

  @HiveField(1)
  late String cName;

  @HiveField(2)
  late String email;

  @HiveField(3)
  late String metermake;

  @HiveField(4)
  late String phaseType;

  @HiveField(5)
  late String pin;

  @HiveField(6)
  late String date;

}