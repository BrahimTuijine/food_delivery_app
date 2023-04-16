import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_delivery_app/core/animations/animations.dart';
import 'package:food_delivery_app/core/extensions/sized_box_short.dart';
import 'package:food_delivery_app/core/utils/ui_helper.dart';
import 'package:food_delivery_app/core/widgets/app_bar/custom_app_bar.dart';
import 'package:food_delivery_app/screens/home/widgets/clipped_container.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideAnimation(
        duration: const Duration(microseconds: 750),
        begin: const Offset(0, 400),
        child: AnimatedContainer(
          duration: const Duration(microseconds: 750),
          padding: EdgeInsets.only(bottom: rh(20)),
          curve: Curves.fastOutSlowIn,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(
                  hasBackButton: false,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: space2x),
                  child: RichText(
                    text: TextSpan(
                        text: 'Hi, ',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: rf(24),
                              fontWeight: FontWeight.normal,
                            ),
                        children: [
                          TextSpan(
                              text: 'Jack',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontSize: rf(24)))
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: space2x),
                  child: Text(
                    'Diliver to 779 Cassie',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: rf(12), height: 1.5),
                  ),
                ),
                rh(20).sh,
                ClippedContainer(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  height: rh(120),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
