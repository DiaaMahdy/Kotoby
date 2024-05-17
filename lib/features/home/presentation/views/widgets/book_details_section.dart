import 'package:flutter/material.dart';
import 'package:kotoby/core/utils/styles.dart';
import 'package:kotoby/features/home/presentation/views/widgets/book_action.dart';

import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl: 'https://images.app.goo.gl/AWEgJV4GRvpuVE4y9',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Light Beyond',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Authors Name',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction()
      ],
    );
  }
}
