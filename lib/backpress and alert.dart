import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: Alert_with_backpress(),));
}

class Alert_with_backpress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   Future<bool> showAlert() async{
      return await showDialog(context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit!!!'),
            content: Text('Do you want to Exit ?'),
            actions: [ElevatedButton(onPressed: () {
              Navigator.of(context).pop(true);
            }, child: Text('YES')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop(false);
            }, child: Text('NO'))
            ],
          ));
    }

    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(title: Text("Alert"),),
        body: Center(child: Text("Press Back Button To Exit")),
      ),
    );
  }
}
