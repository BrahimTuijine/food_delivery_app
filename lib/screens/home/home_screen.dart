import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_delivery_app/core/animations/animations.dart';
import 'package:food_delivery_app/core/extensions/sized_box_short.dart';
import 'package:food_delivery_app/core/utils/ui_helper.dart';
import 'package:food_delivery_app/core/widgets/app_bar/custom_app_bar.dart';
import 'package:food_delivery_app/data.dart';
import 'package:food_delivery_app/screens/home/widgets/clipped_container.dart';
import 'package:food_delivery_app/screens/home/widgets/vendor_card.dart';

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
              space4x.sh,
              ClippedContainer(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                height: rh(120),
              ),
              rh(space5x).sh,
              Expanded(
                child: FadeAnimation(
                  intervalStart: .4,
                  duration: const Duration(milliseconds: 1250),
                  child: SlideAnimation(
                    begin: const Offset(0, 100),
                    duration: const Duration(milliseconds: 1250),
                    intervalStart: .4,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      separatorBuilder: (context, index) => Divider(
                        height: space4x,
                        indent: rw(20),
                        endIndent: rw(20),
                      ),
                      itemCount: vendorList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return VendorCard(
                          imagePath: vendorList[index]['imagePath'],
                          name: vendorList[index]['name'],
                          rating: vendorList[index]['rating'].toString(),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
