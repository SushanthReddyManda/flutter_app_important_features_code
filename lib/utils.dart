// import 'dart:collection';
// import 'package:table_calendar/table_calendar.dart';
//
// /// Example event class.
// class Event {
//   final String title;
//   const Event(this.title);
//   @override
//   String toString() => title;
// }
//
// final kEvents = LinkedHashMap<DateTime, List<Event>>(
//   equals: isSameDay,
//   hashCode: getHashCode,
// )..addAll(_kEventSource);
//
// final _kEventSource = Map.fromIterable(
//   [
//     [2021, 7, 5, 1, "event-5-1"],
//     [
//       2021,
//       7,
//       7,
//       2,
//       ["event-7-1", "event-7-2"]
//     ]
//   ],
//   // List.generate(50, (index) => index),
//   // print(index),
//   key: (item) => DateTime.utc(item[0], item[1], item[2]),
//   value: (item) => List.generate(
//     item[3], (index) => Event(item[4][index]),
//     // (index) => Event('Event $item | ${index + 1}'),
//   ),
// );
//
// int getHashCode(DateTime key) {
//   return key.day * 1000000 + key.month * 10000 + key.year;
// }
//
// final kToday = DateTime.now();
// final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
// final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
//
// //===================================================================================
