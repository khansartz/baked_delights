import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/constants/app_defaults.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Us',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: AppDefaults.padding),
            const Text(
                'Welcome to Baked Delights, your one-stop shop for delectable treats and unique merchandise that will tantalize your taste buds and ignite your passions. We are a passionate team of food and merchandise enthusiasts, dedicated to bringing you an unparalleled shopping experience that caters to both your culinary cravings and your love for collecting. \n At Baked Delights, we are driven by a simple yet powerful mission: to transform everyday moments into extraordinary experiences through the joy of food and the thrill of collecting. We believe that food and merchandise have the power to connect people, evoke memories, and spark creativity. That\'s why we curate a diverse selection of products that are not only delicious and visually appealing but also embody stories, passions, and a touch of whimsy.')
          ],
        ),
      ),
    );
  }
}
