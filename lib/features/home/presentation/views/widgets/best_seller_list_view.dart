import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
        return ListView.builder(
          itemCount: state.books.length,
          
          itemBuilder: (context, index) {
            return  Padding(
              padding:const EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(

                book: state.books[index],
              ),
              // child: Text('data'),
            );
          },
          padding: EdgeInsets.zero,

          physics: const NeverScrollableScrollPhysics(),
        );}
        else if(state is NewestBooksFailure){
          return  CustomError(errMessage: state.errMessage);
        }
        else{
          return const CustomLoading();
        }
      },
    );
  }
}
