import 'package:flutter/cupertino.dart';
import 'package:news_app/Models/Category_Model.dart';
import 'package:news_app/Widgets/Category_widget.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

final List<CategoryModel> Categories= const[

  CategoryModel(image: 'assets/business.jpeg', CategoryName:'Business' ),
  CategoryModel(image: 'assets/health.avif', CategoryName:'Health' ),
  CategoryModel(image:'assets/science.avif' , CategoryName:'Science' ),
  CategoryModel(image: 'assets/sports.jpeg', CategoryName:'Sports' ),
  CategoryModel(image: 'assets/technology.jpeg', CategoryName:'Technology' ),
  CategoryModel(image: 'assets/entertaiment.avif', CategoryName:'Entertainment' ),
  CategoryModel(image: 'assets/general.jpeg', CategoryName:'General' ),



];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemBuilder: (context, index) =>  CategoryCards(Category:Categories[index] ),
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,



      ),
    );
  }
}
