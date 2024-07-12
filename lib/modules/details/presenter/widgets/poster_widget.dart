
import 'package:flutter/material.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({
    super.key,
    required this.posterPath,
  });
  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            posterPath,
          ),
        ),
      ),
    );
  }
}