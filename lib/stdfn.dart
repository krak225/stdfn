
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import 'stdfn_platform_interface.dart';

class Stdfn {

  Future<String?> getPlatformVersion() {
    return StdfnPlatform.instance.getPlatformVersion();
  }

  String uiid() {
    String uiid = Uuid().v4();
    return uiid;
  }

  String toAmount(int number) {
    var formatter = new NumberFormat("#,###");
    return formatter.format(number).replaceAll(",", " ");
  }

  String dateFromDB(String dateStr) {
    DateTime date = DateTime.parse(dateStr);
    String formattedDate = DateFormat('dd/MM/yyyy').format(date);
    return formattedDate;
  }

  String dateTimeFromDB(String dateStr) {
    DateTime date = DateTime.parse(dateStr);
    String formattedDate = DateFormat('dd/MM/yyyy à HH:mm').format(date);
    return formattedDate;
  }

  int roundToNext(double nombre, int multiple) {
    if (nombre % multiple == 0) {
      return nombre.toInt();
    } else {
      return (nombre / multiple).ceil() * multiple;
    }
  }

  bool isDouble(String value) {
    final regex = RegExp(r'^-?[0-9]+\.[0-9]+$');
    return regex.hasMatch(value);
  }

}

extension StfdnPluginExtension on Object {
  Stdfn get stfdn => Stdfn();
}
