import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/user_home.dart';
import 'package:instagram_ui/pages/user_reels.dart';
import 'package:instagram_ui/pages/user_search.dart';
import 'package:instagram_ui/pages/user_shop.dart';

import 'account.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int _selectedIndex = 0;
void _navBottomBar(int index){
   setState(() {
     _selectedIndex = index;
   });
 }

 final List<Widget> _children =  [
   UserHome(),
   UserReels(),
   UserSearch(),
   UserShop(),
   const UserAccount()
 ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'account'),
        ],
      ),
    );
  }
}
