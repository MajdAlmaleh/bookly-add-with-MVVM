import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
      
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomBookImage(
              imageUrl: 
              'https://www.google.com/imgres?imgurl=https%3A%2F%2Ftypographica.org%2Fwp-content%2Fuploads%2F2015%2F03%2FSectra-sample-6-315x315.png&tbnid=1fKiNkXBQoBxhM&vet=12ahUKEwj4r6Hi49GCAxWSGxAIHaGgBJkQMygWegQIARB7..i&imgrefurl=https%3A%2F%2Ftypographica.org%2Ftypeface-reviews%2Fgt-sectra%2F&docid=ZjQF7Tqc2-GDpM&w=315&h=315&q=gt%20sectra%20fine%20regular%20font%20free%20download&client=opera&ved=2ahUKEwj4r6Hi49GCAxWSGxAIHaGgBJkQMygWegQIARB7'
            ),
          );
        },
      ),
    );
  }
}
