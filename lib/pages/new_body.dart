// import 'dart:collection';
// import 'dart:core';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'utils.dart';
//
// class Body extends StatefulWidget {
//   @override
//   _TableEventsExampleState createState() => _TableEventsExampleState();
// }
//
// class _TableEventsExampleState extends State<Body> {
//   ValueNotifier<List<Event>> _selectedEvents;
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   DateTime _focusedDay = DateTime.now();
//   DateTime _selectedDay;
//   DateTime _rangeStart;
//   DateTime _rangeEnd;
//   bool isSameDay(DateTime a, DateTime b) {
//     if (a == null || b == null) {
//       return false;
//     }
//     return a.year == b.year && a.month == b.month && a.day == b.day;
//   }
//
//   LinkedHashMap<DateTime, List<Event>> _kEvents;
//
//   @override
//   void initState() {
//     super.initState();
//     getDriversListCalender().then((results) {
//       setState(() {
//         querySnapshotCalender = results;
//       });
//       // listFirebase();
//     });
//
//     _selectedDay = _focusedDay;
//     _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay));
//   }
//
//   List<Event> _getEventsForDay(DateTime day) {
//     // Implementation example
//     return _kEvents[day];
//   }
//
//   void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
//     if (!isSameDay(_selectedDay, selectedDay)) {
//       setState(() {
//         _selectedDay = selectedDay;
//         _focusedDay = focusedDay;
//         _rangeStart = null; // Important to clean those
//         _rangeEnd = null;
//       });
//       _selectedEvents.value = _getEventsForDay(selectedDay);
//     }
//   }
//
//   QuerySnapshot querySnapshotCalender;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TableCalendar - Events'),
//       ),
//       body: Column(
//         children: [
//           TableCalendar<Event>(
//             firstDay: kFirstDay,
//             lastDay: kLastDay,
//             focusedDay: _focusedDay,
//             selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
//             rangeStartDay: _rangeStart,
//             rangeEndDay: _rangeEnd,
//             calendarFormat: _calendarFormat,
//             // rangeSelectionMode: _rangeSelectionMode,
//             eventLoader: _getEventsForDay,
//             startingDayOfWeek: StartingDayOfWeek.monday,
//             calendarStyle: CalendarStyle(
//               // Use `CalendarStyle` to customize the UI
//               outsideDaysVisible: false,
//             ),
//             onDaySelected: _onDaySelected,
//             // onRangeSelected: _onRangeSelected,
//             onFormatChanged: (format) {
//               if (_calendarFormat != format) {
//                 setState(() {
//                   _calendarFormat = format;
//                 });
//               }
//             },
//             onPageChanged: (focusedDay) {
//               _focusedDay = focusedDay;
//             },
//           ),
//           const SizedBox(height: 8.0),
//           _showCalender(),
//         ],
//       ),
//     );
//   }
//
//   getDriversListCalender() async {
//     return await FirebaseFirestore.instance.collection('calender').get();
//   }
//
//   List listFirebase() {
//     List lis = [];
//     if (querySnapshotCalender != null) {
//       for (int q = 0; q < querySnapshotCalender.docs.length; q++) {
//         lis.add(querySnapshotCalender.docs[q]['arr']);
//         print(querySnapshotCalender.docs[q]['arr']);
//       }
//       print(lis);
//       LinkedHashMap<DateTime, List<Event>> _kEvents = popkEventSource(lis);
//       print("i am not empty");
//       // return lis;
//     } else {
//       print("I am empty");
//     }
//   }
//
//   Widget _showCalender() {
//     return Expanded(
//       child: ValueListenableBuilder<List<Event>>(
//         valueListenable: _selectedEvents,
//         builder: (context, value, _) {
//           return ListView.builder(
//             itemCount: value.length,
//             itemBuilder: (context, index) {
//               print("+++++++++++++++++++++++++");
//               print(_selectedEvents);
//               return Container(
//                 margin: const EdgeInsets.symmetric(
//                   horizontal: 12.0,
//                   vertical: 4.0,
//                 ),
//                 decoration: BoxDecoration(
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(12.0),
//                 ),
//                 child: ListTile(
//                   // onTap: () => _launchInApp(
//                   //   '${value[index]}'.split(";")[1],
//                   // ),
//                   title: Text(
//                     '${value[index]}'.split(";")[0],
//                     style: TextStyle(
//                         color: Colors.blue, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
