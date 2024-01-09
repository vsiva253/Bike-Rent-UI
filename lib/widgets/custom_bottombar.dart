// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

// class PersistentBottomNavBar {
//   late PersistentTabController _controller;
//   bool _hideNavBar;

//   PersistentBottomNavBar() {
//     _controller = PersistentTabController(initialIndex: 0);
//     _hideNavBar = false;
//   }

//   List<Widget> _buildScreens() {
//     return [
//       Container(color: Colors.blue),
//       Container(color: Colors.green),
//       Container(color: Colors.yellow),
//       Container(color: Colors.red),
//     ];
//   }

//   List<PersistentBottomNavBarItem> _navBarsItems() {
//     return [
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.home),
//         title: 'Home',
//         activeColorPrimary: Colors.blue,
//         inactiveColorPrimary: Colors.grey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.search),
//         title: 'Search',
//         activeColorPrimary: Colors.green,
//         inactiveColorPrimary: Colors.grey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.add),
//         title: 'Add',
//         activeColorPrimary: Colors.yellow,
//         inactiveColorPrimary: Colors.grey,
//         onPressed: (context) {
//           // Handle the 'Add' button press
//         },
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.message),
//         title: 'Messages',
//         activeColorPrimary: Colors.red,
//         inactiveColorPrimary: Colors.grey,
//       ),
//     ];
//   }

//   PersistentTabView build() {
//     return PersistentTabView(
//       context as,
//       controller: _controller,
//       screens: _buildScreens(),
//       items: _navBarsItems(),
//       confineInSafeArea: true,
//       backgroundColor: Colors.white,
//       handleAndroidBackButtonPress: true,
//       resizeToAvoidBottomInset: true,
//       stateManagement: true,
//       hideNavigationBarWhenKeyboardShows: true,
//       hideNavigationBar: _hideNavBar,
//       decoration: NavBarDecoration(
//         colorBehindNavBar: Colors.indigo,
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       popAllScreensOnTapOfSelectedTab: true,
//       itemAnimationProperties: ItemAnimationProperties(
//         duration: Duration(milliseconds: 400),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: ScreenTransitionAnimation(
//         animateTabTransition: true,
//         curve: Curves.ease,
//         duration: Duration(milliseconds: 200),
//       ),
//       navBarStyle: NavBarStyle.style17,
//     );
//   }

//   void toggleNavBarVisibility() {
//     _hideNavBar = !_hideNavBar;
//   }
// }
