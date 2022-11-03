import 'package:flutter/material.dart';
import 'package:mid_project/pages/profile.dart';
import 'package:mid_project/pages/registration.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80,),
            SafeArea(
              child: Container(
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Form(
              key: _key,
              child: Column(
                children: [
                  TextFormField(
                    validator: (val) {
                      if(val!.isEmpty){
                        return "Enter a valid name";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter Username',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (val) {
                      if(val!.isEmpty){
                        return "Enter a valid password";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30,),
                  ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const Prof()
                              ),
                                  (Route<dynamic> route) => false
                          );
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(55, 10, 55, 10),
                        child: Text('Sign in'),
                      ),
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(
                          builder: (context) => Prof()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text('I forgot Password'),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(
                          builder: (context) => RegPage()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(28, 10, 28, 10),
                      child: Text('Create Account'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

