import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.7,
      child: Stack(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            child: CachedNetworkImage(
              imageUrl: image,
              alignment: Alignment.center,
              height: size.width * 0.62,
              width: size.width * 0.62,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
