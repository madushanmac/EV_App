import 'dart:async';

import 'package:battery/battery.dart';
import 'package:flutter/material.dart';
import 'package:practice_01/Charging.dart';

class Charg extends StatefulWidget {
  const Charg({Key? key}) : super(key: key);

  @override
  State<Charg> createState() => _ChargState();
}

class _ChargState extends State<Charg> {
  Battery _battery = Battery();
  late BatteryState _batteryState;
  int _batteryLevel = 17;
  late StreamSubscription<BatteryState> _batteryStateSubscription;

  String Chargpoint = 'CRG100';
  int Number = 12;

  @override
  void initState() {
    super.initState();

    _batteryStateSubscription =
        _battery.onBatteryStateChanged.listen((BatteryState state) {
      setState(() {
        _batteryState = state;
      });
    });
  }

  Future<void> _getLevel() async {
    final int batteryLevel = await _battery.batteryLevel;
    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_batteryStateSubscription != null) {
      _batteryStateSubscription.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Charg Your Battery',
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.grey[600]),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Icon(
            Icons.battery_5_bar_sharp,
            color: Color.fromARGB(255, 50, 235, 26),
            size: 150,
          ),
          Text(
            'Current Battery Level : $_batteryLevel',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Center(
            child: RaisedButton(
              splashColor: Colors.red,
              color: Colors.red[200],
              onPressed: () {
                _getLevel();
              },
              child: Text('Check Current Level'),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 50,
              ),
              Text(
                'Entry Point : ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                '$Chargpoint',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                    backgroundColor: Colors.grey[900],
                    letterSpacing: 2,
                    decorationColor: Colors.red),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 50,
              ),
              Text(
                'Estimated Time to Full Charge : ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '$Number min',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                    backgroundColor: Colors.grey[900],
                    letterSpacing: 2,
                    decorationColor: Colors.red),
              ),
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
          Column(
            children: [
              FlatButton.icon(
                onPressed: () {
                  print('Start Button Clicked');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Charging()));
                },
                label: Text(
                  'START',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
                icon: Icon(
                  Icons.start_outlined,
                  size: 50.0,
                ),
                color: Colors.amberAccent,
              )
            ],
          ),
        ],
      ),
      backgroundColor: Colors.grey[600],
    );
  }
}
