// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_delivery_app/core/extensions/sized_box_short.dart';
import 'package:food_delivery_app/core/utils/ui_helper.dart';
import 'package:food_delivery_app/core/widgets/custom_widgets.dart';

class VendorCard extends HookWidget {
  final String imagePath;
  final String name;
  final String rating;

  const VendorCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          rh(20).sw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: rf(16)),
              ),
              rh(5).sh,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CIcons.fromMaterial(
                    icon: Icons.star,
                    semanticLabel: 'rating',
                    size: rf(18),
                    color: const Color(0xffffb740),
                  ),
                  rh(5).sh,
                  Text(
                    rating,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: rf(14),
                        ),
                  ),
                  Text(
                    ' * Fast Food * \$2.5',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.grey.shade400, fontSize: rf(12)),
                  ),
                ],
              ),
              rh(10).sh,
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(space1x),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xfff7f2f7)),
                      child: Row(
                        children: [
                          CIcons.fromMaterial(
                              icon: Icons.timer,
                              semanticLabel: 'Time',
                              size: rf(12),
                              color: const Color(0xff977f98)),
                          Text(
                            ' 15-20 min',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff977f98),
                                    fontSize: rf(12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  space1x.sw,
                  Text(
                    '2.4 km ',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400,
                        fontSize: rf(12)),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          const FavIcon(),
        ],
      ),
    );
  }
}

class FavIcon extends HookWidget {
  const FavIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CIcons.fromMaterial(
      icon: Icons.favorite_border,
      semanticLabel: 'Favorite',
      color: Theme.of(context).primaryColorDark,
    );
  }
}
