import 'package:flutter/material.dart';
import 'package:untitled3/FontStyle.dart';

import 'Responsive.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    double cureentvalu= 0;
    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close),
                  ),
                  SizedBox(width: responsive.percentWidth(190)),
                  Icon(Icons.favorite, color: Colors.white),
                  SizedBox(width: responsive.percentWidth(15)),

                  Icon(Icons.download, color: Colors.white),
                ],
              ),
            ),
            Expanded(flex: 50, child: Container()),
            Expanded(
              flex: 20,
              child: Text(
                "Night \n Island",
                style: textStyle(34, FontWeight.w700),
              ),
            ),
            Expanded(
              flex: 20,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.replay_30, color: Colors.red),
                  ),
                  SizedBox(width: responsive.percentWidth(65),),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.play_circle, color: Colors.red),
                  ),
                  SizedBox(width: responsive.percentWidth(66),),

                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.forward_30, color: Colors.red),
                  ),

                ],
              ),
            ),

            Expanded(
              child: Slider(value: cureentvalu,
                  min: 0,
                  max: 10,
                  activeColor: Colors.red,
                  onChanged: (value){
                    setState(() {
                      cureentvalu=value;
                    }
                    );
                  } ),
            ),
            SizedBox(height: responsive.percentHight(10),),
            Row(
              children: [
                Text("0.00",style: textStyle(20, FontWeight.w700),),
                SizedBox(width: responsive.percentHight(240),),
                Text("4,50",style: textStyle(20, FontWeight.w700),)
              ],
            ),
            Expanded(
                flex: 25,
                child: Container())
          ],
        ),
      ),
    );
  }
}
