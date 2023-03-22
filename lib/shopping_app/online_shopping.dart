import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: shopping(),
    debugShowCheckedModeBanner: false,
  ));
}

class shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.grey[200],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 15),
              Text(
                "Popular Shoes",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("Nike", isSelected: true),
              buildButton("Puma"),
              buildButton("Addidas"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(40)),
                    boxShadow: [
                  BoxShadow(color: Color(0xFFE0E0E0), blurRadius: 15, spreadRadius: 1)
                ])),
          )
        ],
      ),
    );
  }
}

ElevatedButton buildButton(String text, {bool isSelected = false}) {
  return ElevatedButton(
      onPressed: () {},
      child: Text(text,
          style: TextStyle(
              color: isSelected ? Colors.white : Colors.black, fontSize: 20)),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          backgroundColor: isSelected ? Colors.pinkAccent : Colors.grey[300]));
}
