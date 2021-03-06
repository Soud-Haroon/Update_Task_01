import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DotLineBar extends StatelessWidget {
  DotLineBar(this.counter);
  final List<int> steps = [1, 2, 3, 4, 5];
  int counter;

  // void _increaseCount() {
  //   // ignore: todo
  // ignore: todo
  //   // TODO: implement setState
  //   super.setState(() {
  //     if (counter != 5) {
  //       counter++;
  //       print(counter);
  //     } else {
  //       counter = 1;
  //       print("$counter : 1 mean Value reset");
  //     }
  //   });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //-------------Main Container in which bar added---------//
          Container(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Divider(
                      color: Colors.grey[400],
                      thickness: 1,
                    ),
                  ),
                  //---------------Row for vertical Angel bar---------------//
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var step in steps)
                        //-------------Container for customize into Dot-------------//
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              border: step <= counter
                                  ? Border.all(
                                      width: 1.8, color: Color(0xffC53B4B))
                                  : Border.all(
                                      width: 2, color: Color(0xffEEB8B8)),
                              borderRadius: BorderRadius.circular(20),
                              color: step <= counter
                                  ? Color(0xffC53B4B)
                                  : Color(0xFFF5F5F7)),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: _increaseCount,
          //   child: Icon(Icons.add),
          // )
        ],
      ),
    );
  }
}

//------------------Ignore-------------------//

class OutlineCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          child: Row(
            children: [
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              Expanded(
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                ),
              ),
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              Expanded(
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                ),
              ),
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              Expanded(
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                ),
              ),
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              Expanded(
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                ),
              ),
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              //-------------------------------//
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.8, color: Color(0xffEEB8B8)),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
