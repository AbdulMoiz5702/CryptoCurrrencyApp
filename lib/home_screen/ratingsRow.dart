import 'package:exchange/home_screen/ratingsContainer.dart';
import 'package:flutter/material.dart';



class RatingsRow extends StatelessWidget {
  const RatingsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            RatingContainer(text: 'Favorite'),
            RatingContainer(text: 'Gainers'),
            RatingContainer(text: 'Losers'),
            RatingContainer(text: 'Top'),
            RatingContainer(text: 'Hot'),
            RatingContainer(text: 'New Coins'),
          ],
        ),
      ),
    );
  }
}
