import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  List food = [
    'assets/images/food_1.png',
    'assets/images/food_2.png',
    'assets/images/food_3.png',
    'assets/images/food_5.png',
  ];
  List name = [
    "Vegetable Sandwich",
    "Salmon Bowl",
    "Kadak Pasta",
    "Tasty Noodles",
  ];
  List rating = [
    "★ 4.3 (401)",
    "★ 4.5 (402)",
    "★ 4.2 (403)",
    "★ 4.1 (404)",
  ];
  List price = [
    "\$25.00",
    "\$30.00",
    "\$28.00",
    "\$20.00",
  ];
  List food2 = [
    'assets/images/food_1.png',
    'assets/images/food_2.png',
    'assets/images/food_3.png',
  ];
  List item2 = [
    "Beef Bowl",
    "Beef and Egg Bowl",
    "Fruit Bowl",
  ];
  List price2 = [
    "\$25.00",
    "\$27.00",
    "\$20.00",
  ];
  List items = [
    "DINNER",
    "LUNCH",
    "BREAKFAST",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.red,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.tune,
                      color: Colors.red,
                      size: 30,
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 55,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(2, 2)),
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.red,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    "Your Favoutites",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    4,
                    (index) => Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: 10, right: 10, top: 60),
                              height: 190,
                              width: 165,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade200,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17.5),
                                    ),
                                    Text(
                                      rating[index],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            price[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          Spacer(),
                                          Container(
                                            height: 28,
                                            width: 65,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Center(
                                                child: Text(
                                              "Add",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 18),
                                            )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 70,
                                backgroundImage: AssetImage(food[index]),
                              ),
                            ),
                          ],
                        )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 21),
                                child: Text(items[index]),
                              )),
                    ),
                  ),
                  Column(
                    children: List.generate(
                        3,
                        (index) => Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 81,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      color: Colors.teal.shade200),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 65,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                item2[index],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                price2[index],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0, right: 7),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 25,
                                              width: 57,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Center(
                                                child: Text(
                                                  "Add",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: -50,
                                  top: 0,
                                  bottom: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 50,
                                    child: Center(
                                        child: Image.asset(food2[index])),
                                  ),
                                ),
                              ],
                            )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
