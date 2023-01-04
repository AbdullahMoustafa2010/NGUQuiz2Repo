import 'package:flutter/material.dart';
import 'Recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

// TODO: Add _RecipeDetailState here
int _sliderVal = 1;

class _RecipeDetailState extends State<RecipeDetail> {
// TODO: Add _sliderVal here

  @override
  Widget build(BuildContext context) {
// 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
// 2
      body: SafeArea(
        // SafeArea, a Column with a Container, a SizedBox and Text children.
// 3
        child: Column(
          children: <Widget>[
// 4
            SizedBox(
              height:
                  300, //Here, the height is fixed at 300 but the width will adjust
              // to fit the aspect ratio. The unit of measurement in Flutter
              // is logical pixels.
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
// 5
            const SizedBox(
              // spacer

              height: 10,
            ),
// 6
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 25),
            ),

            // TODO: Add Expanded
// 8
            const SizedBox(
              // spacer

              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // 9
                  return Text('${ingredient.name}',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.deepPurpleAccent,
                          height: 6));
                },
              ),
            ),
            // TODO: Add Slider() here
//             Slider(
// // 10
//               min: 1,
//               max: 10,
//               divisions: 10,
// // 11
//               label: '${_sliderVal * widget.recipe.servings} servings',
// // 12
//               value: _sliderVal.toDouble(),
// // 13
//               onChanged: (newValue) {
//                 setState(() {
//                   _sliderVal = newValue.round();
//                 });
//               },
// // 14
//               activeColor: Colors.green,
//               inactiveColor: Colors.black,
//             ),
          ],
        ),
      ),
    );
  }
}
