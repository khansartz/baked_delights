import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';

class AdSpace extends StatelessWidget {
  const AdSpace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const AspectRatio(
          aspectRatio: 16 / 9,
          child: NetworkImageWithLoader(
            'https://static.vecteezy.com/system/resources/thumbnails/015/642/724/small_2x/digital-online-fast-food-burger-delivery-on-scooter-with-phone-cash-on-delivery-mobile-website-background-illustration-suitable-for-user-interface-ui-ux-web-mobile-banner-and-infographic-vector.jpg',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
