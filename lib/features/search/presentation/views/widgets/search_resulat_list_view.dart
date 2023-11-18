import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResulatListView extends StatelessWidget {
  const SearchResulatListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(),
            );
          },
          padding: EdgeInsets.zero,
          itemCount: 10,
        ),
    );
  }
}
