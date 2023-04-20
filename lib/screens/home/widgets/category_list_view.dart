// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:food_delivery_app/core/utils/ui_helper.dart';

class CategoryItem extends StatelessWidget {
  final Widget icon;
  final String name;
  final Color backgroundColor;
  const CategoryItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: space2x),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: rf(30),
            backgroundColor: backgroundColor,
            child: icon,
          ),
          SizedBox(
            height: rf(space1x),
          ),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: rf(12)),
          ),
        ],
      ),
    );
  }
}
