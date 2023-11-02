import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  var height, width;

  List imgData = [
    "images/users.png",
    "images/truckin.png",
    "images/itemout.png",
    "images/Items.png",
  ];

  List titles = [
    "users",
    "truckin",
    "itemout",
    "Items",
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          color: Colors.deepPurple,
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                height: height * 0.25,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                          top: 30,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.sort_rounded,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 40,
                              // child: Icon(
                              //   Icons.account_box_sharp,
                              //   color: Colors.white,
                              //   size: 40,
                              // ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage("images/man.png"))),
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dashboard",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Last Update 21 Oct 2023 ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                height: height * 0.75,
                width: width,
                // padding: EdgeInsets.symmetric(),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 100,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: imgData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 6,
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                imgData[index],
                                width: 100,
                              )
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ],
          )),
    ));
  }
}
