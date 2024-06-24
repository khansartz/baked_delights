import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'app_chip.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDefaults.padding,
      ),
      child: Row(
        children: [
          AppChip(
            isActive: true,
            label: 'Cake',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Cookies',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Beverage',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Merchandise',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
