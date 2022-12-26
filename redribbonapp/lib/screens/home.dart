import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:redribbonapp/screens/Donorlist.dart';
import 'package:redribbonapp/screens/home2.dart';
import 'package:redribbonapp/screens/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: SizedBox(
            height: 1,
            width: 1,
            child: Image.asset(
              'assets/images/logo.png',
              height: 20,
              width: 20,
            ),
          ),
        ),
        title: Text(
          'Red Ribbon Club',
          style: GoogleFonts.lexend(
            color: HexColor(
              ('2D2D2D'),
            ),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 1.5,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 14),
              child: Image.asset(
                'assets/images/notification_icon.png',
                height: 30,
                width: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  'Welcome Pranav',
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: HexColor(
                      ('ED1B24'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(' Lets get started...',
                style: GoogleFonts.lexend(
                    fontSize: 17,
                    color: HexColor(
                      ('646464'),
                    ))),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home2()));
              },
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[4],
                    color: HexColor('FBFBFB'),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.search,
                        color: HexColor(
                          ('646464'),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        'Search Blood Group here',
                        style: GoogleFonts.lexend(
                            color: HexColor(
                              ('646464'),
                            ),
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      child: Image.asset('assets/images/filter_icon.png'),
                      width: 30,
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor('F2E6E1')),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/card_image.png',
                    height: 150,
                    width: 150,
                  ),
                  Text(
                      '"The measure of life is not\n its DURATION but its\n donation')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => donorlist()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Container(
                  height: 160,
                  width: 320,
                  decoration: BoxDecoration(
                      boxShadow: kElevationToShadow[4],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Row(children: [
                    Image.asset(
                      'assets/images/Donor logo.png',
                      height: 150,
                    ),
                    Text(
                      'Donor List',
                      style: GoogleFonts.lexend(
                          color: HexColor(
                            ('646464'),
                          ),
                          fontSize: 29,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screens = [
    HomePage(),
    Home2(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: HexColor('FCE9E9'),
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
            height: 60,
            backgroundColor: Colors.grey,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: [
              NavigationDestination(
                  icon: Image.asset(
                    'assets/images/home_icon.png',
                    width: 44,
                    height: 44,
                    color: HexColor('F63D3D'),
                  ),
                  label: 'Home'),
              NavigationDestination(
                  icon: Icon(
                    Icons.search_rounded,
                    size: 38,
                    color: HexColor('4E4E4E'),
                  ),
                  label: 'Search'),
              NavigationDestination(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: HexColor('4E4E4E'),
                    size: 42,
                  ),
                  label: 'Home')
            ]),
      ),
    );
  }
}
