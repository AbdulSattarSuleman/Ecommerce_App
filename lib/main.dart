import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  List<dynamic> productTitle = [
    'Iphone 12',
    'Note 20 Ultra',
    'Macbook Air',
    'Macbook Pro',
    'Gaming PC',
    'Backlit',
    'Mercedes',
    'Mutton',
    'Roadster',
    'Royal Field',
    'Wireless',
    'Tab'
  ];
  List<dynamic> productImage = [
    'assets/download.jpg',
    'assets/iphone.jpg',
    'assets/macbook-pro.jpg',
    'assets/macbook.jpg',
    'assets/gaming-pc.jpg',
    'assets/keyboard.jpg',
    'assets/Mercedes.jpg',
    'assets/car.jpg',
    'assets/bike1.jpg',
    'assets/bike2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    Widget _firstContainer() {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 210,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/download.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8),
                child: Text(
                  'Mercedes',
                  style: TextStyle(
                    letterSpacing: -1,
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 11,
                      color: Colors.yellowAccent,
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Icon(
                      Icons.star,
                      size: 11,
                      color: Colors.yellowAccent,
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Icon(
                      Icons.star,
                      size: 11,
                      color: Colors.yellowAccent,
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Icon(
                      Icons.star,
                      size: 11,
                      color: Colors.yellowAccent,
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Icon(
                      Icons.star,
                      size: 11,
                      color: Colors.yellowAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '5.0',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(23 Reviews)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ecom App UI",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
              tooltip: "Notifications",
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          _containerTopText('Items', 'View More'),

          _firstContainer(),

          // customSlider(),
          _containerTopText('More Categories', ''),
          SizedBox(height: 10),
          _secondContainer(),
          _containerTopText('Popular Items', 'View More'),
          // _firstContainer(),

          // _thirdContainer(),
        ],
      ),
    );
  }
}

Widget _containerTopText(item, more) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          item,
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            more,
            style: TextStyle(
              color: Colors.purple,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    ),
  );
}

Widget _secondContainer() {
  List<dynamic> sliderTitle = [
    'Clothes',
    'Electronics',
    'Households',
    'Appliances',
    'Others'
  ];
  List<dynamic> stockItems = [
    '5 items',
    '20 items',
    '9 items',
    '5 items',
    '15 items'
  ];
  List<dynamic> myIcon = [Icon(Icons.a),Icon(icon)]
  return Container(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sliderTitle.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.40,
              child: Card(
                child: Row(
                  children: [
                    // SizedBox()
                    Center(
                      child: Icon(
                        Icons.control_point_sharp,
                        color: Colors.purple,
                        size: 18,
                      ),
                    ),
                    Column(
                      children: [
                        Text(sliderTitle[index]),
                        Text(stockItems[index]),
                      ],
                    )
                  ],
                ),
              ),
            );
          }));
}
