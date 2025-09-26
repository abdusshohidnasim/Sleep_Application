import 'package:flutter/material.dart';
import 'package:untitled3/ButtonStyle.dart';
import 'FontStyle.dart';
import 'Music.dart';
import 'Night_Island.dart';
import 'Responsive.dart';
import 'Sleep_Music.dart';

class SleepStories extends StatefulWidget {
  const SleepStories({super.key});

  @override
  State<SleepStories> createState() => _SleepStoriesState();
}

class _SleepStoriesState extends State<SleepStories> {
  int secteditem = 0;
  void _onItemTapped(int index) {
    setState(() {
      secteditem = index;
    });

    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NightIsland()),
      );
    }else if(index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SleepMusic()),
      );
    }
    else if(index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Music()),
      );
    }
    }

  @override
  Widget build(BuildContext context) {
    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);

    return Scaffold(
      backgroundColor: Color(0xFF03174D),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/sleep.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Padding(
          padding: EdgeInsets.only(
            top: responsive.percentHight(36),
            bottom: responsive.percentHight(36),
            left: responsive.percentHight(20),
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: responsive.percentHight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Sleep Stories",
                          style: textStyle(28, FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: responsive.percentHight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: responsive.percentHight(44),
                      width: responsive.percentWidth(276),
                      child: Text(
                        "Soothing bedtime stories to help you \n fall into a deep and natural sleep",
                        style: textStyle(16, FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: responsive.percentHight(34.02)),
                Container(
                  height: responsive.percentHight(92),

                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: responsive.percentWidth(65),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/moon.jpg"),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 1) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: responsive.percentWidth(65),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/images/Heard.png"),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 2) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: responsive.percentWidth(65),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/images/emoji.png"),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 3) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: responsive.percentWidth(65),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/images/moon.jpg"),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 4) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: responsive.percentWidth(65),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/images/kidiz.jpeg"),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 5) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: responsive.percentWidth(65),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/images/facebook.png"),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 6) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: responsive.percentWidth(65),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Youtube.png"),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 7) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: responsive.percentWidth(65),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Youtube.png"),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: responsive.percentHight(10)),
                Padding(
                  padding: EdgeInsets.only(right: responsive.percentHight(20)),
                  child: Container(
                    width: double.infinity,
                    height: responsive.percentHight(223),

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/group.png"),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "The Ocean Moon",
                          style: textStyle(36, FontWeight.w600),
                        ),
                        Text(
                          "Non-stop 8- hourmixes of our\n most popular sleep audio",
                        ),
                        SizedBox(height: responsive.percentHight(21)),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "START",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          style: buttonStyle(Size(82, 35)),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: responsive.percentHight(174),
                              width: responsive.percentWidth(177),
                            ),
                          ),
                          Container(
                            height: responsive.percentHight(122),
                            width: responsive.percentWidth(177),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/maskGroup.png",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Night Island",
                                style: textStyle(18, FontWeight.w700),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "45 MIN . SLEEP MUSIC",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF98A1BD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                BottomNavigationBar(
                  currentIndex: secteditem,
                  backgroundColor: Colors.black,
                  selectedItemColor: Color(0xFF8E97FD),
                  unselectedItemColor: Color(0xFF03174D),
                  onTap: _onItemTapped,

                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "hoame",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shield_moon_sharp),
                      label: "Sleep",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.mediation),
                      label: "Meditati",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.library_music_sharp),
                      label: "Music",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: "Afser",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
