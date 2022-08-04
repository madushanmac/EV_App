import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:practice_01/Charg.dart';
import 'Map.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assests/download.png'),
                  radius: 50.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 350.00,
                height: 200.00,
                color: Color.fromARGB(255, 53, 48, 48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Your Balance',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '250.00',
                      style: TextStyle(fontSize: 35.0, color: Colors.yellow),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 125.0,
              ),
              Row(
                children: [
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Charg()));
                    },
                    label: Text(
                      'Charg',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    icon: Icon(
                      Icons.charging_station_sharp,
                      size: 50.0,
                    ),
                    color: Colors.green,
                  ),
                  SizedBox(width: 40.0),
                  FlatButton.icon(
                    onPressed: () {},
                    label: Text(
                      'History',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    icon: Icon(
                      Icons.history,
                      size: 50.0,
                    ),
                    color: Colors.green,
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20.0, //have to change space between home keys
                  ),
                  Row(
                    children: [
                      FlatButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Map()));
                        },
                        label: Text(
                          'EMap',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        icon: Icon(
                          Icons.map,
                          size: 50.0,
                        ),
                        color: Colors.green,
                      ),
                      SizedBox(width: 40.0),
                      FlatButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Top_up',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        icon: Icon(
                          Icons.money,
                          size: 50.0,
                        ),
                        color: Colors.green,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 240.0,
                  ),
                  FlatButton.icon(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    label: Text('Exit'),
                    color: Colors.redAccent[200],
                    icon: Icon(Icons.app_registration_rounded),
                  )
                ],
              ),
              SizedBox(
                height: 120.0,
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey[300],
                    onSurface: Colors.red,
                  ),
                  onPressed: () {
                    print('help');
                  },
                  child: Text('How to register '),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[600],
    );
  }
}
