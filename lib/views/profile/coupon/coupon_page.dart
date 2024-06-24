import 'package:flutter/material.dart';

import '../../../core/components/app_back_button.dart';
import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import 'components/coupon_card.dart';

class CouponAndOffersPage extends StatelessWidget {
  const CouponAndOffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Your Voucher',
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Text(
                'You Have 5 Coupons to use',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
          ),
          const Expanded(child: CouponLists()),
        ],
      ),
    );
  }
}

class CouponLists extends StatelessWidget {
  const CouponLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CouponCard(
          title: 'Coffee\nTreats',
          discounts: '41%',
          expire: 'Exp-10/06/2024',
          color: const Color(0xFF402FBE),
          onTap: () => Navigator.pushNamed(context, AppRoutes.couponDetails),
        ),
        CouponCard(
          title: 'Tea\nTime',
          discounts: '23%',
          couponBackground: AppImages.couponBackgrounds[1],
          expire: 'Exp-28/12/2024',
          color: const Color(0xFF398FE9),
          onTap: () => Navigator.pushNamed(context, AppRoutes.couponDetails),
        ),
        CouponCard(
          title: 'Oreo\nBiscuit',
          discounts: '50%',
          couponBackground: AppImages.couponBackgrounds[2],
          expire: 'Exp-20/12/2025',
          color: const Color(0xFFE6EA5F),
          onTap: () => Navigator.pushNamed(context, AppRoutes.couponDetails),
        ),
        CouponCard(
          title: 'T-Shirt',
          discounts: '18%',
          couponBackground: AppImages.couponBackgrounds[3],
          expire: 'Exp-10/12/2025',
          color: const Color(0xFFA480FF),
          onTap: () => Navigator.pushNamed(context, AppRoutes.couponDetails),
        ),
      ],
    );
  }
}
