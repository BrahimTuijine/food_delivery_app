import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_delivery_app/core/animations/page_transition.dart';
import 'package:food_delivery_app/core/utils/navigation.dart';
import 'package:food_delivery_app/screens/home/home_screen.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          Future.delayed(const Duration(milliseconds: 450), () {
            Navigation.push(
              context,
              customPageTransition: PageTransition(
                child: const HomePage(),
                type: PageTransitionType.fadeIn,
              ),
            );
          });
        },
      );
      return () {};
    }, const []);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(),
    );
  }
}
