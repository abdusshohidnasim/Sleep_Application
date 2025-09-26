import 'package:flutter/material.dart';

import 'FontStyle.dart';
import 'Responsive.dart';

class SleepMusic extends StatefulWidget {
  const SleepMusic({super.key});

  @override
  State<SleepMusic> createState() => _SleepMusicState();
}

class _SleepMusicState extends State<SleepMusic> {
  @override
  Widget build(BuildContext context) {
    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);

    return Scaffold(

      backgroundColor: Colors.black12,

      bottomNavigationBar:  BottomNavigationBar(

        backgroundColor: Colors.black,
        selectedItemColor: Color(0xFF8E97FD),
        unselectedItemColor: Color(0xFF03174D),


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
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(flex: 5,child: Container()),

            Expanded(
              flex: 10,
              child: Container(
                child: Row(
                  children: [

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: responsive.percentWidth(75.8),),
                    
                    Text("Sleep",style: textStyle(24, FontWeight.w700),)
                  ],
                ),
              ),
            ),
            Expanded(flex: 90, child: Container(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: responsive.percentHight(180),
                          width: responsive.percentWidth(177),
                        ),
                      ),
                      Container(
                        height: responsive.percentHight(122),
                        width: responsive.percentWidth(177),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/maskGroup.png"),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
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

            ))
          ],
        ),
      ),
    );
  }
}
