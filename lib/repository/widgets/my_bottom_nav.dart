import 'package:flutter/material.dart';
import 'package:hotel_ui/repository/screens/booking/booking_screen.dart';
import 'package:hotel_ui/repository/screens/home/home_screen.dart';
import 'package:hotel_ui/repository/screens/more/more_screen.dart';
import 'package:hotel_ui/repository/screens/services/services_screen.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    ServicesScreen(),
    BookingScreen(),
    MoreScreen(),
  ];

  final List<String> iconsPath = [
    'assets/images/home.png',
    'assets/images/services.png',
    'assets/images/booking.png',
    'assets/images/more.png',
  ];

  final List<String> labels = ["Home", 'Services', 'Booking', "More"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 20, right: 20),
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0XFF05623C)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(iconsPath.length, (index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          iconsPath[index],
                          width: currentIndex == index ? 33 : 26,
                          height: currentIndex == index ? 33 : 26,
                          color: currentIndex == index
                              ? const Color(0xFFFFFFFF)
                              : const Color(0xFF000000),
                        ),
                        Text(
                          labels[index],
                          style: TextStyle(
                            color: currentIndex == index
                                ? const Color(0xFFFFFFFF)
                                : const Color(0xFF000000),
                            fontSize: currentIndex == index ?14 : 10,
                            fontWeight: currentIndex == index
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
