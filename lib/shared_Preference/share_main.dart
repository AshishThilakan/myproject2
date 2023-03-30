import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard.dart';

void main(){
  runApp(MaterialApp(home: MyLoginPage(),));
}

class MyLoginPage extends StatefulWidget{
  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;
  late bool newuser;

  @override
  void initState() {
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();

    newuser = (logindata.getBool("Login") ?? true);
    print(newuser);

    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyDashboard()));
    }
  }

  @override
  void dispose() {
    // clean up the controller when the widget is disposed
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shared Preference")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login Form",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text("To show example of shared preferences",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: username_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'username',
                    hintText: 'Enter Username'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: password_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "password",
                    hintText: "Enter Password"
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              String username = username_controller.text;
              String password = password_controller.text;

              if (username != '' && password != '') {
                print('Successfull');

                logindata.setBool('login', false);
                logindata.setString('username', username);

                /// logindata.setString('username', username);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyDashboard()));
              }
            },
              child: Text("Log-In"),
            )
          ],
        ),
      ),
    );
  }
}
