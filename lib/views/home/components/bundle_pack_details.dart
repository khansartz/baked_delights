import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';

class PackDetails extends StatelessWidget {
  const PackDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.25),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Pack Details',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          /* <---- Items here -----> */
          ...List.generate(
            3,
            (index) => ListTile(
              leading: const AspectRatio(
                aspectRatio: 1 / 1,
                child:
                    NetworkImageWithLoader('https://mackweldon.com/cdn/shop/products/M01T12-TN_Front.png?v=1638913612'),
              ),
              title: const Text('T-Shirt'),
              trailing: Text(
                '1 Pcs',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: AppDefaults.padding),
        ],
      ),
    );
  }
}
