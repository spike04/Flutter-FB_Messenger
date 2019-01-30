import 'package:flutter/material.dart';

class AppBarRoundNetworkImage extends StatelessWidget {
  final String imageUrl;

  AppBarRoundNetworkImage({@required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
