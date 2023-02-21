import 'package:flutter/material.dart';
import 'package:circle_list/circle_list.dart';

class ShowDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Images> snapshot = [
      Images(
        'https://png.pngitem.com/pimgs/s/193-1933925_transparent-cody-christian-png-theo-teen-wolf-teenage.png',
      ),
      Images(
          'https://images.unsplash.com/flagged/photo-1553642618-de0381320ff3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmVzc2lvbmFsJTIwbWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
      Images(
          'https://i.pinimg.com/736x/56/29/2b/56292beb9bd3a61db68587099fc4f8ec.jpg'),
      Images(
          'https://i.pinimg.com/736x/98/41/e1/9841e124da56701e164536f7c2bc3ac3.jpg'),
      Images(
          'https://media.istockphoto.com/id/1342247162/photo/handsome-middle-eastern-guy-businessman-posing-next-to-office-center.jpg?b=1&s=170667a&w=0&k=20&c=aFFf4WomNrkbLljIvafbk2ukDK4chb34HGjbqb2sQGs='),
    ];
    return Center(
        child: CircleList(
      origin: Offset(-10, 0),
      children: _build(snapshot),
    ));
  }

  List<Widget> _build(List<Images> image) {
    // Widget _build(imag) {
    List<Widget> imageSliders = image
        .map((item) => CircleAvatar(
            backgroundColor: Colors.pink.shade300,
            radius: 30,
            backgroundImage: NetworkImage(
              item.image,
              // height: 30,
            )))
        .toList();
    return imageSliders;
  }
}

class Images {
  String image;

  Images(
    this.image,
  );
}
