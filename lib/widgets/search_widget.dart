import 'package:flutter/material.dart';
import 'package:health_fitness/constants/hl_constants.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: paddingDft * 1.5,
        left: paddingDft * 1.5,
        right: paddingDft * 1.5,
      ),
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(paddingDft * 2),
              borderSide: BorderSide.none),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: paddingDft),
          prefixIcon: Container(
            padding: const EdgeInsets.all(paddingDft),
            child: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
