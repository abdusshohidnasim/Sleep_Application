import 'package:flutter/material.dart';
import 'package:untitled3/ButtonStyle.dart';
import 'package:untitled3/FontStyle.dart';
import 'package:untitled3/Responsive.dart';

class NightIsland extends StatefulWidget {
  const NightIsland({super.key});

  @override
  State<NightIsland> createState() => _NightIslandState();
}

class _NightIslandState extends State<NightIsland> {
  @override
  Widget build(BuildContext context) {
    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);

    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: responsive.percentHight(290),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/maskGroup.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          SizedBox(width: 10),

                         ElevatedButton(onPressed: (){
                           setState(() {
                             Navigator.pop(context);
                           });
                         }, child: Icon(Icons.arrow_back)),
                          SizedBox(width: responsive.percentWidth(230)),
                          Icon(Icons.favorite),
                          SizedBox(width: 10),
                          Icon(Icons.download),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: responsive.percentHight(30)),
          Padding(
            padding: EdgeInsets.only(
              left: responsive.percentHight(20),
              right: responsive.percentHight(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Night Island", style: textStyle(34, FontWeight.w700)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "45 MIN . SLEEP MUSIC ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Ease the mind into a restful night’s sleep  with \n these deep, amblent tones.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: responsive.percentHight(20)),
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.white),
                    Text(
                      "  24.234 Favorits",
                      style: textStyle(14, FontWeight.w400),
                    ),
                    SizedBox(width: responsive.percentHight(30)),
                    Icon(Icons.headphones, color: Colors.white),
                    Text(
                      "  34.234 Lestening",
                      style: textStyle(14, FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(height: responsive.percentHight(50)),
                Row(
                  children: [
                    Text("Related", style: textStyle(24, FontWeight.w400)),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Container(
                        height: responsive.percentHight(175),
                        width: responsive.percentWidth(177),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: responsive.percentHight(130),
                              width: responsive.percentWidth(177),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/maskGroup.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Moon Clouds",
                                  style: textStyle(18, FontWeight.w700),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "45 MIN .SLEEP MUSIC ",
                                  style: textStyle(11, FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Container(
                        height: responsive.percentHight(175),
                        width: responsive.percentWidth(177),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: responsive.percentHight(130),
                              width: responsive.percentWidth(177),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/maskGroup.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Moon Clouds",
                                  style: textStyle(18, FontWeight.w700),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "45 MIN .SLEEP MUSIC ",
                                  style: textStyle(11, FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: responsive.percentHight(20)),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "PLAY",
                          style: textStyle(14, FontWeight.w400),
                        ),
                        style: buttonStyle(Size(double.infinity, 50)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
