import 'package:booklyapp/Features/splash_view/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
          scrollDirection : Axis.horizontal,
        itemBuilder: (context,inex) {
        return const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0),
          child:  CustomListViewItem(),
        );
      }),
    );
  }
}
