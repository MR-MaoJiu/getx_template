import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_template/app/modules/home/views/user_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const UserView(),
          const Placeholder(),
          const Placeholder(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        /// Provide NotchBottomBarController
        notchBottomBarController: controller.controller,
        color: Colors.white,
        showLabel: false,
        notchColor: Colors.black87,

        /// restart app if you change removeMargins
        removeMargins: false,
        bottomBarWidth: 500,
        durationInMilliSeconds: 300,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.book_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.book_sharp,
              color: Colors.blueAccent,
            ),
            itemLabel: '小说',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.ondemand_video_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.ondemand_video_sharp,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Page 2',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.live_tv_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.live_tv_sharp,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Page 2',
          ),
        ],
        onTap: (index) {
          /// perform action on tab change and to update pages you can update pages without pages
          controller.pageController.jumpToPage(index);
        },
      ),
    );
  }
}
