import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: Colors.redAccent,
        pages: pages,
        skipClicked: (value) {
          _globalKey.currentState!.showSnackBar(SnackBar(
            content: Text('Skip clicked'),
          ));
        },
        getStartedClicked: (value) {
          _globalKey.currentState!
              .showSnackBar(SnackBar(
                content: Text('Get Started clicked'),
                ));
        },
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
      title: 'Daftar Melalui Online',
      description: 'daftarkan diri anda hanya dengan mengisi form secara online',
      titleColor: Colors.black,
      descripColor: Colors.blueGrey,
      imagePath: 'assets/images/1.png'
    ),
    SkOnboardingModel(
      title: 'Daftar Dari Rumah',
      description: 'anda hanya perlu dirumah',
      titleColor: Colors.black,
      descripColor: Colors.blueGrey,
      imagePath: 'assets/images/2.png'
    ),
    SkOnboardingModel(
      title: 'Simple',
      description: 'Semua berbasis online',
      titleColor: Colors.black,
      descripColor: Colors.blueGrey,
      imagePath: 'assets/images/3.png'
    )
  ];
}
