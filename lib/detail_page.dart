import 'package:flutter/material.dart';

class detail_page extends StatefulWidget {
  @override
  _detail_pageState createState() => _detail_pageState();
}

class _detail_pageState extends State<detail_page> {
  List text1 = [
    "WEIGHT",
    "CALORIES",
    "VITAMINS",
  ];

  List text2 = [
    "250 G",
    "250 CAL",
    "A,B6",
  ];

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.tune,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 590,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Vegetable",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Sandwich",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$24.00",
                              style: TextStyle(fontSize: 25),
                            ),
                            Spacer(),
                            Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.teal.shade200,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              3,
                              (index) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = index;
                                      });
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 85,
                                      width: 145,
                                      decoration: BoxDecoration(
                                          color: selected == index
                                              ? Colors.teal.shade200
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                              color: Colors.grey, width: 2.5)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 7, horizontal: 10),
                                            child: Text(
                                              text1[index],
                                              style: TextStyle(
                                                  color: selected == index
                                                      ? Colors.white
                                                      : Colors.grey,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  text2[index],
                                                  style: TextStyle(
                                                      color: selected == index
                                                          ? Colors.white
                                                          : Colors.black,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        height: 70,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: BorderRadius.circular(35)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 140,
                            ),
                            Text(
                              "\$72.00",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Spacer(),
                            Text(
                              "››››››",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: -35,
                  right: 0,
                  top: -120,
                  child: Image.asset(
                    'assets/images/food_1.png',
                    height: 300,
                    width: 300,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
