import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Ftypographica.org%2Fwp-content%2Fuploads%2F2015%2F03%2FSectra-sample-6-315x315.png&tbnid=1fKiNkXBQoBxhM&vet=12ahUKEwj4r6Hi49GCAxWSGxAIHaGgBJkQMygWegQIARB7..i&imgrefurl=https%3A%2F%2Ftypographica.org%2Ftypeface-reviews%2Fgt-sectra%2F&docid=ZjQF7Tqc2-GDpM&w=315&h=315&q=gt%20sectra%20fine%20regular%20font%20free%20download&client=opera&ved=2ahUKEwj4r6Hi49GCAxWSGxAIHaGgBJkQMygWegQIARB7',
          ),
        ),
        const SizedBox(
          height: 37,
        ),
        Text('The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal)),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 45,
          ratingCount: 120,
        ),
      ],
    );
  }
}
