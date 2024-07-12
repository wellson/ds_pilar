import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({
    super.key,
    required this.searchController,
    required this.onChanged,
    required this.hintText,
    required this.onTapSuffixIcon,
  });

  final TextEditingController? searchController;
  final Function(String)? onChanged;
  final Function()? onTapSuffixIcon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: onTapSuffixIcon,
          child: Icon(Icons.close),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black26, width: 1),
        ),
        hintText: hintText,
      ),
    );
  }
}
