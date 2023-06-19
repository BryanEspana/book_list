
import 'package:flutter/cupertino.dart';

class CategoriesScreen extends StatelessWidget{
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BookCategoriesGrid();
  }

}

class BookCategoriesGrid  extends StatelessWidget{
  const BookCategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {});
  }

}