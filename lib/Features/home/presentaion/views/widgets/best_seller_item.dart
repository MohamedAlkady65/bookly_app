import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/images/test_item.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.text20RegularGTSectraFine,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "J.K. Rowling",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.text14Medium.copyWith(color: kBorderColor),
              ),
              const SizedBox(
                height: 3,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "19.99 €",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.text20Bold,
                  ),
                  BookRating()
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
