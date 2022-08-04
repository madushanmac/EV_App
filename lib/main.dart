import 'package:flutter/material.dart';
import 'register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('CEB EV Charage'),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text(
          'EV Charg App',
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
        centerTitle: true,
        elevation: 10.0,
        backgroundColor: Colors.grey[800],
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
              Text(
                'User Name',
                style: TextStyle(fontSize: 20.0),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Password',
                style: TextStyle(fontSize: 20.0),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Password',
                ),
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
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    label: Text('Register'),
                    color: Colors.redAccent[200],
                    icon: Icon(Icons.app_registration_rounded),
                  )
                ],
              ),
              SizedBox(
                height: 80.0,
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
                  child: Text(
                      'Click me for read before the using this application'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
