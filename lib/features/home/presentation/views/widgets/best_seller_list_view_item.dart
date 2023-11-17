import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.test),
                    )),
              ),
            ),
          const  SizedBox(
              width: 30,
            ),

Column(
  children: [
    SizedBox(
      width: MediaQuery.of(context).size.width *.5,
      child:const Text(
        'hargrdldbdld dlfd kdkf kdoro ',
        style: Styles.textStyle20,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    )
  ],
)


          ],
        ),
      ),
    );
  }
}
