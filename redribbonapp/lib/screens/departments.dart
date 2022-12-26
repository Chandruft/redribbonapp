import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redribbonapp/screens/donorlist.dart';
import 'package:redribbonapp/screens/home.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class depart extends StatelessWidget {
  const depart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: HexColor('FFFFFF'),
          title: Text(
            'Departments',
            style: GoogleFonts.lexend(
                color: HexColor(
                  ('F63D3D'),
                ),
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
          elevation: 1.5,
          actions: [
            Padding(
              padding: EdgeInsets.all(1),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: HexColor('F63D3D'),
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Back',
                style: GoogleFonts.lexend(
                    color: HexColor(
                      ('F63D3D'),
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                gcontainer('Artificial                '),
                SizedBox(
                  height: 20,
                ),
                gcontainer('Computer Science'),
                SizedBox(
                  height: 20,
                ),
                gcontainer('Information         '),
                gcontainer('Biomedical          '),
                gcontainer('Mechanical         '),
                gcontainer('Civil                    '),
                gcontainer('Mechatronics    '),
              ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: HexColor('FFFFFF'),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: HexColor('F84C54'),
                blurRadius: 1.2,
                offset: Offset(0.0, 0.75))
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              color: HexColor('FCE9E9'),
              borderRadius: const BorderRadius.all(Radius.circular(300)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                children: [
                  SizedBox(
                    width: 3,
                  ),
                  Image.asset(
                    'assets/images/home_icon.png',
                    width: 44,
                    height: 44,
                    color: HexColor('F63D3D'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              color: HexColor('FCE9E9'),
              borderRadius: const BorderRadius.all(Radius.circular(300)),
            ),
            child: Icon(
              Icons.search_rounded,
              size: 38,
              color: HexColor('4E4E4E'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: HexColor('FCE9E9'),
                borderRadius: const BorderRadius.all(Radius.circular(300)),
              ),
              child: Icon(
                Icons.account_circle_outlined,
                color: HexColor('4E4E4E'),
                size: 42,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

Widget gcontainer(String val) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: 55,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: HexColor('6A6A6A'),
                blurRadius: 6,
                offset: Offset(0.0, 0.75))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              val.toString(),
              style: GoogleFonts.lexend(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: HexColor(
                  ('6A6A6A'),
                ),
              ),
            ),
            SizedBox(
              height: 1,
              width: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: HexColor(
                  ('F84C54'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
