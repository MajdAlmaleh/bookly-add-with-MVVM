import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'simliar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(physics:const BouncingScrollPhysics(), slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
           const   CustomBookDetailsAppBar(),
           const   SizedBox(
                height: 37,
              ),
                BooksDetailsSection(bookModel: bookModel,),
           const   Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
           const   BooksAction(),
           const   SizedBox(
                height: 50,
              ),
            const  SimliarBooksSection(),
            const  SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
