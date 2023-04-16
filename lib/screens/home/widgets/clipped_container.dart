import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_delivery_app/core/animations/slide_animation.dart';
import 'package:food_delivery_app/core/utils/ui_helper.dart';
import 'package:food_delivery_app/data.dart';
import 'package:food_delivery_app/screens/home/widgets/category_list_view.dart';

class ClippedContainer extends HookWidget {
  final double? height;
  final bool isAnimated;
  final Color? backgroundColor;
  final Alignment alignment;

  const ClippedContainer(
      {super.key,
      this.height,
      this.isAnimated = true,
      this.backgroundColor,
      this.alignment = Alignment.center});

  @override
  Widget build(BuildContext context) {
    final container = Container(
      height: height,
      margin: const EdgeInsets.only(left: space2x),
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(rf(40)),
          bottomLeft: Radius.circular(
            rf(40),
          ),
        ),
        color: backgroundColor ?? Theme.of(context).primaryColor,
      ),
      child: HookBuilder(builder: (context) {
        final selectedIndex = useState<int>(0);
        return SizedBox(
          height: rh(120),
          child: ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: space2x),
            scrollDirection: Axis.horizontal,
            itemCount: categoryIconList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  selectedIndex.value = index;
                },
                child: CategoryItem(
                  backgroundColor: selectedIndex.value == index
                      ? Colors.white
                      : const Color(0xfff2e3db),
                  icon: Image.asset(
                    categoryIconList[index],
                    width: rw(35),
                    height: rh(25),
                  ),
                  name: name[index],
                ),
              );
            },
          ),
        );
      }),
    );
    return isAnimated
        ? SlideAnimation(
            begin: const Offset(450, 0),
            duration: const Duration(milliseconds: 850),
            intervalStart: .4,
            child: container,
          )
        : container;
  }
}
