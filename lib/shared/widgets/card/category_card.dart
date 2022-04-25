import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  const CategoryCard({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          const SizedBox(height: 7.5),
          Text(title),
        ],
      ),
    );
  }
}
