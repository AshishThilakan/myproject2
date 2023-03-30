import 'package:flutter/material.dart';

import 'detailsPage.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///we can know the width of the mobile screen
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFFE0E0E0), spreadRadius: 1, blurRadius: 20)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildnavBar(Icons.person),
              buildnavBar(Icons.shopping_bag),
              buildnavBar(Icons.home, isSelected: true),
              buildnavBar(Icons.favorite),
              buildnavBar(Icons.settings),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        actions: const [
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
            children: const [
              SizedBox(width: 15),
              Text(
                "POPULAR PICKS",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,),
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("Sneakers", isSelected: true),
              buildButton("Casual"),
              buildButton("Sports"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFE0E0E0), blurRadius: 15, spreadRadius: 1)
                ]),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTop("Nike", isSelected: true),
                    buildTop("Reebok"),
                    buildTop("Adidas"),
                    buildTop("Puma"),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      buildRow("1", "Low Retro QS Argon", "310", context),
                      buildRow("2", "High Panda", "313", context),
                      buildRow("3", "Air Jordan 1 Low Taxi", "258", context),
                      buildRow("4", "Low Active Fuchsia", "300", context),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                ///Line Bar
                Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: Container(
                    height: 5,
                    width: 110,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: const [
                      Text(
                        "HOLIDAY OFFER",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        "VIEW ALL",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      buildBottom("1", "MB.02 Unisex", "PUMA", "135"),
                      buildBottom("2", "Zig Kinetica", "REEBOK", "166"),
                      buildBottom("3", "NMD_V3 Unisex", "ADIDAS", "149"),
                      buildBottom("4", "Air Jordan", "NIKE", "186"),
                    ],
                  ),
                ),
              ]),
            ),
          ))
        ],
      ),
    );
  }

  Container buildBottom(String img, String tittle, String txt, String price) {
    return Container(
        height: 130,
        width: 250,
        margin: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/shoe/shoe$img.jpg",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tittle),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    txt,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const Spacer(),
                  Text(
                    "\$ $price",
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Container buildnavBar(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.pinkAccent : Colors.white,
        shape: BoxShape.circle,
        boxShadow: isSelected
            ? [const BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
            : [],
      ),
      height: 50,
      width: 50,
      child: Icon(icon, color: isSelected ? Colors.white : Colors.black),
    );
  }
}

GestureDetector buildRow(
    String img, String tittle, String price, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return DetailsPage(img, tittle, price, context);
      }));
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 250,
            width: 180,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/nike/nike$img.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            tittle,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "\$ $price",
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    ),
  );
}

Column buildTop(String text, {bool isSelected = false}) {
  return Column(
    children: [
      Text(
        text,
        style: TextStyle(color: isSelected ? Colors.black : Colors.grey),
      ),
      const SizedBox(
        height: 5,
      ),
      if (isSelected)
        Container(
          height: 5,
          width: 5,
          decoration:
              const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        )
    ],
  );
}

ElevatedButton buildButton(String text, {bool isSelected = false}) {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: isSelected ? Colors.pinkAccent : Colors.grey[300]),
      child: Text(text,
          style: TextStyle(
              color: isSelected ? Colors.white : Colors.black, fontSize: 20)));
}
