import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team01_codit_frontend/utils/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> listView = [
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.add),
              Text(
                'Description',
                style: TextStyle(fontSize: 24),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(borderRadius)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.person, size: 36), Text('18')],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  color: CupertinoColors.systemYellow,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      animateFromLastPercent: true,
                      barRadius: Radius.circular(borderRadius),
                      width: 240.0,
                      lineHeight: 11.0,
                      percent: 0.81,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.red,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('87 %'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
              child: Text(
            'Deadline : 24 Aug 2023',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          )),
        ),
      ),
      SizedBox(
        height: 200,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('DevFest',style: TextStyle(fontSize: 32,color: Colors.blue) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: listView.length,
          itemBuilder: (context, index) {
            return listView[index];
          },
        ),
      ),
    );
  }
}
