import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'simliar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      
      physics: BouncingScrollPhysics(),
      slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              SizedBox(
                height: 37,
              ),
              BooksDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              BooksAction(),
              SizedBox(
                height: 50,
              ),
              SimliarBooksSection(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
