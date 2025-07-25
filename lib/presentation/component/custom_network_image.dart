import 'package:flutter/material.dart';

import '../../utils/logger.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.fitHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: fit,
      errorBuilder: (context, error, stackTrack) {
        logger.e("error: $error");
        logger.e("stackTrack: $stackTrack");

        return Icon(Icons.error);
      },
    );
  }
}
