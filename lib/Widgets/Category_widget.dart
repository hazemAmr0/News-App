import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_Model.dart';
import 'package:news_app/views/Category_View.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({Key? key, required this.Category}) : super(key: key);
  final CategoryModel Category;

  @override
  Widget build(BuildContext context) {
    TextStyle categoryTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    if (Category.CategoryName == 'general' || Category.CategoryName == 'Business') {
      categoryTextStyle = categoryTextStyle.copyWith(
        color: Colors.black,
      );
    } else {
      categoryTextStyle = categoryTextStyle.copyWith(
        color: Colors.deepOrangeAccent,
      );
    }

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryView(category: Category.CategoryName),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 90,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Category.image),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              Category.CategoryName,
              style: categoryTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
