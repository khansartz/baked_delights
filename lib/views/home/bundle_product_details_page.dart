import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/buy_now_row_button.dart';
import '../../core/components/price_and_quantity.dart';
import '../../core/components/product_images_slider.dart';
import '../../core/components/review_row_button.dart';
import '../../core/constants/constants.dart';
import 'components/bundle_meta_data.dart';
import 'components/bundle_pack_details.dart';

class BundleProductDetailsPage extends StatelessWidget {
  const BundleProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Bundle Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImagesSlider(
              images: [
                'https://basicamente.com/cdn/shop/files/100009453900001-L1_53589611-2691-4ecf-98e8-5dc3a3ffcccb.jpg?v=1702576976',
                'https://assets.hermes.com/is/image/hermesproduct/h-embroidered-t-shirt--072025HA01-worn-1-0-0-800-800_g.jpg',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNRB8ch8zi2cpq1onSSSHkvpoDPa_sFzqkqZ8uVpMT7XVf25npKpX9vXx-JR2aqfJazqY&usqp=CAU',
              ],
            ),
            /* <---- Product Data -----> */
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'T(hree)-Shirt',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  const PriceAndQuantityRow(
                    currentPrice: 200000,
                    orginalPrice: 300000,
                    quantity: 2,
                  ),
                  const SizedBox(height: AppDefaults.padding / 2),
                  const BundleMetaData(),
                  const PackDetails(),
                  const ReviewRowButton(totalStars: 5),
                  const Divider(thickness: 0.1),
                  BuyNowRow(
                    onBuyButtonTap: () {},
                    onCartButtonTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
