import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: Farmer(),
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
  ));
}

class Farmer extends StatefulWidget {
  @override
  State<Farmer> createState() => _FarmerState();
}

class _FarmerState extends State<Farmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("FARMERS FRESH ZONE",
                style: TextStyle(fontWeight: FontWeight.bold)),

            /// pinned: true,
            actions: const [
              Icon(Icons.location_on_outlined),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                    child: Text("Kochi",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ),
              Icon(Icons.keyboard_arrow_down)
            ],
            bottom: AppBar(
              title: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 40,
                  child: const Center(
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: 'Search for vegetables and fruits..',
                      prefixIcon: Icon(Icons.search),
                    )),
                  )),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: 25,
                width: 120,
                child: const Center(
                  child: Text(
                    "VEGETABLES",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: 25,
                width: 120,
                child: const Center(
                  child: Text(
                    "FRUITS",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: 25,
                width: 120,
                child: const Center(
                    child: Text(
                  "EXOTIC CUTS",
                  style: TextStyle(color: Colors.green),
                )),
              )
            ]),
            const SizedBox(height: 10),
            CarouselSlider(
              items: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT4zX_kWWkN7SToQhGxTgrk3rConFvUXKJsQ&usqp=CAU"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwR3QqVl4r8CgYRn0FzuKtehMi-B9NqhyQKfzKJs-6p3_4p5Op8aGKJo89P1iEUKDY5tY&usqp=CAU"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGJHnqKQ9GqqrA51-cHCqYyji5b8mZdNUDc2pTa2Q7Ctq1BdUoODKmT1PI6ujfD2LyKac&usqp=CAU"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-CI7wA8jh2Xt8R7JXjslCQ3BwLrkb3LSuJA&usqp=CAU"),
                          fit: BoxFit.cover)),
                ),
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  height: 200,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: true),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.timer,
                            color: Colors.green,
                          ),
                          Text(
                            "30 MINS POLICY",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(children: const [
                        Icon(
                          Icons.camera_front_outlined,
                          color: Colors.green,
                        ),
                        Text(
                          "TRACEBILITY",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ]),
                      Column(children: const [
                        Icon(
                          Icons.home_work,
                          color: Colors.green,
                        ),
                        Text(
                          "LOCAL SOURCING",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ])
                    ]),
              ),
            ),
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Shop by Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            VegGrid(),
            Image.network(
                "https://i.ytimg.com/vi/rLpdVYFF74o/maxresdefault.jpg"),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Best Selling Products",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 10,
            ),
            ItemWidget(),
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.green), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.green),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.green), label: 'Account'),
      ]),
    );
  }
}

class VegGrid extends StatelessWidget {
  List<String> images = [
    "https://images.immediate.co.uk/production/volatile/sites/10/2018/02/5b61c4a4-89ae-436a-bf06-76953389adce-bfac9cb.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjyevD7VXdCFlCIs-W7HzcfTOCue0jpJT8XQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8rNoCqsoOZ9TLRNgjiU2uR04bHSfonSQxyg&usqp=CAU",
    "https://ak.picdn.net/offset/photos/5ab5178417fb156e4807c07d/medium/photo.jpg",
    "https://cdn-fhofj.nitrocdn.com/YLARnxovRxHnoSTcLUnkvhePKVxPqkls/assets/images/optimized/rev-9c625ad/wp-content/uploads/2021/09/995812818-img.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrKO6TauTmh85lSxW87FOGUDx0wF5t3A9ebg&usqp=CAU"
  ];

  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Sprouts",
    "Packed Flavours"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width / 5,
                  width: MediaQuery.of(context).size.width * 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(height: 5),
                Center(
                    child: Text(
                  names[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                )),
              ],
            ),
          );
        });
  }
}

class ItemWidget extends StatelessWidget {
  List<String> img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD5BHf2jWSOK9cLCF1BYqjONEf6jqftxyVZQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlFGnEd3sUgt8uATPhw8ZCYh8JE9W0DwaUaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5KOtWUQu5FzT5Us_dIh2agby_DmAq0QYzzw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlTtqRkUjVIHj_-iIAL_MhspPhsEovSBg1mA&usqp=CAU",
  ];
  List<String> txt = [
    "Tommatto",
    "Banana",
    "Cauliflower",
    "Cabbage",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            childAspectRatio: 0.8),
        itemCount: img.length,
        itemBuilder: (BuildContext, int index) {
          return Card(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 3,
                width: MediaQuery.of(context).size.width * 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: NetworkImage(img[index]),
                      fit: BoxFit.contain,
                    )),
              ),
              const SizedBox(height: 5),
              Text(
                txt[index],
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(children: [
                const Text("\$20", style: TextStyle(fontSize: 16)),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "/ 1KG",
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "ADD",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                )
              ])
            ],
          ));
        });
  }
}
