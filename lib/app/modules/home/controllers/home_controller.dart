import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  RxInt currentIndex = 0.obs;
  Rx<Color> color = Colors.blue.obs;
  Map<int, Color?> colorMap = {
    0: Colors.blue,
    1: Colors.red,
    2: Colors.amber,
    3: Colors.purple
  };

  @override
  void onInit() {
    tabController = TabController(length: 4, vsync: this);
    super.onInit();
  }

  void changeIndex(int index) {
    currentIndex.value = index;
    color.value = colorMap[currentIndex.value]!;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
