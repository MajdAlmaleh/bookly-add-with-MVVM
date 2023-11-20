import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/home/data/models/book_model/image_links.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksLoading) {
        return const CustomLoading();
      } else if (state is FeaturedBooksFailure) {
        return CustomError(errMessage: state.errMessage);
      } else if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // print(state.books[index].volumeInfo.imageLinks!.thumbnail);

              //  ImageLinks? s=state.books[index].volumeInfo.imageLinks;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks!.thumbnail
                    // s==null?'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.computerhope.com%2Fjargon%2Fe%2Ferror.png&tbnid=jaSzOJAVAROumM&vet=12ahUKEwj92O3ulNKCAxXbdXAKHSE2AOAQMygDegQIARB6..i&imgrefurl=https%3A%2F%2Fwww.computerhope.com%2Fjargon%2Fe%2Ferror.htm&docid=Z0ChwtQ5SLVbDM&w=350&h=329&q=error&client=opera&ved=2ahUKEwj92O3ulNKCAxXbdXAKHSE2AOAQMygDegQIARB6':s.thumbnail
                    ),
              );
            },
          ),
        );
      } else {
        return const CustomLoading();
      }
    });
  }
}
