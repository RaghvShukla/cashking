import 'package:flutter/material.dart';

class AllOfferScreen extends StatelessWidget {
  const AllOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
          child: Row(
            children: [
              Image.asset('assets/fire.png'),
              SizedBox(width: 10),
              Text(
                "Trending offers",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff7c7c7c),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 205,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      width: 180,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/img1.png',
                            fit: BoxFit.cover,
                          ),
                          Container(
                            height: 78,
                            width: 180,
                            padding: EdgeInsets.all(12.0),
                            decoration: const BoxDecoration(
                              color: Color(0xff200114),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Alto's Odysseyz",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Get Rs. 230",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/instant.png'),
                                    Text(
                                      "4,687 users",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
          child: Row(
            children: [
              Image.asset('assets/more.png'),
              SizedBox(width: 10),
              Text(
                "More offers",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff7c7c7c),
                ),
              )
            ],
          ),
        ),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            TileList(color: Color(0xff77bb00), imgPath: 'assets/i1.png'),
            TileList(color: Color(0xffaa9ae3), imgPath: 'assets/i2.png'),
            TileList(color: Color(0xff0089ff), imgPath: 'assets/i3.png'),
            TileList(color: Color(0xffef4776), imgPath: 'assets/i4.png'),
          ],
        )
      ],
    );
  }
}

class TileList extends StatelessWidget {
  const TileList({Key? key, required this.color, required this.imgPath})
      : super(key: key);
  final Color color;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: SizedBox(
        height: 90,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(10),
            side: BorderSide(width: 2, color: color),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Row(
            children: [
              Image.asset(
                imgPath,
                height: 73,
                width: 73,
              ),
              SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alto's Odysseyz",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 1, color: Color(0xff1185d5)),
                      ),
                      child: Text(
                        "Get ₹230",
                        style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(child: SizedBox()),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Image.asset('assets/inatant.png'),
                    Text(
                      "  23,567",
                      style: TextStyle(
                        color: Color(0xffff9e0c),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
