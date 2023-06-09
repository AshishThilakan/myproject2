import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyTable(),));
}

class MyTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: DataTable(
         decoration: BoxDecoration(border: Border.all(width: 8)),
           columns: [
             DataColumn(label: Text("id")),
             DataColumn(label: Text("Name")),
             DataColumn(label: Text("Age")),
           ],
           rows: [
             DataRow(cells: [
               DataCell(Text("1")),
               DataCell(Text("Anu")),
               DataCell(Text("20")),
             ]),
             DataRow(cells: [
               DataCell(Text("2")),
               DataCell(Text("Binu")),
               DataCell(Text("21")),
             ]),
             DataRow(cells: [
               DataCell(Text("3")),
               DataCell(Text("Sini")),
               DataCell(Text("22")),
             ]),
           ]),
     ),
   );
  }
}