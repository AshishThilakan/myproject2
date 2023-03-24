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
    ///we can know the width of the mobile screen
    print(MediaQuery.of(context).size.width);
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
                ]
                ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildTop("Sneakers",isSelected: true),
                      buildTop("vessels"),
                      buildTop("Floral"),
                      buildTop("Decor"),
                    ],
                  ),
                  SizedBox(height: 17,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(children: [
                      SizedBox(width: 10,),
                     buildRow("1","Blue Lagoon","24"),
                      buildRow("2","Pink Glow","21"),
                      buildRow("3","Blue Lagoon","20"),
                      buildRow("1","Blue Lagoon","23"),
                    ],),
                  ),
                 SizedBox(height: 15,),
                  ///Line Bar
                  Container(
                    height: 5,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 40),
                    decoration: BoxDecoration(color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                    ),
                    child: Container(
                      height: 5,
                      width: 110,
                      decoration: BoxDecoration(color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                children: [
                    Text("HOLIDAYS OFFER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                    Spacer(),
                    Text("VIEW ALL",style: TextStyle(fontSize: 16,color: Colors.grey),)
                ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                     buildBottom(),
                        buildBottom(),
                        buildBottom(),
                        buildBottom(),
                ],
              ),
                  ),
            ]),
          )
          )],
      ),
    );
  }

  Padding buildRow(String img, String tittle, String price){
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 220,width: 160,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/icons/b$img.jpg",fit: BoxFit.cover,)),
          ),
          Text(tittle,style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("\$ $price",style: TextStyle(fontSize: 16),)
        ],
      ),
    );
  }


 Column buildTop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(text,style: TextStyle(color: isSelected ? Colors.black : Colors.grey),),
        SizedBox(height: 5,),
        if (isSelected)
        Container(height: 5,width: 5,
          decoration: BoxDecoration(
              color: Colors.black,shape: BoxShape.circle),
        )
      ],
    );
 }

  Container buildBottom() {
    return Container(
      height: 130,
      width: 280,
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/icons/bk4.jpg",fit: BoxFit.cover,)),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Running shoes"),
                Text("PUMA",style: TextStyle(color: Colors.grey,fontSize: 14),),
                Spacer(),
                Text("\$ 28",style: TextStyle(fontSize: 18,color: Colors.black),
                )
              ],
            ),
          )
        ],
      )
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

