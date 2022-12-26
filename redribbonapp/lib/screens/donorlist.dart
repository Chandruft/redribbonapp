import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redribbonapp/screens/departments.dart';
import 'package:redribbonapp/screens/profile.dart';

class donorlist extends StatelessWidget {
  const donorlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: HexColor('FFFFFF'),
          title: Text(
            'Donor List',
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  'Students',
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: HexColor(
                      ('4B4B4B'),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/stud_logo.png',
                  height: 23,
                  width: 46,
                  color: HexColor('F63D3D'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => depart()));
              },
              child: Container(
                height: 55,
                width: 400,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '1st Year(50)',
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: HexColor(
                          ('6A6A6A'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: HexColor(
                        ('F84C54'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
              width: 15,
            ),
            Container(
              height: 55,
              width: 400,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('2nd Year(60)',
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: HexColor(
                          ('6A6A6A'),
                        ),
                      )),
                  SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: HexColor(
                      ('F84C54'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
              width: 15,
            ),
            Container(
              height: 55,
              width: 400,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('3rd Year(40)',
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: HexColor(
                          ('6A6A6A'),
                        ),
                      )),
                  SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: HexColor(
                      ('F84C54'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
              width: 15,
            ),
            Container(
              height: 55,
              width: 400,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('4th Year(30)',
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: HexColor(
                          ('6A6A6A'),
                        ),
                      )),
                  SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: HexColor(
                      ('F84C54'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            Row(
              children: [
                Text(
                  'Passed Outs',
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: HexColor(
                      ('4B4B4B'),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/stud_logo2.png',
                  height: 37,
                  color: HexColor('F63D3D'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Container(
              height: 55,
              width: 400,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Passed out(100)',
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: HexColor(
                          ('6A6A6A'),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: HexColor(
                      ('F84C54'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
