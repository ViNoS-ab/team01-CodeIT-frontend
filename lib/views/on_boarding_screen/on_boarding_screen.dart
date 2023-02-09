import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team01_codit_frontend/size_config.dart';
import 'package:team01_codit_frontend/utils/constants.dart';
import 'package:team01_codit_frontend/views/navigation/main_screen/main_screen.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final _controller = PageController();
  @override

  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(

          body: Container(
            child: PageView(
              controller: _controller,
              children: [
                Container(
                  color:Color(0xFF0A27E0) ,
                  child: Stack(children: [
                    Positioned(child: Container(
                      height: getHeight(480),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(getHeight(45)))
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/illustrations/GDG.svg'),

                      ),

                    ),
                      left: 0,
                      right: 0,
                    ),
                    Positioned(child: InkWell(
                      onTap: ()
                      {

                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);




                      },
                      child: Container(
                        height: getHeight(50),
                        width: getWidth(150),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(getHeight(20))
                        ),
                        child: Center(
                          child: Text('Next !',
                            style: TextStyle(fontSize: getHeight(21),
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            ),),
                        ),
                      ),

                    ),
                      bottom: getHeight(40),
                      left: getWidth(20),
                    ),
                    Positioned(child: Text('GDG platform,\nWhy not!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: getHeight(30)
                      ),


                    ),
                      left: getWidth(20),
                      bottom: getHeight(170),
                    ),
                    Positioned(child: const Text('We are here to improve your experience as member \nEverything you need is here !',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                      left: getWidth(20),
                      bottom: getHeight(115),
                    )


                  ]),
                ),
                Container(
                  color :kGreen,
                  child: Stack(children: [
                    Positioned(child: Container(
                      height: getHeight(480),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(getHeight(45)))
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/illustrations/GDG.svg'),

                      ),

                    ),
                      left: 0,
                      right: 0,
                    ),
                    Positioned(child: InkWell(
                      onTap: () => _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                      child: Container(
                        height: getHeight(50),
                        width: getWidth(150),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(getHeight(20))
                        ),
                        child: Center(
                          child: Text('Next !',
                            style: TextStyle(fontSize: getHeight(21),
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            ),),
                        ),
                      ),

                    ),
                      bottom: getHeight(40),
                      left: getWidth(20),
                    ),
                    Positioned(child: Text('Ready to learn more ?',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: getHeight(30)
                      ),


                    ),
                      left: getWidth(20),
                      bottom: getHeight(190),
                    ),
                    Positioned(child: const Text('Guess what ,\nyou will never forget your tasks,meetings anymore',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                      left: getWidth(20),
                      bottom: getHeight(130),
                    )

                  ]),
                ),
                Container(
                  color :Colors.red,
                  child: Stack(children: [
                    Positioned(child: Container(
                      height: getHeight(480),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(getHeight(45)))
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/illustrations/GDG.svg'),

                      ),

                    ),
                      left: 0,
                      right: 0,
                    ),
                    Positioned(child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen())),
                      child: Container(
                        height: getHeight(50),
                        width: getWidth(150),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(getHeight(20))
                        ),
                        child: Center(
                          child: Text('Start',
                            style: TextStyle(fontSize: getHeight(21),
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            ),),
                        ),
                      ),

                    ),
                      bottom: getHeight(40),
                      left: getWidth(20),
                    ),
                    Positioned(child: Text('Let\'s study together',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: getHeight(30)
                      ),


                    ),
                      left: getWidth(20),
                      bottom: getHeight(190),
                    ),
                    Positioned(child: const Text('you are going to rock it this year',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                      left: getWidth(20),
                      bottom: getHeight(160),
                    )

                  ]),
                ),

              ],
            ),
          ),
        ));
  }
}