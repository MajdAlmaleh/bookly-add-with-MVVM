import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child:  BestSellerListViewItem(),
        );
      },
      padding: EdgeInsets.zero,
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}