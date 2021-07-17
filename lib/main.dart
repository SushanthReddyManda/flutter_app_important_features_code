import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
// import 'dart:math';
import 'HomePage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share/share.dart';
import 'package:quiz_view/quiz_view.dart';
import 'image_previews.dart';
//   Notifications ============
// import 'dart:math';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:awesome_notifications_example/routes.dart';
// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:awesome_notifications_example/models/media_model.dart';
// import 'package:awesome_notifications_example/utils/media_player_central.dart';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'video_list.dart';

//================  Calender ========
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
//================ End calender =========
//================ Provider ===========
import 'package:provider/provider.dart';
//================ End Provider =======
//========== Flutter Offline ===========
import 'package:flutter_offline/flutter_offline.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());
//============================================ Angela course ======================================
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.amber,
//                 child: Text('Container 1'),
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.redAccent,
//                 child: Text('Container 2'),
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.orangeAccent,
//                 child: Text('Container 3'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//=========================================  End of Angela course ==========================

//======================== Overlapping Demo stack one ===========================================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyAppOne(),
//     );
//   }
// }
//
// class MyAppOne extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyAppOne> {
//   @override
//   Widget build(BuildContext context) {
//     return new Stack(
//       children: <Widget>[
//         // The containers in the background
//         new Column(
//           children: <Widget>[
//             new Container(
//               height: MediaQuery.of(context).size.height * 1,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [Colors.white, Colors.blueGrey.shade700],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         // The card widget with top padding,
//         // incase if you wanted bottom padding to work,
//         // set the `alignment` of container to Alignment.bottomCenter
//         new Container(
//             alignment: Alignment.topCenter,
//             padding: new EdgeInsets.only(
//                 top: MediaQuery.of(context).size.height * .25,
//                 right: 20.0,
//                 left: 20.0),
//             child: new Container(
//               height: 500.0,
//               width: MediaQuery.of(context).size.width,
//               child: new Card(
//                 //   color: Colors.white,
//                 //   elevation: 4.0,
//                 // ),
//                 // child : Scaffold(
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 100,
//                     ),
//                     Padding(
//                       //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//                       padding: EdgeInsets.symmetric(horizontal: 15),
//                       child: TextField(
//                         decoration: InputDecoration(
//                             // border: OutlineInputBorder(),
//                             labelText: 'User Id',
//                             hintText: ''),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 15.0, right: 15.0, top: 15, bottom: 0),
//                       //padding: EdgeInsets.symmetric(horizontal: 15),
//                       child: TextField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             // border: OutlineInputBorder(),
//                             labelText: 'Password',
//                             hintText: ''),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 15.0, right: 15.0, top: 15, bottom: 0),
//                       //padding: EdgeInsets.symmetric(horizontal: 15),
//                       child: TextField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             // border: OutlineInputBorder(),
//                             // border: InputBorder.none,
//
//                             labelText: 'Institute code',
//                             hintText: ''),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Container(
//                       height: 50,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         color: Colors.blueGrey.shade800,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: TextButton(
//                         onPressed: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (_) => HomePage()));
//                         },
//                         child: Text(
//                           'Login',
//                           style: TextStyle(color: Colors.white, fontSize: 25),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )),
//         new Container(
//           alignment: Alignment.topCenter,
//           padding: new EdgeInsets.only(
//               top: MediaQuery.of(context).size.height * .22,
//               right: 20.0,
//               left: 20.0),
//           child: new Container(
//             width: 300,
//             height: 90.0,
//             // width: MediaQuery.of(context).size.width,
//             child: new Card(
//               color: Colors.blueGrey.shade900,
//               elevation: 4.0,
//               child: Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       'Assess',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       'Core',
//                       style: TextStyle(
//                         color: Colors.green.shade600,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// TextButton(
//   onPressed: () {
//     //TODO FORGOT PASSWORD SCREEN GOES HERE
//   },
//   child: Text(
//     'Forgot Password',
//     style: TextStyle(color: Colors.blue, fontSize: 15),
//   ),
// ),

// ======================= End of overlapping Demo stack one =======================================

//========================================== The first login page ============================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginDemo(),
//     );
//   }
// }
//
// class LoginDemo extends StatefulWidget {
//   @override
//   _LoginDemoState createState() => _LoginDemoState();
// }
//
// class _LoginDemoState extends State<LoginDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [Colors.white, Colors.white12])),
//       // backgroundColor: Colors.white,
//       // // appBar: AppBar(
//       // //   title: Text("Login Page"),
//       // // ),
//
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.only(top: 60.0),
//                   child: Center(
//                       // child: Container(
//                       //     width: 200,
//                       //     height: 150,
//                       //     /*decoration: BoxDecoration(
//                       //         color: Colors.red,
//                       //         borderRadius: BorderRadius.circular(50.0)),*/
//                       //     child: Image.asset('assets/images/kameng.png')),
//                       ),
//                 ),
//                 Padding(
//                   //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//                   padding: EdgeInsets.symmetric(horizontal: 15),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Email',
//                         hintText: 'Enter valid email id as abc@gmail.com'),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 15.0, right: 15.0, top: 15, bottom: 0),
//                   //padding: EdgeInsets.symmetric(horizontal: 15),
//                   child: TextField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Password',
//                         hintText: 'Enter secure password'),
//                   ),
//                 ),
//                 // TextButton(
//                 //   onPressed: () {
//                 //     //TODO FORGOT PASSWORD SCREEN GOES HERE
//                 //   },
//                 //   child: Text(
//                 //     'Forgot Password',
//                 //     style: TextStyle(color: Colors.blue, fontSize: 15),
//                 //   ),
//                 // ),
//                 Container(
//                   height: 50,
//                   width: 250,
//                   decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(0)),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (_) => HomePage()));
//                     },
//                     child: Text(
//                       'Login',
//                       style: TextStyle(color: Colors.white, fontSize: 25),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 130,
//                 ),
//                 Text('New User? Create Account')
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

//========================== End of First login page ========================================

// ========================================  Flutter inbulit demo app ============================
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

//============================  Scrollable text test ======================================================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => new Scaffold(
//         appBar: new AppBar(
//           backgroundColor: new Color(0xFF26C6DA),
//         ),
//         body: new ListView(
//           children: <Widget>[
//             new Card(
//               child: new Container(
//                 padding:
//                     new EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
//                 child: new Row(
//                   children: <Widget>[
//                     new Container(
//                         padding: new EdgeInsets.only(right: 24.0),
//                         child: new CircleAvatar(
//                           backgroundColor: new Color(0xFFF5F5F5),
//                           radius: 16.0,
//                         )),
//                     Flexible(
//                       child: new Container(
//                         padding: new EdgeInsets.only(right: 13.0),
//                         child: new Text(
//                           'Text lar........................',
//                           overflow: TextOverflow.ellipsis,
//                           style: new TextStyle(
//                             fontSize: 13.0,
//                             fontFamily: 'Roboto',
//                             color: new Color(0xFF212121),
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     new Container(
//                         child: new Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: <Widget>[
//                           new Row(
//                             children: <Widget>[
//                               new Text(
//                                 'Bill  ',
//                                 style: new TextStyle(
//                                     fontSize: 12.0,
//                                     fontFamily: 'Roboto',
//                                     color: new Color(0xFF9E9E9E)),
//                               ),
//                               new Text(
//                                 '\$ -999.999.999,95',
//                                 style: new TextStyle(
//                                     fontSize: 14.0,
//                                     fontFamily: 'Roboto',
//                                     color: new Color(0xFF212121)),
//                               ),
//                             ],
//                           ),
//                           new Row(
//                             children: <Widget>[
//                               new Text(
//                                 'Limit  ',
//                                 style: new TextStyle(
//                                     fontSize: 12.0,
//                                     fontFamily: 'Roboto',
//                                     color: new Color(0xFF9E9E9E)),
//                               ),
//                               new Text(
//                                 'R\$ 900.000.000,95',
//                                 style: new TextStyle(
//                                     fontSize: 14.0,
//                                     fontFamily: 'Roboto',
//                                     color: new Color(0xFF9E9E9E)),
//                               ),
//                             ],
//                           ),
//                         ]))
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
// }

//==========================  Appbar scroll with Tab A , Tab B ===================================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: CustomSliverAppbar(),
//     );
//   }
// }
//
// class CustomSliverAppbar extends StatefulWidget {
//   @override
//   _CustomSliverAppbarState createState() => _CustomSliverAppbarState();
// }
//
// class _CustomSliverAppbarState extends State<CustomSliverAppbar>
//     with SingleTickerProviderStateMixin {
//   TabController _tabController;
//
//   @override
//   void initState() {
//     _tabController = TabController(
//       initialIndex: 0,
//       length: 2,
//       vsync: this,
//     );
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NestedScrollView(
//         floatHeaderSlivers: true,
//         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//           return <Widget>[
//             SliverAppBar(
//               title: Text(
//                 "WhatsApp type sliver appbar",
//               ),
//               centerTitle: true,
//               pinned: true,
//               floating: true,
//               bottom: TabBar(
//                   indicatorColor: Colors.black,
//                   labelPadding: const EdgeInsets.only(
//                     bottom: 16,
//                   ),
//                   controller: _tabController,
//                   tabs: [
//                     Text("TAB A"),
//                     Text("TAB B"),
//                   ]),
//             ),
//           ];
//         },
//         body: TabBarView(
//           controller: _tabController,
//           children: [
//             TabA(),
//             const Center(
//               child: Text('Display Tab 2',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
// }
//
// class TabA extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scrollbar(
//       child: ListView.separated(
//         separatorBuilder: (context, child) => Divider(
//           height: 1,
//         ),
//         padding: EdgeInsets.all(0.0),
//         itemCount: 30,
//         itemBuilder: (context, i) {
//           return Container(
//             height: 100,
//             width: double.infinity,
//             color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
//           );
//         },
//       ),
//     );
//   }
// }
// ===============================   Flutter share ==========================================

// class MyApp extends StatefulWidget {
//   @override
//   DemoAppState createState() => DemoAppState();
// }
//
// class DemoAppState extends State<MyApp> {
//   String text = '';
//   String subject = '';
//   List<String> imagePaths = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Share Plugin Demo',
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Share Plugin Demo'),
//           ),
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(24.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   TextField(
//                     decoration: const InputDecoration(
//                       labelText: 'Share text:',
//                       hintText: 'Enter some text and/or link to share',
//                     ),
//                     maxLines: 2,
//                     onChanged: (String value) => setState(() {
//                       text = value;
//                     }),
//                   ),
//                   TextField(
//                     decoration: const InputDecoration(
//                       labelText: 'Share subject:',
//                       hintText: 'Enter subject to share (optional)',
//                     ),
//                     maxLines: 2,
//                     onChanged: (String value) => setState(() {
//                       subject = value;
//                     }),
//                   ),
//                   const Padding(padding: EdgeInsets.only(top: 12.0)),
//                   ImagePreviews(imagePaths, onDelete: _onDeleteImage),
//                   ListTile(
//                     leading: Icon(Icons.add),
//                     title: Text("Add image"),
//                     onTap: () async {
//                       final imagePicker = ImagePicker();
//                       final pickedFile = await imagePicker.getImage(
//                         source: ImageSource.gallery,
//                       );
//                       if (pickedFile != null) {
//                         setState(() {
//                           imagePaths.add(pickedFile.path);
//                         });
//                       }
//                     },
//                   ),
//                   const Padding(padding: EdgeInsets.only(top: 12.0)),
//                   Builder(
//                     builder: (BuildContext context) {
//                       return ElevatedButton(
//                         child: const Text('Share'),
//                         onPressed: text.isEmpty && imagePaths.isEmpty
//                             ? null
//                             : () => _onShare(context),
//                       );
//                     },
//                   ),
//                   const Padding(padding: EdgeInsets.only(top: 12.0)),
//                   Builder(
//                     builder: (BuildContext context) {
//                       return ElevatedButton(
//                         child: const Text('Share With Empty Origin'),
//                         onPressed: () => _onShareWithEmptyOrigin(context),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
//
//   _onDeleteImage(int position) {
//     setState(() {
//       imagePaths.removeAt(position);
//     });
//   }
//
//   _onShare(BuildContext context) async {
//     // A builder is used to retrieve the context immediately
//     // surrounding the ElevatedButton.
//     //
//     // The context's `findRenderObject` returns the first
//     // RenderObject in its descendent tree when it's not
//     // a RenderObjectWidget. The ElevatedButton's RenderObject
//     // has its position and size after it's built.
//     final RenderBox box = context.findRenderObject() as RenderBox;
//
//     if (imagePaths.isNotEmpty) {
//       await Share.shareFiles(imagePaths,
//           text: text,
//           subject: subject,
//           sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
//     } else {
//       await Share.share(text,
//           subject: subject,
//           sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
//     }
//   }
//
//   _onShareWithEmptyOrigin(BuildContext context) async {
//     await Share.share("text");
//   }
// }

//===============================  Quiz view ==============================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Quiz View Example',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.deepOrange,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Quiz View Example'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//           child: QuizView(
//         image: Container(
//           width: 150,
//           height: 150,
//           child: Image.network(
//               "https://yt3.ggpht.com/a/AATXAJyPMywRmD62sfK-1CXjwF0YkvrvnmaaHzs4uw=s900-c-k-c0xffffffff-no-rj-mo"),
//         ),
//         showCorrect: true,
//         tagBackgroundColor: Colors.deepOrange,
//         tagColor: Colors.black,
//         questionTag: "Question: 2",
//         answerColor: Colors.white,
//         answerBackgroundColor: Color.fromARGB(255, 255, 0, 111),
//         questionColor: Colors.white,
//         backgroundColor: Color.fromARGB(255, 111, 0, 255),
//         width: 300,
//         height: 600,
//         question: "Which is the best framework for app development?",
//         rightAnswer: "Flutter",
//         wrongAnswers: ["Fluttor", "Flitter"],
//         onRightAnswer: () => print("Right"),
//         onWrongAnswer: () => print("Wrong"),
//       )),
//     );
//   }
// }
// =====================================  Notifications Flutter =========================================
//
// class MyApp extends StatelessWidget {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   AwesomeNotifications().initialize(
//       'resource://drawable/res_app_icon',
//       [
//         NotificationChannel(
//             channelKey: 'basic_channel',
//             channelName: 'Basic notifications',
//             channelDescription: 'Notification channel for basic tests',
//             defaultColor: Color(0xFF9D50DD),
//             ledColor: Colors.white),
//         NotificationChannel(
//             channelKey: 'badge_channel',
//             channelName: 'Badge indicator notifications',
//             channelDescription: 'Notification channel to activate badge indicator',
//             channelShowBadge: true,
//             defaultColor: Color(0xFF9D50DD),
//             ledColor: Colors.yellow),
//         NotificationChannel(
//             channelKey: 'ringtone_channel',
//             channelName: 'Ringtone Channel',
//             channelDescription: 'Channel with default ringtone',
//             defaultColor: Color(0xFF9D50DD),
//             ledColor: Colors.white,
//             defaultRingtoneType: DefaultRingtoneType.Ringtone),
//         NotificationChannel(
//             channelKey: 'updated_channel',
//             channelName: 'Channel to update',
//             channelDescription: 'Notifications with not updated channel',
//             defaultColor: Color(0xFF9D50DD),
//             ledColor: Colors.white),
//         NotificationChannel(
//             channelKey: 'low_intensity',
//             channelName: 'Low intensity notifications',
//             channelDescription:
//             'Notification channel for notifications with low intensity',
//             defaultColor: Colors.green,
//             ledColor: Colors.green,
//             vibrationPattern: lowVibrationPattern),
//         NotificationChannel(
//             channelKey: 'medium_intensity',
//             channelName: 'Medium intensity notifications',
//             channelDescription:
//             'Notification channel for notifications with medium intensity',
//             defaultColor: Colors.yellow,
//             ledColor: Colors.yellow,
//             vibrationPattern: mediumVibrationPattern),
//         NotificationChannel(
//             channelKey: 'high_intensity',
//             channelName: 'High intensity notifications',
//             channelDescription:
//             'Notification channel for notifications with high intensity',
//             defaultColor: Colors.red,
//             ledColor: Colors.red,
//             vibrationPattern: highVibrationPattern),
//         NotificationChannel(
//             channelKey: "private_channel",
//             channelName: "Privates notification channel",
//             channelDescription: "Privates notification from lock screen",
//             playSound: true,
//             defaultColor: Colors.red,
//             ledColor: Colors.red,
//             vibrationPattern: lowVibrationPattern,
//             defaultPrivacy: NotificationPrivacy.Private),
//         NotificationChannel(
//             icon: 'resource://drawable/res_power_ranger_thunder',
//             channelKey: "custom_sound",
//             channelName: "Custom sound notifications",
//             channelDescription: "Notifications with custom sound",
//             playSound: true,
//             soundSource: 'resource://raw/res_morph_power_rangers',
//             defaultColor: Colors.red,
//             ledColor: Colors.red,
//             vibrationPattern: lowVibrationPattern),
//         NotificationChannel(
//             channelKey: "silenced",
//             channelName: "Silenced notifications",
//             channelDescription: "The most quiet notifications",
//             playSound: false,
//             enableVibration: false,
//             enableLights: false),
//         NotificationChannel(
//             icon: 'resource://drawable/res_media_icon',
//             channelKey: 'media_player',
//             channelName: 'Media player controller',
//             channelDescription: 'Media player controller',
//             defaultPrivacy: NotificationPrivacy.Public,
//             enableVibration: false,
//             enableLights: false,
//             playSound: false,
//             locked: true),
//         NotificationChannel(
//             channelKey: 'big_picture',
//             channelName: 'Big pictures',
//             channelDescription: 'Notifications with big and beautiful images',
//             defaultColor: Color(0xFF9D50DD),
//             ledColor: Color(0xFF9D50DD),
//             vibrationPattern: lowVibrationPattern),
//         NotificationChannel(
//             channelKey: 'big_text',
//             channelName: 'Big text notifications',
//             channelDescription: 'Notifications with a expandable body text',
//             defaultColor: Colors.blueGrey,
//             ledColor: Colors.blueGrey,
//             vibrationPattern: lowVibrationPattern),
//         NotificationChannel(
//             channelKey: 'inbox',
//             channelName: 'Inbox notifications',
//             channelDescription: 'Notifications with inbox layout',
//             defaultColor: Color(0xFF9D50DD),
//             ledColor: Color(0xFF9D50DD),
//             vibrationPattern: mediumVibrationPattern),
//         NotificationChannel(
//             channelKey: 'scheduled',
//             channelName: 'Scheduled notifications',
//             channelDescription: 'Notifications with schedule functionality',
//             defaultColor: Color(0xFF9D50DD),
//             ledColor: Color(0xFF9D50DD),
//             vibrationPattern: lowVibrationPattern,
//             importance: NotificationImportance.High,
//             defaultRingtoneType: DefaultRingtoneType.Alarm),
//         NotificationChannel(
//             icon: 'resource://drawable/res_download_icon',
//             channelKey: 'progress_bar',
//             channelName: 'Progress bar notifications',
//             channelDescription: 'Notifications with a progress bar layout',
//             defaultColor: Colors.deepPurple,
//             ledColor: Colors.deepPurple,
//             vibrationPattern: lowVibrationPattern,
//             onlyAlertOnce: true),
//         NotificationChannel(
//             channelKey: 'grouped',
//             channelName: 'Grouped notifications',
//             channelDescription: 'Notifications with group functionality',
//             groupKey: 'grouped',
//             groupSort: GroupSort.Desc,
//             groupAlertBehavior: GroupAlertBehavior.Children,
//             defaultColor: Colors.lightGreen,
//             ledColor: Colors.lightGreen,
//             vibrationPattern: lowVibrationPattern,
//             importance: NotificationImportance.High)
//       ],
//       debug: true
//   );
//
//   // Uncomment those lines after activate google services inside example/android/build.gradle
//   // Create the initialization Future outside of `build`:
//   //FirebaseApp firebaseApp = await Firebase.initializeApp();
//   //FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//
//   runApp(App());
// }
//
//
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   await Firebase.initializeApp();
//   print('Handling a background message: ${message.messageId}');
//
//   if(
//   !StringUtils.isNullOrEmpty(message.notification?.title, considerWhiteSpaceAsEmpty: true) ||
//       !StringUtils.isNullOrEmpty(message.notification?.body, considerWhiteSpaceAsEmpty: true)
//   ){
//     print('message also contained a notification: ${message.notification}');
//
//     String? imageUrl;
//     imageUrl ??= message.notification!.android?.imageUrl;
//     imageUrl ??= message.notification!.apple?.imageUrl;
//
//     Map<String, dynamic> notificationAdapter = {
//       NOTIFICATION_CHANNEL_KEY: 'basic_channel',
//       NOTIFICATION_ID:
//       message.data[NOTIFICATION_CONTENT]?[NOTIFICATION_ID] ??
//           message.messageId ??
//           Random().nextInt(2147483647),
//       NOTIFICATION_TITLE:
//       message.data[NOTIFICATION_CONTENT]?[NOTIFICATION_TITLE] ??
//           message.notification?.title,
//       NOTIFICATION_BODY:
//       message.data[NOTIFICATION_CONTENT]?[NOTIFICATION_BODY] ??
//           message.notification?.body ,
//       NOTIFICATION_LAYOUT:
//       StringUtils.isNullOrEmpty(imageUrl) ? 'Default' : 'BigPicture',
//       NOTIFICATION_BIG_PICTURE: imageUrl
//     };
//
//     AwesomeNotifications().createNotificationFromJsonData(notificationAdapter);
//   }
//   else {
//     AwesomeNotifications().createNotificationFromJsonData(message.data);
//   }
// }
//
// class App extends StatefulWidget {
//   App();
//
//   static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
//
//   static String name = 'Awesome Notifications - Example App';
//   static Color mainColor = Color(0xFF9D50DD);
//
//   @override
//   _AppState createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//   @override
//   void initState() {
//     MediaPlayerCentral.addAll([
//       MediaModel(
//           diskImagePath: 'asset://assets/images/rock-disc.jpg',
//           colorCaptureSize: Size(788, 800),
//           bandName: 'Bright Sharp',
//           trackName: 'Champagne Supernova',
//           trackSize: Duration(minutes: 4, seconds: 21)),
//       MediaModel(
//           diskImagePath: 'asset://assets/images/classic-disc.jpg',
//           colorCaptureSize: Size(500, 500),
//           bandName: 'Best of Mozart',
//           trackName: 'Allegro',
//           trackSize: Duration(minutes: 7, seconds: 41)),
//       MediaModel(
//           diskImagePath: 'asset://assets/images/remix-disc.jpg',
//           colorCaptureSize: Size(500, 500),
//           bandName: 'Dj Allucard',
//           trackName: '21st Century',
//           trackSize: Duration(minutes: 4, seconds: 59)),
//       MediaModel(
//           diskImagePath: 'asset://assets/images/dj-disc.jpg',
//           colorCaptureSize: Size(500, 500),
//           bandName: 'Dj Brainiak',
//           trackName: 'Speed of light',
//           trackSize: Duration(minutes: 4, seconds: 59)),
//       MediaModel(
//           diskImagePath: 'asset://assets/images/80s-disc.jpg',
//           colorCaptureSize: Size(500, 500),
//           bandName: 'Back to the 80\'s',
//           trackName: 'Disco revenge',
//           trackSize: Duration(minutes: 4, seconds: 59)),
//       MediaModel(
//           diskImagePath: 'asset://assets/images/old-disc.jpg',
//           colorCaptureSize: Size(500, 500),
//           bandName: 'PeacefulMind',
//           trackName: 'Never look at back',
//           trackSize: Duration(minutes: 4, seconds: 59)),
//     ]);
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       navigatorKey: App.navKey,
//       title: App.name,
//       color: App.mainColor,
//       initialRoute: PAGE_HOME,
//       //onGenerateRoute: generateRoute,
//       routes: materialRoutes,
//       builder: (context, child) => MediaQuery(
//         data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
//         child: child ?? const SizedBox.shrink(),
//       ),
//       theme: ThemeData(
//         brightness: Brightness.light,
//
//         primaryColor: App.mainColor,
//         accentColor: Colors.blueGrey,
//         canvasColor: Colors.white,
//         focusColor: Colors.blueAccent,
//         disabledColor: Colors.grey,
//
//         backgroundColor: Colors.blueGrey.shade400,
//
//         appBarTheme: AppBarTheme(
//             brightness: Brightness.dark,
//             color: Colors.white,
//             elevation: 0,
//             iconTheme: IconThemeData(
//               color: App.mainColor,
//             ),
//             textTheme: TextTheme(
//               headline6: TextStyle(color: App.mainColor, fontSize: 18),
//             )),
//
//         fontFamily: 'Robot',
//
//         // Define the default TextTheme. Use this to specify the default
//         // text styling for headlines, titles, bodies of text, and more.
//         textTheme: TextTheme(
//           headline1: TextStyle(
//               fontSize: 64.0, height: 1.5, fontWeight: FontWeight.w500),
//           headline2: TextStyle(
//               fontSize: 52.0, height: 1.5, fontWeight: FontWeight.w500),
//           headline3: TextStyle(
//               fontSize: 48.0, height: 1.5, fontWeight: FontWeight.w500),
//           headline4: TextStyle(
//               fontSize: 32.0, height: 1.5, fontWeight: FontWeight.w500),
//           headline5: TextStyle(
//               fontSize: 28.0, height: 1.5, fontWeight: FontWeight.w500),
//           headline6: TextStyle(
//               fontSize: 22.0, height: 1.5, fontWeight: FontWeight.w500),
//           subtitle1:
//           TextStyle(fontSize: 18.0, height: 1.5, color: Colors.black54),
//           subtitle2:
//           TextStyle(fontSize: 12.0, height: 1.5, color: Colors.black54),
//           button: TextStyle(fontSize: 16.0, height: 1.5, color: Colors.black54),
//           bodyText1: TextStyle(fontSize: 16.0, height: 1.5),
//           bodyText2: TextStyle(fontSize: 16.0, height: 1.5),
//         ),
//
//         buttonTheme: ButtonThemeData(
//           buttonColor: Colors.grey.shade200,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(5))),
//           padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
//           textTheme: ButtonTextTheme.accent,
//         ),
//       ),
//     );
//   }
// }
// ====================================  Flutter Youtube View =========================================

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setSystemUIOverlayStyle(
//     const SystemUiOverlayStyle(
//       statusBarColor: Colors.blueAccent,
//     ),
//   );
//   runApp(MyApp());
// }
//
// /// Creates [YoutubePlayerDemoApp] widget.
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Youtube Player Flutter',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         appBarTheme: const AppBarTheme(
//           color: Colors.blueAccent,
//           textTheme: TextTheme(
//             headline6: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.w300,
//               fontSize: 20.0,
//             ),
//           ),
//         ),
//         iconTheme: const IconThemeData(
//           color: Colors.blueAccent,
//         ),
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// /// Homepage
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   YoutubePlayerController _controller;
//   TextEditingController _idController;
//   TextEditingController _seekToController;
//
//   PlayerState _playerState;
//   YoutubeMetaData _videoMetaData;
//   double _volume = 100;
//   bool _muted = false;
//   bool _isPlayerReady = false;
//
//   final List<String> _ids = [
//     'nPt8bK2gbaU',
//     'gQDByCdjUXw',
//     'iLnmTe5Q2Qw',
//     '_WoCV4c6XOE',
//     'KmzdUe0RSJo',
//     '6jZDSSZZxjQ',
//     'p2lYr3vM_1w',
//     '7QUtEmBT_-w',
//     '34_PXCzGw1M',
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: _ids.first,
//       flags: const YoutubePlayerFlags(
//         mute: false,
//         autoPlay: true,
//         disableDragSeek: false,
//         loop: false,
//         isLive: false,
//         forceHD: false,
//         enableCaption: true,
//       ),
//     )..addListener(listener);
//     _idController = TextEditingController();
//     _seekToController = TextEditingController();
//     _videoMetaData = const YoutubeMetaData();
//     _playerState = PlayerState.unknown;
//   }
//
//   void listener() {
//     if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
//       setState(() {
//         _playerState = _controller.value.playerState;
//         _videoMetaData = _controller.metadata;
//       });
//     }
//   }
//
//   @override
//   void deactivate() {
//     // Pauses video while navigating to next page.
//     _controller.pause();
//     super.deactivate();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     _idController.dispose();
//     _seekToController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return YoutubePlayerBuilder(
//       onExitFullScreen: () {
//         // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
//         SystemChrome.setPreferredOrientations(DeviceOrientation.values);
//       },
//       player: YoutubePlayer(
//         controller: _controller,
//         showVideoProgressIndicator: true,
//         progressIndicatorColor: Colors.blueAccent,
//         topActions: <Widget>[
//           const SizedBox(width: 8.0),
//           Expanded(
//             child: Text(
//               _controller.metadata.title,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 18.0,
//               ),
//               overflow: TextOverflow.ellipsis,
//               maxLines: 1,
//             ),
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.settings,
//               color: Colors.white,
//               size: 25.0,
//             ),
//             onPressed: () {
//               log('Settings Tapped!');
//             },
//           ),
//         ],
//         onReady: () {
//           _isPlayerReady = true;
//         },
//         onEnded: (data) {
//           _controller
//               .load(_ids[(_ids.indexOf(data.videoId) + 1) % _ids.length]);
//           _showSnackBar('Next Video Started!');
//         },
//       ),
//       builder: (context, player) => Scaffold(
//         appBar: AppBar(
//           leading: Padding(
//             padding: const EdgeInsets.only(left: 12.0),
//             child: Image.asset(
//               'assets/ypf.png',
//               fit: BoxFit.fitWidth,
//             ),
//           ),
//           title: const Text(
//             'Youtube Player Flutter',
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.video_library),
//               onPressed: () => Navigator.push(
//                 context,
//                 CupertinoPageRoute(
//                   builder: (context) => VideoList(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: ListView(
//           children: [
//             player,
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   _space,
//                   _text('Title', _videoMetaData.title),
//                   _space,
//                   _text('Channel', _videoMetaData.author),
//                   _space,
//                   _text('Video Id', _videoMetaData.videoId),
//                   _space,
//                   Row(
//                     children: [
//                       _text(
//                         'Playback Quality',
//                         _controller.value.playbackQuality ?? '',
//                       ),
//                       const Spacer(),
//                       _text(
//                         'Playback Rate',
//                         '${_controller.value.playbackRate}x  ',
//                       ),
//                     ],
//                   ),
//                   _space,
//                   TextField(
//                     enabled: _isPlayerReady,
//                     controller: _idController,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Enter youtube \<video id\> or \<link\>',
//                       fillColor: Colors.blueAccent.withAlpha(20),
//                       filled: true,
//                       hintStyle: const TextStyle(
//                         fontWeight: FontWeight.w300,
//                         color: Colors.blueAccent,
//                       ),
//                       suffixIcon: IconButton(
//                         icon: const Icon(Icons.clear),
//                         onPressed: () => _idController.clear(),
//                       ),
//                     ),
//                   ),
//                   _space,
//                   Row(
//                     children: [
//                       _loadCueButton('LOAD'),
//                       const SizedBox(width: 10.0),
//                       _loadCueButton('CUE'),
//                     ],
//                   ),
//                   _space,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.skip_previous),
//                         onPressed: _isPlayerReady
//                             ? () => _controller.load(_ids[
//                                 (_ids.indexOf(_controller.metadata.videoId) -
//                                         1) %
//                                     _ids.length])
//                             : null,
//                       ),
//                       IconButton(
//                         icon: Icon(
//                           _controller.value.isPlaying
//                               ? Icons.pause
//                               : Icons.play_arrow,
//                         ),
//                         onPressed: _isPlayerReady
//                             ? () {
//                                 _controller.value.isPlaying
//                                     ? _controller.pause()
//                                     : _controller.play();
//                                 setState(() {});
//                               }
//                             : null,
//                       ),
//                       IconButton(
//                         icon: Icon(_muted ? Icons.volume_off : Icons.volume_up),
//                         onPressed: _isPlayerReady
//                             ? () {
//                                 _muted
//                                     ? _controller.unMute()
//                                     : _controller.mute();
//                                 setState(() {
//                                   _muted = !_muted;
//                                 });
//                               }
//                             : null,
//                       ),
//                       FullScreenButton(
//                         controller: _controller,
//                         color: Colors.blueAccent,
//                       ),
//                       IconButton(
//                         icon: const Icon(Icons.skip_next),
//                         onPressed: _isPlayerReady
//                             ? () => _controller.load(_ids[
//                                 (_ids.indexOf(_controller.metadata.videoId) +
//                                         1) %
//                                     _ids.length])
//                             : null,
//                       ),
//                     ],
//                   ),
//                   _space,
//                   Row(
//                     children: <Widget>[
//                       const Text(
//                         "Volume",
//                         style: TextStyle(fontWeight: FontWeight.w300),
//                       ),
//                       Expanded(
//                         child: Slider(
//                           inactiveColor: Colors.transparent,
//                           value: _volume,
//                           min: 0.0,
//                           max: 100.0,
//                           divisions: 10,
//                           label: '${(_volume).round()}',
//                           onChanged: _isPlayerReady
//                               ? (value) {
//                                   setState(() {
//                                     _volume = value;
//                                   });
//                                   _controller.setVolume(_volume.round());
//                                 }
//                               : null,
//                         ),
//                       ),
//                     ],
//                   ),
//                   _space,
//                   AnimatedContainer(
//                     duration: const Duration(milliseconds: 800),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20.0),
//                       color: _getStateColor(_playerState),
//                     ),
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       _playerState.toString(),
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w300,
//                         color: Colors.white,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _text(String title, String value) {
//     return RichText(
//       text: TextSpan(
//         text: '$title : ',
//         style: const TextStyle(
//           color: Colors.blueAccent,
//           fontWeight: FontWeight.bold,
//         ),
//         children: [
//           TextSpan(
//             text: value,
//             style: const TextStyle(
//               color: Colors.blueAccent,
//               fontWeight: FontWeight.w300,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Color _getStateColor(PlayerState state) {
//     switch (state) {
//       case PlayerState.unknown:
//         return Colors.grey[700];
//       case PlayerState.unStarted:
//         return Colors.pink;
//       case PlayerState.ended:
//         return Colors.red;
//       case PlayerState.playing:
//         return Colors.blueAccent;
//       case PlayerState.paused:
//         return Colors.orange;
//       case PlayerState.buffering:
//         return Colors.yellow;
//       case PlayerState.cued:
//         return Colors.blue[900];
//       default:
//         return Colors.blue;
//     }
//   }
//
//   Widget get _space => const SizedBox(height: 10);
//
//   Widget _loadCueButton(String action) {
//     return Expanded(
//       child: MaterialButton(
//         color: Colors.blueAccent,
//         onPressed: _isPlayerReady
//             ? () {
//                 if (_idController.text.isNotEmpty) {
//                   var id = YoutubePlayer.convertUrlToId(
//                         _idController.text,
//                       ) ??
//                       '';
//                   if (action == 'LOAD') _controller.load(id);
//                   if (action == 'CUE') _controller.cue(id);
//                   FocusScope.of(context).requestFocus(FocusNode());
//                 } else {
//                   _showSnackBar('Source can\'t be empty!');
//                 }
//               }
//             : null,
//         disabledColor: Colors.grey,
//         disabledTextColor: Colors.black,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 14.0),
//           child: Text(
//             action,
//             style: const TextStyle(
//               fontSize: 18.0,
//               color: Colors.white,
//               fontWeight: FontWeight.w300,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _showSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(
//           message,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontWeight: FontWeight.w300,
//             fontSize: 16.0,
//           ),
//         ),
//         backgroundColor: Colors.blueAccent,
//         behavior: SnackBarBehavior.floating,
//         elevation: 1.0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(50.0),
//         ),
//       ),
//     );
//   }
// }
// =====================================  Calender ===============================
//
// void main() {
// initializeDateFormatting().then((_) => runApp(MyApp()));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'TableCalendar Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: TableEventsExample(),
//     );
//   }
// }

// class StartPage extends StatefulWidget {
//   @override
//   _StartPageState createState() => _StartPageState();
// }
//
// class _StartPageState extends State<StartPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TableCalendar Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // const SizedBox(height: 20.0),
//             // ElevatedButton(
//             //   child: Text('Basics'),
//             //   onPressed: () => Navigator.push(
//             //     context,
//             //     MaterialPageRoute(builder: (_) => TableBasicsExample()),
//             //   ),
//             // ),
//             // const SizedBox(height: 12.0),
//             // ElevatedButton(
//             //   child: Text('Range Selection'),
//             //   onPressed: () => Navigator.push(
//             //     context,
//             //     MaterialPageRoute(builder: (_) => TableRangeExample()),
//             //   ),
//             // ),
//             // const SizedBox(height: 12.0),
//             ElevatedButton(
//               child: Text('Events'),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => TableEventsExample()),
//               ),
//             ),
//             // const SizedBox(height: 12.0),
//             // ElevatedButton(
//             //   child: Text('Multiple Selection'),
//             //   onPressed: () => Navigator.push(
//             //     context,
//             //     MaterialPageRoute(builder: (_) => TableMultiExample()),
//             //   ),
//             // ),
//             // const SizedBox(height: 12.0),
//             // ElevatedButton(
//             //   child: Text('Complex'),
//             //   onPressed: () => Navigator.push(
//             //     context,
//             //     MaterialPageRoute(builder: (_) => TableComplexExample()),
//             //   ),
//             // ),
//             // const SizedBox(height: 20.0),
//           ],
//         ),
//       ),
//     );
//   }
// }
//===============================  Calendar 2 =============================================
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'TableCalendar Demo',
//       theme: ThemeData(primarySwatch: Colors.indigo),
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   CalendarController _calendarController;
//   StreamController<Map<DateTime, List>> _streamController;
//
//   @override
//   void initState() {
//     super.initState();
//     _calendarController = CalendarController();
//     _streamController = StreamController();
//     _fetchEvents();
//   }
//
//   @override
//   void dispose() {
//     _calendarController.dispose();
//     _streamController.close();
//     super.dispose();
//   }
//
//   // Fetches two events on two random days within the current month
//   void _fetchEvents() {
//     final random = Random();
//     final randomIntA = random.nextInt(13) + 1;
//     final randomIntB = random.nextInt(13) + 14;
//
//     final now = DateTime.now();
//     final events = {
//       DateTime(now.year, now.month, randomIntA): ['Random event #$randomIntA'],
//       DateTime(now.year, now.month, randomIntB): ['Random event #$randomIntB'],
//     };
//
//     _streamController.add(events);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('TableCalendar Dynamic Demo')),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             StreamBuilder<Map<DateTime, List>>(
//               stream: _streamController.stream,
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return SizedBox(
//                     height: 100.0,
//                     width: 100.0,
//                     child: Center(child: CircularProgressIndicator()),
//                   );
//                 }
//
//                 final events = snapshot.data;
//
//                 return TableCalendar(
//                   calendarController: _calendarController,
//                   events: events,
//                 );
//               },
//             ),
//             const SizedBox(height: 32.0),
//             RaisedButton(
//               onPressed: _fetchEvents,
//               child: Text('Fetch events'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//=================================================== Calenader 3 =======================================
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Calendar',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   CalendarController _controller;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _controller = CalendarController();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Calendar'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             TableCalendar(
//               initialCalendarFormat: CalendarFormat.week,
//               calendarStyle: CalendarStyle(
//                   todayColor: Colors.orange,
//                   selectedColor: Theme.of(context).primaryColor,
//                   todayStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                       color: Colors.white)),
//               headerStyle: HeaderStyle(
//                 centerHeaderTitle: true,
//                 formatButtonDecoration: BoxDecoration(
//                   color: Colors.orange,
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 formatButtonTextStyle: TextStyle(color: Colors.white),
//                 formatButtonShowsNext: false,
//               ),
//               startingDayOfWeek: StartingDayOfWeek.monday,
//               // onDaySelected: (date, events) {
//               //   date.toIso8601String(),
//               // },
//               builders: CalendarBuilders(
//                 selectedDayBuilder: (context, date, events) => Container(
//                     margin: const EdgeInsets.all(4.0),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: Theme.of(context).primaryColor,
//                         borderRadius: BorderRadius.circular(10.0)),
//                     child: Text(
//                       date.day.toString(),
//                       style: TextStyle(color: Colors.white),
//                     )),
//                 todayDayBuilder: (context, date, events) => Container(
//                     margin: const EdgeInsets.all(4.0),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: Colors.orange,
//                         borderRadius: BorderRadius.circular(10.0)),
//                     child: Text(
//                       date.day.toString(),
//                       style: TextStyle(color: Colors.white),
//                     )),
//               ),
//               calendarController: _controller,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// =========================================  Providers ===========================================================

//========================================== Provider =============================================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Provider<MyModel>( //                                <--- Provider
//       create: (context) => MyModel(),
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(title: Text('My App')),
//           body: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//
//               Container(
//                   padding: const EdgeInsets.all(20),
//                   color: Colors.green[200],
//                   child: Consumer<MyModel>( //                    <--- Consumer
//                     builder: (context, myModel, child) {
//                       return RaisedButton(
//                         child: Text('Do something'),
//                         onPressed: (){
//                           // We have access to the model.
//                           myModel.doSomething();
//                         },
//                       );
//                     },
//                   )
//               ),
//
//               Container(
//                 padding: const EdgeInsets.all(35),
//                 color: Colors.blue[200],
//                 child: Consumer<MyModel>( //                    <--- Consumer
//                   builder: (context, myModel, child) {
//                     return Text(myModel.someValue);
//                   },
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MyModel { //                                               <--- MyModel
//   String someValue = 'Hello';
//   void doSomething() {
//     someValue = 'Goodbye';
//     print(someValue);
//   }
// }

//========================================== ChangeNotifierProvider ================================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<MyModel>( //      <--- ChangeNotifierProvider
//       create: (context) => MyModel(),
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(title: Text('My App')),
//           body: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//
//               Container(
//                   padding: const EdgeInsets.all(20),
//                   color: Colors.green[200],
//                   child: Consumer<MyModel>( //                  <--- Consumer
//                     builder: (context, myModel, child) {
//                       return RaisedButton(
//                         child: Text('Do something'),
//                         onPressed: (){
//                           myModel.doSomething();
//                         },
//                       );
//                     },
//                   )
//               ),
//
//               Container(
//                 padding: const EdgeInsets.all(35),
//                 color: Colors.blue[200],
//                 child: Consumer<MyModel>( //                    <--- Consumer
//                   builder: (context, myModel, child) {
//                     return Text(myModel.someValue);
//                   },
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MyModel with ChangeNotifier { //                          <--- MyModel
//   String someValue = 'Hello';
//
//   void doSomething() {
//     someValue = 'Goodbye';
//     print(someValue);
//     notifyListeners();
//   }
// }

//========================================== Future Provider ========================================
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureProvider<MyModel>(
//       //                      <--- FutureProvider
//       initialData: MyModel(someValue: 'default value'),
//       create: (context) => someAsyncFunctionToGetMyModel(),
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(title: Text('My App')),
//           body: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                   padding: const EdgeInsets.all(20),
//                   color: Colors.green[200],
//                   child: Consumer<MyModel>(
//                     //                    <--- Consumer
//                     builder: (context, myModel, child) {
//                       return RaisedButton(
//                         child: Text('Do something'),
//                         onPressed: () {
//                           myModel.doSomething();
//                         },
//                       );
//                     },
//                   )),
//               Container(
//                 padding: const EdgeInsets.all(35),
//                 color: Colors.blue[200],
//                 child: Consumer<MyModel>(
//                   //                    <--- Consumer
//                   builder: (context, myModel, child) {
//                     return Text(myModel.someValue);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// Future<MyModel> someAsyncFunctionToGetMyModel() async {
//   //  <--- async function
//   await Future.delayed(Duration(seconds: 3));
//   return MyModel(someValue: 'new data');
// }
//
// class MyModel {
//   //                                               <--- MyModel
//   MyModel({this.someValue});
//
//   String someValue = 'Hello';
//
//   Future<void> doSomething() async {
//     await Future.delayed(Duration(seconds: 2));
//     someValue = 'Go';
//     print(someValue);
//   }
// }
//============================================= Stream Provider ===========================================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamProvider<MyModel>(
//       //                       <--- StreamProvider
//       initialData: MyModel(someValue: 'default value'),
//       create: (context) => getStreamOfMyModel(),
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(title: Text('My App')),
//           body: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                   padding: const EdgeInsets.all(20),
//                   color: Colors.green[200],
//                   child: Consumer<MyModel>(
//                     //                    <--- Consumer
//                     builder: (context, myModel, child) {
//                       return RaisedButton(
//                         child: Text('Do something'),
//                         onPressed: () {
//                           myModel.doSomething();
//                         },
//                       );
//                     },
//                   )),
//               Container(
//                 padding: const EdgeInsets.all(35),
//                 color: Colors.blue[200],
//                 child: Consumer<MyModel>(
//                   //                    <--- Consumer
//                   builder: (context, myModel, child) {
//                     return Text(myModel.someValue);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// Stream<MyModel> getStreamOfMyModel() {
//   //                        <--- Stream
//   return Stream<MyModel>.periodic(
//       Duration(seconds: 1), (x) => MyModel(someValue: '$x')).take(10);
// }
//
// class MyModel {
//   //                                               <--- MyModel
//   MyModel({this.someValue});
//   String someValue = 'Hello';
//   void doSomething() {
//     someValue = 'Goodbye';
//     print(someValue);
//   }
// }
//==============================================  ValueListenableProvider =====================================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Provider<MyModel>(
//       //                              <--- Provider
//       create: (context) => MyModel(),
//       child:
//           Consumer<MyModel>(//                           <--- MyModel Consumer
//               builder: (context, myModel, child) {
//         return ValueListenableProvider<String>.value(
//           // <--- ValueListenableProvider
//           value: myModel.someValue,
//           child: MaterialApp(
//             home: Scaffold(
//               appBar: AppBar(title: Text('My App')),
//               body: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                       padding: const EdgeInsets.all(20),
//                       color: Colors.green[200],
//                       child: Consumer<MyModel>(
//                         //       <--- Consumer
//                         builder: (context, myModel, child) {
//                           return RaisedButton(
//                             child: Text('Do something'),
//                             onPressed: () {
//                               myModel.doSomething();
//                             },
//                           );
//                         },
//                       )),
//                   Container(
//                     padding: const EdgeInsets.all(35),
//                     color: Colors.blue[200],
//                     child: Consumer<String>(
//                       //           <--- String Consumer
//                       builder: (context, myValue, child) {
//                         return Text(myValue);
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
//
// class MyModel {
//   //                                             <--- MyModel
//   ValueNotifier<String> someValue =
//       ValueNotifier('Hello'); // <--- ValueNotifier
//   void doSomething() {
//     someValue.value = 'Goodbye';
//     print(someValue.value);
//   }
// }
//================================================ MultiProvider ==============================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       //                                     <--- MultiProvider
//       providers: [
//         ChangeNotifierProvider<MyModel>(create: (context) => MyModel()),
//         ChangeNotifierProvider<AnotherModel>(
//             create: (context) => AnotherModel()),
//       ],
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(title: Text('My App')),
//           body: Column(
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                       padding: const EdgeInsets.all(20),
//                       color: Colors.green[200],
//                       child: Consumer<MyModel>(
//                         //            <--- MyModel Consumer
//                         builder: (context, myModel, child) {
//                           return RaisedButton(
//                             child: Text('Do something'),
//                             onPressed: () {
//                               // We have access to the model.
//                               myModel.doSomething();
//                             },
//                           );
//                         },
//                       )),
//                   Container(
//                     padding: const EdgeInsets.all(35),
//                     color: Colors.blue[200],
//                     child: Consumer<MyModel>(
//                       //              <--- MyModel Consumer
//                       builder: (context, myModel, child) {
//                         return Text(myModel.someValue);
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//
//               // SizedBox(height: 5),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                       padding: const EdgeInsets.all(20),
//                       color: Colors.red[200],
//                       child: Consumer<AnotherModel>(
//                         //      <--- AnotherModel Consumer
//                         builder: (context, myModel, child) {
//                           return RaisedButton(
//                             child: Text('Do something'),
//                             onPressed: () {
//                               myModel.doSomething();
//                             },
//                           );
//                         },
//                       )),
//                   Container(
//                     padding: const EdgeInsets.all(35),
//                     color: Colors.yellow[200],
//                     child: Consumer<AnotherModel>(
//                       //        <--- AnotherModel Consumer
//                       builder: (context, anotherModel, child) {
//                         return Text('${anotherModel.someValue}');
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MyModel with ChangeNotifier {
//   //                        <--- MyModel
//   String someValue = 'Hello';
//   void doSomething() {
//     someValue = 'Goodbye';
//     print(someValue);
//     notifyListeners();
//   }
// }
//
// class AnotherModel with ChangeNotifier {
//   //                   <--- AnotherModel
//   int someValue = 0;
//   void doSomething() {
//     someValue = 5;
//     print(someValue);
//     notifyListeners();
//   }
// }
//======================================== ProxyProvider ============================================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       //                                                                     <--- MultiProvider
//       providers: [
//         ChangeNotifierProvider<MyModel>(
//           //                                                                 <--- ChangeNotifierProvider
//           create: (context) => MyModel(),
//         ),
//         ProxyProvider<MyModel, AnotherModel>(
//           //                                                                 <--- ProxyProvider
//           update: (context, myModel, anotherModel) => AnotherModel(myModel),
//         ),
//       ],
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(title: Text('My App')),
//           body: Column(
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                       padding: const EdgeInsets.all(20),
//                       color: Colors.green[200],
//                       child: Consumer<MyModel>(
//                         //          <--- MyModel Consumer
//                         builder: (context, myModel, child) {
//                           return RaisedButton(
//                             child: Text('Do something'),
//                             onPressed: () {
//                               myModel.doSomething('Goodbye');
//                             },
//                           );
//                         },
//                       )),
//                   Container(
//                     padding: const EdgeInsets.all(35),
//                     color: Colors.blue[200],
//                     child: Consumer<MyModel>(
//                       //            <--- MyModel Consumer
//                       builder: (context, myModel, child) {
//                         return Text(myModel.someValue);
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                   padding: const EdgeInsets.all(20),
//                   color: Colors.red[200],
//                   child: Consumer<AnotherModel>(
//                     //          <--- AnotherModel Consumer
//                     builder: (context, anotherModel, child) {
//                       return RaisedButton(
//                         child: Text('Do something else'),
//                         onPressed: () {
//                           anotherModel.doSomethingElse();
//                         },
//                       );
//                     },
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MyModel with ChangeNotifier {
//   //                       <--- MyModel
//   String someValue = 'Hello';
//   void doSomething(String value) {
//     someValue = value;
//     print(someValue);
//     notifyListeners();
//   }
// }
//
// class AnotherModel {
//   //                                      <--- AnotherModel
//   MyModel _myModel;
//   AnotherModel(this._myModel);
//   void doSomethingElse() {
//     _myModel.doSomething('See you later');
//     print('doing something else');
//   }
// }

//========================= Flutter Offline ==============================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Connection"),
//           ),
//           body: Builder(
//             builder: (BuildContext context) {
//               return OfflineBuilder(
//                 connectivityBuilder: (BuildContext context,
//                     ConnectivityResult connectivity, Widget child) {
//                   final bool connected =
//                       connectivity != ConnectivityResult.none;
//                   return Stack(
//                     fit: StackFit.expand,
//                     children: [
//                       child,
//                       Positioned(
//                         left: 0.0,
//                         right: 0.0,
//                         height: 32.0,
//                         child: AnimatedContainer(
//                           duration: const Duration(milliseconds: 300),
//                           color:
//                           connected ? Color(0xFF00EE44) : Color(0xFFEE4400),
//                           child: connected
//                               ?  Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Text(
//                                 "OFFLINE",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//
//                             ],
//                           )
//                               : Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Text(
//                                 "OFFLINE",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               SizedBox(
//                                 width: 8.0,
//                               ),
//                               SizedBox(
//                                 width: 12.0,
//                                 height: 12.0,
//                                 child: CircularProgressIndicator(
//                                   strokeWidth: 2.0,
//                                   valueColor:
//                                   AlwaysStoppedAnimation<Color>(
//                                       Colors.white),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//                 child: Center(
//                   child: Text("ONLINE Or OFFLINE"),
//                 ),
//               );
//             },
//           )),
//     );
//   }
// }
//========================  Flutter Timer in Change Notifier Provider ====================

// void main() {
//   final timerService = TimerService();
//   runApp(
//     TimerServiceProvider(
//       // provide timer service to all widgets of your app
//       service: timerService,
//       child: MyApp(),
//     ),
//   );
// }
//
// class TimerService extends ChangeNotifier {
//   Stopwatch _watch;
//   Timer _timer;
//
//   Duration get currentDuration => _currentDuration;
//   Duration _currentDuration = Duration.zero;
//
//   bool get isRunning => _timer != null;
//
//   TimerService() {
//     _watch = Stopwatch();
//   }
//
//   void _onTick(Timer timer) {
//     _currentDuration = _watch.elapsed;
//
//     // notify all listening widgets
//     notifyListeners();
//   }
//
//   void start() {
//     if (_timer != null) return;
//
//     _timer = Timer.periodic(Duration(seconds: 1), _onTick);
//     _watch.start();
//
//     notifyListeners();
//   }
//
//   void stop() {
//     _timer?.cancel();
//     _timer = null;
//     _watch.stop();
//     _currentDuration = _watch.elapsed;
//
//     notifyListeners();
//   }
//
//   void reset() {
//     stop();
//     _watch.reset();
//     _currentDuration = Duration.zero;
//
//     notifyListeners();
//   }
//
//   static TimerService of(BuildContext context) {
//     var provider =
//         context.dependOnInheritedWidgetOfExactType<TimerServiceProvider>();
//     return provider.service;
//   }
// }
//
// class TimerServiceProvider extends InheritedWidget {
//   const TimerServiceProvider({Key key, this.service, Widget child})
//       : super(key: key, child: child);
//
//   final TimerService service;
//
//   @override
//   bool updateShouldNotify(TimerServiceProvider old) => service != old.service;
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Service Demo',
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var timerService = TimerService.of(context);
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: AnimatedBuilder(
//           animation: timerService, // listen to ChangeNotifier
//           builder: (context, child) {
//             // this part is rebuilt whenever notifyListeners() is called
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text('Elapsed: ${timerService.currentDuration}'),
//                 RaisedButton(
//                   onPressed: !timerService.isRunning
//                       ? timerService.start
//                       : timerService.stop,
//                   child: Text(!timerService.isRunning ? 'Start' : 'Stop'),
//                 ),
//                 RaisedButton(
//                   onPressed: timerService.reset,
//                   child: Text('Reset'),
//                 )
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//============================ Mailer ================================

//=========== Email ==========================
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> attachment;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    attachment = new List<String>();
  }

  final _recipientController = TextEditingController(
    text: 'example@example.com',
  );

  final _subjectController = TextEditingController(text: 'The subject');

  final _bodyController = TextEditingController(
    text: 'Mail body.',
  );

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: attachment,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(platformResponse),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final Widget imagePath = Text(attachment.length > 0 ? attachment[0] : '');

    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Send Email attachment'),
          actions: <Widget>[
            IconButton(
              onPressed: send,
              icon: Icon(Icons.send),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _recipientController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Recipient',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _subjectController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Subject',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _bodyController,
                      maxLines: 10,
                      decoration: InputDecoration(
                          labelText: 'Body', border: OutlineInputBorder()),
                    ),
                  ),
                  imagePath,
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.camera),
          label: Text('Add Image'),
          onPressed: _openImagePicker,
        ),
      ),
    );
  }

  void _openImagePicker() async {
    File pick = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      attachment.add(pick.path);
    });
  }
}
