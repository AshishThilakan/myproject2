
import 'package:flutter/material.dart';
import 'package:myproject/shared_Preference/share_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Shared Preference Demo',
     theme:  ThemeData(primarySwatch: Colors.blue),
     home:  MyDashboard(),
   );
  }

}

class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  
  late SharedPreferences logindata;
  late String username;
  
  @override
  void initState() {
    initial();
  }
  
  void initial() async{
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username') !;
    });
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Welcome to Ooty"),),
     body: Padding(
       padding: const EdgeInsets.all(26.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Center(child: Text("Hi $username Welcome to Ooty",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
           SizedBox(height: 10,),
           ElevatedButton(onPressed: () {
             logindata.setBool("login", true);
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
           }, child: Text('Log-Out'))
         ],
       ),
     ),
   );
  }
}
