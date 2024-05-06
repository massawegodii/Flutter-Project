import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {

  static OnBoardingController get instance => Get.find();

  //Variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Update current index when page Scrroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Update current index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
