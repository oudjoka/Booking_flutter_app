import 'package:booking/constant.dart';
import 'package:booking/core/utils/app_router.dart';
import 'package:booking/core/utils/assets.dart';
import 'package:booking/core/utils/styles.dart';
import 'package:booking/features/home/presenataion/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
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
                  style: Styles.textStyle14.copyWith(
                    fontFamily: kGtSoectraFine,
                  ),
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
      ),
    );
  }
}
