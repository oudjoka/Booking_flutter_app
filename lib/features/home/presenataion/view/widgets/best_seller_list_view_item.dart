import 'package:booking/constant.dart';
import 'package:booking/core/utils/assets.dart';
import 'package:booking/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Harry Potter and Goblet of Fire ',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'JK Hmida',
                style: Styles.textStyle14.copyWith(fontFamily: kGtSoectraFine),
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  BookRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xFFFFDD4F)),
        SizedBox(width: 6.3),
        Text('4.8', style: Styles.textStyle16),
        SizedBox(width: 5),
        Text(
          '(2434)',
          style: Styles.textStyle14.copyWith(color: Color(0xFF707070)),
        ),
      ],
    );
  }
}
