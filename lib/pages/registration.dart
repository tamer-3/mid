import 'package:flutter/material.dart';
import 'package:mid_project/pages/profile.dart';

class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {

  final _key = GlobalKey<FormState>();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Account'
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            alignment: Alignment.center,
            child: Column(
              children: [
                Form(
                  key: _key,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        child: TextFormField(
                          style: TextStyle(fontSize: 20),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0
                              ),
                              labelText: 'Username',
                              hintText: 'Enter Username',
                              fillColor: Colors.white,
                              filled: true,
                            )
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextFormField(
                          style: TextStyle(fontSize: 20),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0
                            ),
                            labelText: "E-mail address",
                            hintText: "Enter email",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if(!(val!.isEmpty) && !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(val)){
                              return "Enter a valid email address";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextFormField(
                          style: TextStyle(fontSize: 20),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0
                            ),
                            labelText: "Mobile Phone number",
                            hintText: "Enter Phone number",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if(!(val!.isEmpty) && !RegExp(r"^(\d+)*$").hasMatch(val)){
                              return "Enter a valid phone number";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(fontSize: 20),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0
                            ),
                            labelText: "Password",
                            hintText: "Enter Password",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if(val!.isEmpty){
                              return "Enter a valid password";
                            }
                            return null;
                          },
                        ),
                      ),
                      FormField<bool>(
                        builder: (state) {
                          return Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Checkbox(
                                      value: check,
                                      onChanged: (value) {
                                        setState(() {
                                          check = value!;
                                          state.didChange(value);
                                        });
                                      }),
                                  const Text(
                                    "I accept all terms and conditions.",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  state.errorText ?? '',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Theme.of(context).errorColor,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                        validator: (value) {
                          if (!check) {
                            return 'You need to accept terms and conditions';
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        child: ElevatedButton(
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
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
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
