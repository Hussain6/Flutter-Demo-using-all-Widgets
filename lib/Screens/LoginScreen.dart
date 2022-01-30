// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learn/functions/func.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Login Nav")),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.ac_unit)),
                Tab(icon: Icon(Icons.directions_car))
              ],
            ),
          ),
          drawer: (Drawer(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Theme.of(context).primaryColor,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      "Welcome to Flutter",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Enjoy!!!",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text(
                  "Flutter@dev.com",
                ),
                subtitle: Text(
                  "Flutter Dev",
                ),
                trailing: Icon(
                  Icons.notifications,
                ),
              ),
            ],
          ))),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/1.png",
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 25,
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "Enter Username"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 25,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Enter Password"),
                      ),
                    ),
                  ),
                  Text(
                    "Not Registered?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          showdia(context);
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.login),
                              Center(
                                  child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showsnack(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text(
                              "Exit",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text("Hi"),
                    subtitle: Text("Welcome this is listtile"),
                  )
                ],
              ),
            ),
            Container(
                child: Icon(
              Icons.car_rental,
              size: MediaQuery.of(context).size.width / 2,
            ))
          ])),
    );
  }
}
