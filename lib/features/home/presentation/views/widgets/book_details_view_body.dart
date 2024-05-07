import 'package:flutter/material.dart';
import 'package:kotoby/features/home/presentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:kotoby/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:kotoby/features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                children: [
                  SafeArea(
                    child: BookDetailsCustomAppBar(),
                  ),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
