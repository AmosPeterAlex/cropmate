import 'package:flutter/material.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() =>
      _BottomNavigationView();
}

class _BottomNavigationView extends State<BottomNavigationView> {
  int index = 0;

  // var screen = [homePage(), favorite_page(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              size: 30,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xFF568896),
              size: 25,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.add,
              size: 30,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.add,
              color: Color(0xFF568896),
              size: 25,
            ),
            label: "Add",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 30,
            ),
            icon: Icon(Icons.favorite_border_outlined,
                color: Color(0xFF568896), size: 25),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
              icon: Icon(Icons.person_outline_outlined,
                  color: Color(0xFF568896), size: 25),
              label: "profile"),
        ],
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        currentIndex: index,
        selectedItemColor: Color(0xFF568896),
      ),
      // body: screen[index],
    );
  }
}
