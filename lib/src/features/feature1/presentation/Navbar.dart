import "package:flutter/material.dart";
import 'package:instaapp/src/features/feature1/presentation/AddPost.dart';
import 'package:instaapp/src/features/feature1/presentation/Explore.dart';
import 'package:instaapp/src/features/feature1/presentation/ProfilePage.dart';
import 'package:instaapp/src/features/feature1/presentation/ShopPage.dart';
import 'HomePage.dart';
import 'package:bottom_nav/bottom_nav.dart';


class NavBar extends StatefulWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex= 0;

// int _selectedItemIndex = 0;
  final List pages = [
     DemoPage(),
     //MyHomePage(),
     ExplorePage(),
     AddPost(),
     ShopPage(),
     ProfilePage(),

  ];
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        bottomNavigationBar: BottomNav(
        index: _selectedIndex,
       backgroundColor: Colors.black,
        showElevation: true,
        navBarHeight: 75.0,
        radius: 30.0,
        onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        items: [
          BottomNavItem(
              icon: Icons.home,
              label: " ",
              selectedColor: Colors.white),
          BottomNavItem(
              icon: Icons.search, 
              label: " ", 
              selectedColor: Colors.white),
          BottomNavItem(
              icon: Icons.add_box_outlined, 
              label: "", 
              selectedColor: Colors.white),
          BottomNavItem(
              icon: Icons.shopping_bag_outlined,
              label: " ",
              selectedColor: Colors.white),
           BottomNavItem(
              icon: Icons.person,
              label: " ",
              selectedColor: Colors.white),

        ],
      ),

  body: pages[_selectedIndex],

        // bottomNavigationBar: BottomNavigationBar(
        //   elevation: 1,
        //   backgroundColor: Colors.black,
        //   unselectedItemColor: Colors.grey,
        //   selectedItemColor: Colors.white,
        //   currentIndex: _selectedItemIndex,
        //   type: BottomNavigationBarType.fixed,
        //   onTap: (int index) {
        //     setState(() {
        //       _selectedItemIndex = index;
        //     });
        //   },
        //   items:const  [
        //     BottomNavigationBarItem(
        //     label: "",
        //       icon: Icon(Icons.home_filled,
        //       size: 30,),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "",
        //       icon: Icon(Icons.search,
        //       size: 30,),
        //     ),
        //     BottomNavigationBarItem(
        //      label: "",
        //       icon: Icon(Icons.add_box_outlined,
        //       size: 30,),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "",
        //       icon: Icon(Icons.shopping_bag_outlined, 
        //       size: 30,),
        //     ),
        //       BottomNavigationBarItem(
        //       label: "",
        //       icon: Icon(Icons.account_circle_outlined, 
        //       size: 30,),
        //     ),
        //   ],
        // ),
       // body: pages[_selectedItemIndex]
      ),
    );
  }
}
