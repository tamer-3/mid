import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mid_project/main.dart';
import 'package:mid_project/pages/profile.dart';
import '../pages/Registration.dart';
import '../pages/login.dart';

class Drawerr extends StatefulWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  State<Drawerr> createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text('User',),
                accountEmail: Text('User69420@gmail.com'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                )
            ),
            ListTile(
              leading: const Icon(Icons.app_registration_sharp),
              title: const Text('Registration'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Prof()),
                );
              },
            ),
          ]
      ),
    );
  }
}

