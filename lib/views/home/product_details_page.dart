import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/buy_now_row_button.dart';
import '../../core/components/price_and_quantity.dart';
import '../../core/components/product_images_slider.dart';
import '../../core/components/review_row_button.dart';
import '../../core/constants/app_defaults.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Product Details'),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          child: BuyNowRow(
            onBuyButtonTap: () {},
            onCartButtonTap: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImagesSlider(
              images: [
                'https://assets-pergikuliner.com/uploads/bootsy/image/18493/Cookies__hips.hearstapps.com_.jpg',
                'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2021/12/23/fotojet-7-1jpg-20211223060834.jpg',
                'https://recipes.net/wp-content/uploads/2023/09/7-steps-to-baking-cookies-1695045452.jpg',
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choco Cookies',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    const Text(''),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDefaults.padding),
              child: PriceAndQuantityRow(
                currentPrice: 130,
                orginalPrice: 150,
                quantity: 2,
              ),
            ),
            const SizedBox(height: 8),

            //Product Details
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Details',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Baked to perfection with a soft, chewy texture and a rich, decadent chocolate flavor that will tantalize your taste buds.',
                  ),
                ],
              ),
            ),

            //Review Row
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppDefaults.padding,
                // vertical: AppDefaults.padding,
              ),
              child: Column(
                children: [
                  Divider(thickness: 0.1),
                  ReviewRowButton(totalStars: 5),
                  Divider(thickness: 0.1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
