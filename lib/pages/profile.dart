import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../drawer/drawer.dart';

class Prof extends StatefulWidget {
  const Prof({Key? key}) : super(key: key);

  @override
  State<Prof> createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: const Drawerr(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Image.asset('assets/icon.png'),
              const SizedBox(height: 10,),
              const Text('User', style: TextStyle(fontSize: 40),),
              const SizedBox(height: 30,),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    ListTile(
                      leading: Icon(Icons.mail),
                      title: Text('E-mail'),
                      subtitle: Text('User69420@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    ListTile(
                      leading: Icon(Icons.numbers),
                      title: Text('Number'),
                      subtitle: Text('0777 43 52 83'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    ListTile(
                      leading: Icon(Icons.location_city),
                      title: Text('City'),
                      subtitle: Text('Bishkek'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

