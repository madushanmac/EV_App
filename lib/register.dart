import 'package:flutter/material.dart';
import 'HomePage.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('register'),
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
                height: 30.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter FirstName',
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Lastname',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Mobile Number',
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton.icon(
                onPressed: () {},
                label: Text('Get OTP..'),
                icon: Icon(Icons.confirmation_num),
                color: Colors.red,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter OTP',
                ),
              ),
              Divider(
                height: 10.0,
                color: Colors.grey[600],
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                  onSurface: Colors.red,
                ),
                onPressed: () {
                  print('forgot password clicked');
                },
                child: Text('Forgot password ?..'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  FlatButton.icon(
                    onPressed: () {
                      print('login clicked');
                    },
                    icon: Icon(Icons.login),
                    label: Text('Login'),
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    label: Text('Register'),
                    color: Colors.redAccent[200],
                    icon: Icon(Icons.app_registration_rounded),
                  )
                ],
              ),
              SizedBox(
                height: 100.0,
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
