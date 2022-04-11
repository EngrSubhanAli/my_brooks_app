import 'package:intl/intl.dart';

String celebrityScheduleDate =
    DateFormat('EEE, MMM d, ' 'yyyy').format(DateTime.now());

class CelebritySchedule {
  String date;

  CelebritySchedule({
    required this.date,
  });
}

// List<CelebritySchedule> celebritySchedule = [];
