import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Correct import for CarouselSlider
import 'package:carousel_slider/carousel_options.dart'; // Depending on the version, this might be necessary

class CarosalSliderPage extends StatelessWidget {
  const CarosalSliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: const Text(
          'Carousel Slider',
          style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: Content(),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    "Text $i",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(height: 300.0),
      ),
    );
  }
}
