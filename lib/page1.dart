import 'package:flutter/material.dart';
import 'package:untitled3/ButtonStyle.dart';
import 'package:untitled3/FontStyle.dart';
import 'package:untitled3/page2.dart';

import 'Responsive.dart';

class Sleep extends StatefulWidget {
  @override
  State<Sleep> createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(hight, width);

    return Scaffold(
      body: PageView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sleep.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: responsive.percentHight(359.9),
                bottom: responsive.percentHight(307.1),
                left: responsive.percentWidth(48.84),
                right: responsive.percentWidth(0.52),
              ),
              child: Container(
                height: responsive.percentHight(229),
                width: responsive.percentWidth(369),
                child: Image.asset(
                  "assets/images/TowBaird.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sleep.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: responsive.percentHight(155),
                bottom: responsive.percentHight(94),
                left: responsive.percentWidth(20),
                right: responsive.percentWidth(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Row(
                    children: [
                      Text(
                        "Wecome to Sleep",
                        style: textStyle(34, FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: responsive.percentHight(15)),
                  Row(
                    children: [
                      SizedBox(
                        height: responsive.percentHight(80.11),
                        width: responsive.percentWidth(350),

                        child: Text(
                          "Explore the new king of sleep. It uses soundand vesualization to create perfect conditions  for refreshing sleep. ",

                          style: textStyle(16, FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: responsive.percentHight(68.78)),

                  Row(
                    children: [
                      Container(
                        height: responsive.percentHight(229),
                        width: responsive.percentWidth(369),
                        child: Image.asset(
                          "assets/images/TowBaird.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: responsive.percentHight(105)),
                  Expanded(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SleepStories()));
                          },
                          child: Text(
                            "GET STARTED",
                            style: textStyle(14, FontWeight.w400),
                          ),
                          style: buttonStyle(
                            Size(
                              responsive.percentHight(364),
                              responsive.percentHight(63),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
