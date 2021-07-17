import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey.shade900,
        centerTitle: true,
        toolbarHeight: 170,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Assess',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Core',
                style: TextStyle(
                  color: Colors.green.shade600,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                ),
              ],
            ),
            // color: Colors.white,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sr . Incoming Mains Wt-05",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "MAINS | SCHE",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.teal.shade400,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal.shade300,
                  ),
                  child: Icon(
                    Icons.event_note_rounded,
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Neet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "104 Tests",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.yellow.shade700,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow.shade600,
                  ),
                  child: Icon(
                    Icons.event_note_rounded,
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Mains",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "104 Tests",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade600,
                  ),
                  child: Icon(
                    Icons.event_note_rounded,
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Eamcet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "104 Tests",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.purple.shade700,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple.shade500,
                  ),
                  child: Icon(
                    Icons.event_note_rounded,
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Neet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "104 Tests",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Recent Attempted Tests",
              ),
            ],
          )
        ],
      ),
    );
  }
}
