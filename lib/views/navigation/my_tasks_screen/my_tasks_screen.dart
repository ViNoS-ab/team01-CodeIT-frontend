import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:team01_codit_frontend/models/Tasks_info.dart';
import 'package:team01_codit_frontend/size_config.dart';
import 'package:team01_codit_frontend/utils/constants.dart';
import 'package:team01_codit_frontend/views/Profile_section/Profile_animation.dart';



class MyTasksScreen extends StatefulWidget {
  const MyTasksScreen({Key? key}) : super(key: key);

  @override
  State<MyTasksScreen> createState() => _MyTasksScreenState();
}

class _MyTasksScreenState extends State<MyTasksScreen> {
  List<TasksModel> Tasks = [
    TasksModel("Writing the PV of the Last meeting", false,'GIP project'),
    TasksModel("Finishing UI ", false,'DevFest'),
    TasksModel("Fixing bugs", false,'GIP project'),
    TasksModel("push in the main branche", false,'DevFest'),
    TasksModel("code Tasks Widget", false,'GIP project'),
    TasksModel("Integrating the backend", false,'DevFest'),
    TasksModel("Building APK", false,'GIP project'),
    TasksModel('Talent Screen', false, 'FlutterFest'),
    TasksModel('My profile', false, 'FlutterFest'),
    TasksModel('Preparing presentation', false, 'DevFest'),


  ];
   int progress=0;
  List<TasksModel> selectedTasks = [];
  List<String> Events = ['GIP project', 'DevFest', 'FlutterFest', 'Meeting'];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(20),
              ),
              Padding(
                padding: EdgeInsets.only(left: getWidth(65)),
                child: Row(
                  children: [
                    Text(
                      'My Tasks',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getHeight(36),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: getWidth(100),),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen())),

                      child: Icon(Icons.person_rounded,
                    size: getHeight(50),
                    ),
                    
                    
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(7),
              ),
              Padding(
                padding: EdgeInsets.only(left: getWidth(38)),
                child: Row(
                  children: [
                    Container(
                      width: getWidth(203),
                      height: getHeight(14),
                      child: LinearPercentIndicator(
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: progress/Tasks.length,
                        progressColor: kGreen,
                        barRadius: Radius.circular(getHeight(20)),
                      ),
                    ),
                    SizedBox(
                      width: getWidth(3),
                    ),
                    Text(
                      (progress*100/Tasks.length).toString()+' %',
                      style: TextStyle(
                        color: const Color(0xFF223F61),
                        fontSize: getHeight(14),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(65),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(18)),
                  child: Expanded(
                    child: ListView.builder(
                        itemCount: Events.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index2) {
                          return ExpansionTile(
                            title: Center(
                                child: Text(
                              Events[index2],
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: getHeight(21),
                              ),
                            )),
                            trailing: const SizedBox(),
                            leading: Events[index2] == 'Meeting'
                                ? SvgPicture.asset(
                                    'assets/icons/Meeting icon.svg')
                                : SvgPicture.asset(
                                    'assets/icons/Task icon.svg'),
                            children: <Widget>[
                              Container(
                                constraints: const BoxConstraints(
                                  maxHeight: double.infinity,
                                ),
                                width: getWidth(325),
                                decoration: BoxDecoration(
                                  color: Events[index2] == 'Meeting'
                                      ? KlightBlue
                                      : Kyellow,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft:
                                          Radius.circular(getHeight(10)),
                                      bottomRight:
                                          Radius.circular(getHeight(10))),
                                ),
                                child: Expanded(
                                  child: Events[index2] == 'Meeting'
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: getHeight(11),
                                            ),
                                            Text(
                                              'First Meeting UI',
                                              style: TextStyle(
                                                  fontSize: getHeight(21),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(
                                              height: getHeight(11),
                                            ),
                                            SvgPicture.asset(
                                                'assets/icons/Line 1.svg'),
                                            SizedBox(
                                              height: getHeight(11),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icons/17 Clock Icon.svg'),
                                                SizedBox(
                                                  width: getWidth(15),
                                                ),
                                                Text(
                                                  'Today: 12PM',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: getHeight(21),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: getHeight(8),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icons/30 Location Icon.svg'),
                                                SizedBox(
                                                  width: getWidth(15),
                                                ),
                                                Text(
                                                  'Google Meet',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: getHeight(21),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: getHeight(11),
                                            )
                                          ],
                                        )
                                      : ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: Tasks.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            // return item
                                            return Events[index2]==Tasks[index].event
                                            ?Column(
                                              children: [
                                                contactItem(
                                                  Tasks[index].name,
                                                  Tasks[index].isSelected,
                                                  index,
                                                  Tasks[index].event
                                                ),
                                                SvgPicture.asset(
                                                    'assets/icons/Line 1.svg'),
                                              ],
                                            )
                                            :SizedBox();
                                          }),
                                ),
                              )
                            ],
                          );
                        }),
                  )),




            ],
          ),
        ),
      ),
    );
  }

  Widget contactItem(String name, bool isSelected, int index,String event) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          decoration: isSelected ? TextDecoration.lineThrough : null,
          color: isSelected ? kGreen : Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: isSelected
          ? SvgPicture.asset('assets/icons/Checked circle.svg')
          : SvgPicture.asset('assets/icons/Check.svg'),
      onTap: () {
        setState(() {
          Tasks[index].isSelected = !Tasks[index].isSelected;
          if (Tasks[index].isSelected == true) {
            selectedTasks.add(TasksModel(name, true,event));
            progress++;
          } else if (Tasks[index].isSelected == false) {
            progress--;
            selectedTasks
                .removeWhere((element) => element.name == Tasks[index].name);

          }
        });
      },

    );
  }
}
