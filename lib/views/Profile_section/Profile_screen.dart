import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team01_codit_frontend/size_config.dart';
import 'package:team01_codit_frontend/utils/constants.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: getHeight(310),
          width: getWidth(360),
          decoration: BoxDecoration(
              color: const Color(0xFF0A27E0),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(
                    getHeight(30),
                  ),
                  bottomLeft: Radius.circular(getHeight(30)))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: getHeight(36),
              ),
              Text(
                'My Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getHeight(25),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: getHeight(15),
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage('assets/illustrations/ppf.png'),
              ),
              Text(
                'Jake paul',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: getHeight(21),
                ),
              ),
              const Spacer(),
              Container(
                height: 80,
                width: 80,
                child: Center(
                    child: SvgPicture.asset(
                  'assets/illustrations/GDG.svg',
                  fit: BoxFit.fitWidth,
                )),
              ),
            ],
          ),
        ),
        SizedBox(height: getHeight(15),),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: getHeight(17)),
          child: Row(
            children: [
              Container(
                height: getHeight(200),
                width: getWidth(155),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(getHeight(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Total unfinished Tasks :',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                    ),
                    ),
                    Text('7',
                      style: TextStyle(
                        fontSize: getHeight(21),
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: getWidth(15),),
              Container(
                height: getHeight(200),
                width: getWidth(155),
                decoration: BoxDecoration(
                  color: kGreen,
                  borderRadius: BorderRadius.circular(getHeight(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Total finished Tasks :',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    Text('3',
                      style: TextStyle(
                          fontSize: getHeight(21),
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: getHeight(15),),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: getHeight(17)),
          child: Row(
            children: [
              Container(
                height: getHeight(200),
                width: getWidth(155),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(getHeight(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Total meetings :',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    Text('1',
                      style: TextStyle(
                          fontSize: getHeight(21),
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: getWidth(15),),
              Container(
                height: getHeight(200),
                width: getWidth(155),
                decoration: BoxDecoration(
                  color: Kyellow,
                  borderRadius: BorderRadius.circular(getHeight(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Total Stars :',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    Text('2',
                      style: TextStyle(
                          fontSize: getHeight(21),
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),

              ),
            ],
          ),
        )

      ],
    ));
  }
}
