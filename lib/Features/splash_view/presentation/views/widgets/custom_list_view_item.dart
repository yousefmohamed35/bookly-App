import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        
        child: Container(
        
          decoration:const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/image/sports.png'),
            ),
          ),
        ),
      ),
    );
  }
}