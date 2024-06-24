import 'package:flutter/material.dart';

import 'review_tile.dart';

class ReviewLists extends StatelessWidget {
  const ReviewLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ReviewTile(
            userName: 'User2',
            starsGiven: 5,
            time: '12 Days Ago',
            isFavourite: index.isEven,
            totalLikes: 24,
            review:
                'Pesanan sampai dengan cepat dan sempurna. Recommended!',
            userPicture: 'https://i.pinimg.com/736x/82/68/c7/8268c7aadf0a9077396836037307adeb.jpg',
          );
        },
        itemCount: 7,
        separatorBuilder: (context, index) => const Divider(
          thickness: 0.1,
          height: 0,
        ),
      ),
    );
  }
}
