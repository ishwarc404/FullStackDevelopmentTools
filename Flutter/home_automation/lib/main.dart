import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(title: "Village Management", home: MainActivity()));

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State {
  // This widget is the root of your application.
  var devicesWidgets = List<Widget>(); //for dynamically adding widgets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Village Management'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: devicesWidgets),
                SizedBox(height: 20,),
                RaisedButton(
                  child: Text("Add Device", style: TextStyle(fontSize: 30)),
                  onPressed: _addNewDevice,
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  splashColor: Colors.grey,
                ),
                SizedBox(height: 10,),
                RaisedButton(
                  child: Text("Clear all", style: TextStyle(fontSize: 30)),
                  onPressed: _clearDevice,
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  splashColor: Colors.grey,
                )
              ],
            ),
          ),
        ));
  }

  void _addNewDevice() {
    print("device added");
    setState(() {
      devicesWidgets.add(Text("Hello"));
    });
  }

  void _clearDevice() {
    print("devices cleared");
    setState(() {
      devicesWidgets = List<Widget>();
    });
  }
}
