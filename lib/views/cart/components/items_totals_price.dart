import 'package:flutter/material.dart';

import '../../../core/components/dotted_divider.dart';
import '../../../core/constants/constants.dart';
import 'item_row.dart';

class ItemTotalsAndPrice extends StatelessWidget {
  const ItemTotalsAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          ItemRow(
            title: 'Total Item',
            value: '3',
          ),
          ItemRow(
            title: 'Weight',
            value: '5 Kg',
          ),
          ItemRow(
            title: 'Price',
            value: '\Rp 80000',
          ),
          ItemRow(
            title: 'Tax',
            value: '\Rp  10000',
          ),
          DottedDivider(),
          ItemRow(
            title: 'Total Price',
            value: '\Rp  90000',
          ),
        ],
      ),
    );
  }
}
