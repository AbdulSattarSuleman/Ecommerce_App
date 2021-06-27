import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          // SizedBox(height: 15.0),
          CarouselSlider.builder(
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8,
                ),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(sliderImage[index]),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            sliderTitle[index],
                            style: TextStyle(
                              letterSpacing: -1,
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      reviews(),
                      // SizedBox(
                      //   height: 10,
                      // ),
                    ],
                  ),
                ),
              );
            },
            itemCount: sliderImage.length,
            options: CarouselOptions(
              height: 260.0,
              // enlargeCenterPage: true,
              autoPlay: true,
              // aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              // viewportFraction: 0.8,
              viewportFraction: 1,
            ),
            // items: [

            // ],
          ),
        ],
      ),
    );
  }
}

List<dynamic> sliderImage = [
  'assets/download.jpg',
  'assets/iphone.jpg',
  'assets/macbook-pro.jpg',
  'assets/macbook.jpg',
  'assets/gaming-pc.jpg',
  'assets/keyboard.jpg',
  'assets/Mercedes.jpg',
  'assets/car.jpg',
];
List<dynamic> sliderTitle = [
  'Iphone 12',
  'Note 20 Ultra',
  'Macbook Air',
  'Macbook Pro',
  'Gaming PC',
  'Backlit',
  'Mercedes',
  'Mutton',
];
List<SliderImage> images = [
  new SliderImage('assets/download.jpg', 'Iphone 12', reviews),
  new SliderImage('assets/iphone.jpg', 'Note 20 Ultra', reviews),
  new SliderImage('assets/macbook-pro.jpg', 'Macbook Air', reviews),
  new SliderImage('assets/macbook.jpg', 'Macbook Pro', reviews),
  new SliderImage('assets/gaming-pc.jpg', 'Gaming PC', reviews),
  new SliderImage('assets/keyboard.jpg', 'Backlit', reviews),
  new SliderImage('assets/Mercedes.jpg', 'Mercedes', reviews),
  new SliderImage('assets/car.jpg', 'Mutton', reviews),
];
