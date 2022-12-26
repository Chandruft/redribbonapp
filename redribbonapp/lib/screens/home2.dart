import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redribbonapp/screens/home.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('F9F9F9'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        elevation: 4,
        leading: Padding(
          padding: EdgeInsets.only(left: 22),
          child: SizedBox(
            height: 1,
            width: 1,
            child: Icon(
              Icons.search,
              size: 23,
              color: HexColor('646464'),
            ),
          ),
        ),
        title: Text(
          'Search blood here',
          style: GoogleFonts.lexend(
            color: HexColor(
              ('646464'),
            ),
            fontSize: 18,
          ),
        ),
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
                  'Category',
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: HexColor(
                      ('F63D3D'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Text('Blood group',
                style: GoogleFonts.lexend(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: HexColor(
                      ('4B4B4B'),
                    ))),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              gcontainer("A+ve"),
              gcontainer("B+ve"),
              gcontainer("O+ve"),
              gcontainer("AB+ve")
            ]),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              gcontainer("A-ve"),
              gcontainer("B-ve"),
              gcontainer("O-ve"),
              gcontainer("AB-ve")
            ]),
            SizedBox(
              height: 20,
            ),
            Text('Donor',
                style: GoogleFonts.lexend(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: HexColor(
                      ('4B4B4B'),
                    ))),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 45,
                    width: 150,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('FFC1C1'), width: 2),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: HexColor('FFC1C1'),
                              blurRadius: 4,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: HexColor('FCE9E9'),
                        borderRadius: BorderRadius.circular(14)),
                    child: Center(
                      child: Text('Student',
                          style: GoogleFonts.lexend(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: HexColor(
                                ('F84C54'),
                              ))),
                    )),
                Container(
                  height: 45,
                  width: 150,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor('FFC1C1'), width: 2),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: HexColor('FFC1C1'),
                            blurRadius: 4,
                            offset: Offset(0.0, 0.75))
                      ],
                      color: HexColor('FCE9E9'),
                      borderRadius: BorderRadius.circular(14)),
                  child: Center(
                    child: Text('Passed out',
                        style: GoogleFonts.lexend(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: HexColor(
                              ('F84C54'),
                            ))),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                  height: 45,
                  width: 150,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor('FF858B'), width: 2),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: HexColor('F84C54'),
                            blurRadius: 1,
                            offset: Offset(0.0, 0.75))
                      ],
                      color: HexColor('FCE9E9'),
                      borderRadius: BorderRadius.circular(35)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search,
                            color: HexColor(
                              ('F84C54'),
                            )),
                        Text('Search',
                            style: GoogleFonts.lexend(
                                fontSize: 21,
                                fontWeight: FontWeight.w400,
                                color: HexColor(
                                  ('F84C54'),
                                )))
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

Widget gcontainer(String val) {
  return Container(
    height: 45,
    width: 65,
    alignment: Alignment.centerRight,
    decoration: BoxDecoration(
        border: Border.all(color: HexColor('FFC1C1'), width: 2),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: HexColor('FFC1C1'),
              blurRadius: 3,
              offset: Offset(0.0, 0.75))
        ],
        color: HexColor('FCE9E9'),
        borderRadius: BorderRadius.circular(14)),
    child: Center(
      child: Text(
        val.toString(),
        style: GoogleFonts.lexend(
            fontSize: 18,
            color: HexColor('F63D3D'),
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}
