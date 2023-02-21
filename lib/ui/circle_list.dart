import 'package:flutter/material.dart';
import 'package:circle_list/circle_list.dart';

class ShowDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircleList(
      origin: Offset(0, 0),
      children: List.generate(5, (index) {
        return CircleAvatar(
            backgroundColor: Colors.pink.shade300,
            radius: 30,
            backgroundImage: NetworkImage(
              'https://png.pngitem.com/pimgs/s/193-1933925_transparent-cody-christian-png-theo-teen-wolf-teenage.png',
              // height: 30,
            ));
        // Icon(
        //   Icons.details,
        //   color: index % 2 == 0 ? Colors.blue : Colors.orange,
        // );
      }),
    ));
  }
}
