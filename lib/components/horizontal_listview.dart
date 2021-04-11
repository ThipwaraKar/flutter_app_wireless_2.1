
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //11 12.00
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/004-television.png',
            image_caption: 'Desktop',
          ),
          Category(
            image_location: 'images/cats/028-video chat.png',
            image_caption: 'Notebook',
          ),
          Category(
            image_location: 'images/cats/007-microphone.png',
            image_caption: 'Mic',
          ),
          Category(
            image_location: 'images/cats/008-camera.png',
            image_caption: 'Camera',
          ),
          Category(
            image_location: 'images/cats/046-headset.png',
            image_caption: 'headset',
          ),

        ],
      ),
    );
  }
}


class Category extends StatelessWidget{
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption

});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(3.0),
      child: InkWell(onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
            width: 100.0,
            height: 80.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption,), //Style: new TextStyle(front) 12
            )
          ),
        ),
      ),
    );
  }
}






