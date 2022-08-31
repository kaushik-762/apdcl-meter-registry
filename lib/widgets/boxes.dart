import 'package:hive/hive.dart';
import 'package:apdcl_meter_registry_system/model/consumers.dart';

class Boxes{
  static Box<Consumers> getConsumers()=>
    Hive.box<Consumers>('consumers');
}