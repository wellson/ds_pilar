
import 'package:flutter/material.dart';

class SinopseWidget extends StatelessWidget {
  const SinopseWidget({
    super.key,
    required this.overview,
  });
  final String overview;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sinópse',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(overview),
      ],
    );
  }
}
