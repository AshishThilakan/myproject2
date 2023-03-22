import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MaterialApp(
    home: SliderPage(),
    debugShowCheckedModeBanner: true,
  ));
}

class SliderPage extends StatelessWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("C Slider")),
      body: CarouselSlider(
        items: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS8ZGgxFrPyqJF2xCJIQQSnMsBlL5GuCRMnA&usqp=CAU"),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsbkTkxZA5fHAgmx4Ur2FBXqXmRdh750BnAw&usqp=CAU"),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTl7KswaSYGZZePgbyurLs6Ak8zkd8D47GJg&usqp=CAU"),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBoPbffnrdj2ZjR6Kxf-Rk4nYJulcuCmDHlA&usqp=CAU"),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR05cpr9wvrzmqb5xdXcvlcSJRT0gDEbUPIQg&usqp=CAU"),
                    fit: BoxFit.cover)),
          ),
        ],
        options: CarouselOptions(
            autoPlay: false,
            viewportFraction: .4,
            height: 200,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: true),
      ),
    );
  }
}
