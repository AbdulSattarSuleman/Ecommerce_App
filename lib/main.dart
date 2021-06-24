import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   var index = 0;
  //   Timer.periodic(Duration(seconds: 1), (Timer timer) {
  //     // if (!_isRunning) {
  //     //   timer.cancel();
  //     // }
  //     _addItem();
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var greeting = '12312';
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
                    image: AssetImage(images[0].image),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    images[0].productTitle,
                    style: TextStyle(
                      letterSpacing: -1,
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              _Reviews(),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _containerTopText('Items', 'View More'),

            _firstContainer(),

            // customSlider(),
            _containerTopText('More Categories', ''),
            SizedBox(height: 10),
            _secondContainer(),
            _containerTopText('Popular Items', 'View More'),
            // _firstContainer(),
            SizedBox(height: 10),
            _thirdContainer(),
          ],
        ),
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
  // class sliderContent{
  //   var sliderTitle;
  //   var stockItems;
  //   var myIcon;
  //   sliderContent(var sliderTitle, var stockItems, var myIcon){
  //     this.sliderTitle = sliderTitle;
  //     this.stockItems = stockItems;
  //     this.myIcon = myIcon;

  //   }
  // }

  // List<sliderContent> _slider = [

  // ];
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
  List<dynamic> myIcon = [
    Icon(
      Icons.local_drink,
      color: Colors.purple,
      size: 25,
    ),
    Icon(
      Icons.bolt_sharp,
      color: Colors.purple,
      size: 25,
    ),
    Icon(
      Icons.cabin_sharp,
      color: Colors.purple,
      size: 25,
    ),
    Icon(
      Icons.bolt,
      color: Colors.purple,
      size: 25,
    ),
    Icon(
      Icons.double_arrow_rounded,
      color: Colors.purple,
      size: 25,
    )
  ];
  return Container(
      height: 60,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: sliderTitle.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.45,
              child: InkWell(
                onTap: () {
                  print(sliderTitle[index]);
                },
                child: Card(
                  child: Row(
                    children: [
                      // SizedBox()
                      Center(
                        child: myIcon[index],
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sliderTitle[index],
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Text(
                            stockItems[index],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }));
}

Widget _thirdContainer() {
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
    // 'Wireless',
    // 'Tab'
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

  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8),
    child: GridView.builder(
        itemCount: productTitle.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: Colors.purple,
            onLongPress: () {
              print(productTitle[index]);
            },
            child: Card(
              elevation: 3,
              clipBehavior: Clip.antiAlias,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                // height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(productImage[index]))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 6),
                      child: Text(
                        productTitle[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    _Reviews(),
                  ],
                ),
              ),
            ),
          );
        }),
  );
}

Widget _Reviews() {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Row(
      children: [
        Icon(
          Icons.star,
          size: 10,
          color: Colors.yellow,
        ),
        // SizedBox(
        //   width: 5,
        // ),
        Icon(
          Icons.star,
          size: 10,
          color: Colors.yellow,
        ),
        // SizedBox(
        //   width: 5,
        // ),
        Icon(
          Icons.star,
          size: 10,
          color: Colors.yellow,
        ),
        // SizedBox(
        //   width: 5,
        // ),
        Icon(
          Icons.star,
          size: 10,
          color: Colors.yellow,
        ),
        // SizedBox(
        //   width: 5,
        // ),
        Icon(
          Icons.star,
          size: 10,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '5.0',
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(23 Reviews)',
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

class SliderImage {
  var image;
  var productTitle;
  var reviews;
  SliderImage(var image, var productTitle, var reviews) {
    this.image = image;
    this.productTitle = productTitle;
    this.reviews = reviews;
  }
}

List<SliderImage> images = [
  new SliderImage('assets/download.jpg', 'Iphone 12', _Reviews),
  new SliderImage('assets/iphone.jpg', 'Note 20 Ultra', _Reviews),
  new SliderImage('assets/macbook-pro.jpg', 'Macbook Air', _Reviews),
  new SliderImage('assets/macbook.jpg', 'Macbook Pro', _Reviews),
  new SliderImage('assets/gaming-pc.jpg', 'Gaming PC', _Reviews),
  new SliderImage('assets/keyboard.jpg', 'Backlit', _Reviews),
  new SliderImage('assets/Mercedes.jpg', 'Mercedes', _Reviews),
  new SliderImage('assets/car.jpg', 'Mutton', _Reviews),
];
