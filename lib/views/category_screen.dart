import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_video/utils/dummy_data_list.dart';

import 'my_drawer.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Builder'),
      ),
      drawer: MyDrawer(),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
        itemCount: categoryList.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          // crossAxisCount: 4,
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) => Container(
          alignment: Alignment.center,
          // color: categoryList[index].catColor,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                categoryList[index].catColor.withOpacity(0.5),
                categoryList[index].catColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(categoryList[index].catName),
        ),
      ),
    );
  }
}
