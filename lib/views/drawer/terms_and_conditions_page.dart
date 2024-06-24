import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import 'components/faq_item.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Terms And Condition'),
      ),
      body: const Column(
        children: [
          TitleAndParagraph(
              isTitleHeadline: false,
              title: 'General site usage last revised\nDecember 20-01-2024.',
              paragraph:
                  '''Welcome to Baked Delights. Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis voluptate cupidatat quis irure irure consequat irure.'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '1. Agreement',
              paragraph:
                  'These Terms and Conditions (the "Terms") govern your use of the Baked Delights website (the "Website") and all services offered by Baked Delights (collectively, the "Services"). \n By using the Website or Services, you agree to be bound by these Terms. If you do not agree to these Terms, you may not use the Website or Services. Baked Delights reserves the right to change these Terms at any time. We will notify you of any changes by posting the updated Terms on the Website. Your continued use of the Website or Services after any such changes constitutes your acceptance of the updated Terms.'),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '2. Account',
              paragraph:
                  '''Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis voluptate cupidatat quis irure irure consequat irure.'''),

        ],
      ),
    );
  }
}
