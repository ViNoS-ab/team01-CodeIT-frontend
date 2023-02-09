import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team01_codit_frontend/size_config.dart';
import 'package:team01_codit_frontend/utils/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:team01_codit_frontend/views/navigation/my_tasks_screen/my_tasks_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

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
              const Icon(Icons.add),
              const Text(
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
                children: [const Icon(Icons.person, size: 36), const Text('18')],
              ),
            ),
            const SizedBox(
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
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('87 %'),
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
          child: const Center(
              child: Text(
            'Deadline : 24 Aug 2023',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          )),
        ),
      ),

      InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MyTasksScreen())),
        child: Container(
          height: getHeight(60),
          width: getWidth(180),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getHeight(20)),
            color:  const Color(0xFF0A27E0),
          ),
          child: Center(
            child: Text('Visit My tasks',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: getHeight(20),
            ),
            ),
          ),
        ),
      )
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DevFest',style: TextStyle(fontSize: 32,color: Colors.blue) ,),
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
