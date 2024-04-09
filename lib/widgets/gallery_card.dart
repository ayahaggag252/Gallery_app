import 'package:flutter/material.dart';

class GalleryCard extends StatefulWidget {
  final String imgUrl ;
  final double width;

  const GalleryCard(
      {super.key, required this.imgUrl, this.width = 180,});

  @override
  State<GalleryCard> createState() => _GalleryCardState();
}

class _GalleryCardState extends State<GalleryCard> {


  @override
  Widget build(BuildContext context) {

    return  Container(

              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(widget.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),

    );

  }
}
