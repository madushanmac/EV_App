import 'package:flutter/material.dart';

class Recipt extends StatelessWidget {
  int ChargingPrecentageEstimated;
  int Price;
  int Kwh;

  Recipt({
    Key? key,
    required this.ChargingPrecentageEstimated,
    required this.Price,
    required this.Kwh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipt'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 2),
          child: Center(
            child: Column(
              children: [
                Text('Sample Recipt'),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Charge Completed',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 86, 14, 9)),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.battery_saver_rounded,
                      color: Color.fromARGB(255, 119, 20, 7),
                      size: 150,
                    ),
                    Text(
                      '$ChargingPrecentageEstimated %',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 70.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Used Kwh'),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[600],
    );
  }
}
