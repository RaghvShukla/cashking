import 'package:cashking/app/modules/home/views/all_offers_screen.dart';
import 'package:cashking/app/modules/home/views/gifts_screen.dart';
import 'package:cashking/app/modules/home/views/my_offers_screen.dart';
import 'package:cashking/app/modules/home/views/upcoming_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1fcff),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              "Hey Shubham",
              style: TextStyle(fontSize: 18),
            ),
            leading: Image.asset('assets/drawer.png'),
            backgroundColor: Colors.transparent,
            expandedHeight: 170,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff1185D5),
                      Color(0xff33C1EF),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 21),
                      child: SizedBox(
                        width: 100,
                        height: 37,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            padding: const EdgeInsets.all(5),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Row(
                            children: const [
                              CircleAvatar(
                                radius: 14.5,
                                backgroundColor: Color(0xff33C1EF),
                                child: Icon(
                                  Icons.account_balance_wallet_outlined,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                              SizedBox(width: 9),
                              Text(
                                "₹ 452",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      height: 80,
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(11),
                          topRight: Radius.circular(11),
                        ),
                      ),
                      child: Obx(() {
                        return TabBar(
                          controller: controller.tabController,
                          labelPadding: const EdgeInsets.all(0),
                          indicatorColor:
                              controller.colorMap[controller.currentIndex],
                          onTap: (value) {
                            controller.changeIndex(value);
                          },
                          tabs: [
                            TabContainer(
                              iconColor: controller.colorMap[0],
                              bgColor: controller.currentIndex.value == 0
                                  ? Colors.blue[50]
                                  : Colors.white,
                              icon: controller.currentIndex.value == 0
                                  ? Icons.category_rounded
                                  : Icons.category_outlined,
                              text: 'All Offers',
                            ),
                            TabContainer(
                              iconColor: controller.colorMap[1],
                              bgColor: controller.currentIndex.value == 1
                                  ? Colors.orange[50]
                                  : Colors.white,
                              icon: Icons.card_giftcard,
                              text: 'Gifts',
                            ),
                            TabContainer(
                              iconColor: controller.colorMap[2],
                              bgColor: controller.currentIndex.value == 2
                                  ? Colors.amber[50]
                                  : Colors.white,
                              icon: controller.currentIndex.value == 2
                                  ? Icons.access_time_filled
                                  : Icons.access_time_outlined,
                              text: 'Upcoming',
                            ),
                            TabContainer(
                              iconColor: controller.colorMap[3],
                              bgColor: controller.currentIndex.value == 3
                                  ? Colors.deepPurple[50]
                                  : Colors.white,
                              icon: controller.currentIndex.value == 3
                                  ? Icons.check_circle
                                  : Icons.check_circle_outline,
                              text: 'My Offers',
                            ),
                          ],
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: controller.tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const AllOfferScreen(),
                const GiftsScreen(),
                const UpcomingScreen(),
                const MyOffersScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TabContainer extends StatelessWidget {
  const TabContainer({
    Key? key,
    required this.iconColor,
    required this.bgColor,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final Color? iconColor;
  final Color? bgColor;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93,
      height: 79,
      color: bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(height: 8.6),
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
