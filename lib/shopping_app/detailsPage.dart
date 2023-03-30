import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String img;
  final String tittle;
  final String price;
  final BuildContext context;

  DetailsPage(this.img, this.tittle, this.price, this.context);

  @override
  Widget build(BuildContext context) {
    String tittle2 = tittle;
    tittle2 = "dada";
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/nike/nike$img.jpg",
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 40),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height / 2.4,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Nike Dunk"),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(tittle, style: const TextStyle(fontSize: 24)),
                            Text("\$ $price", style: const TextStyle(fontSize: 24))
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Size"),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "10 UK",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Qty"),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                            leading: const Text(
                              "Details",
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.black,
                                ))),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                            leading: const Text(
                              "Shopping returns",
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.black,
                                ))),
                        const Divider(
                          thickness: 1.5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle),
                        child: const Icon(Icons.favorite_border),
                      ),
                      SizedBox(
                        height: 48,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextButton.icon(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.pink[200]),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)))),
                            icon: const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                            label: const Text(
                              "Add to Basket",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
