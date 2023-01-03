import 'package:flutter/material.dart';
import 'package:ngu_app/recipe_detail.dart';

import 'Recipe.dart';

void main() {
  runApp(const MyApp());

  // Test 1st Push
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Hazem',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
        primary: Colors.grey,
        secondary: Colors.black,
    )),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // 4
        child: ListView.builder(
// 5
          itemCount: Recipe.samples.length,
// 6
          itemBuilder: (BuildContext context, int index) {
// 7
// TODO: Update to return Recipe card
             //return Text(Recipe.samples[index].label);

            // ------------    With the  Card -------------
            // return buildRecipeCard(Recipe.samples[index]);

            //  ------------  With the tab option ----------
            // 7
           return GestureDetector(
              // 8   Introduces a GestureDetector widget, which, as the name implies, detects
              // gestures.
              onTap: () {
                // 9 Implements an onTap function, which is the callback called when the widget is
                // tapped.

                // The Navigator widget manages a stack of pages. Calling push() with a
                // MaterialPageRoute will push a new Material page onto the stack. Section III,
                // “Navigating Between Screens”, will cover navigation in a lot more detail.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {  // builder creates the destination page widget.
                      // 10
                      // TODO: Replace return with return RecipeDetail()
                      //return SafeArea(child: Text('Detail page'));
                     return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRecipeCard(Recipe.samples[index]), // GestureDetector’s child widget defines the area where the gesture is active
            );

          },
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
 /* Widget buildRecipeCard(Recipe recipe) {
// 1
    return Card(
// 2
      child: Column(
// 3
        children: <Widget>[
// 4
          Image(image: AssetImage(recipe.imageUrl)),
// 5
          Text(recipe.label),
        ],
      ),
    );
  }*/

// ---------------------------------------
// better UI
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
// 1
    color: Colors.amber,
      elevation: 2.0,  //  determines how high off the screen the card is, affecting its shadow.
// 2
      shape: RoundedRectangleBorder(   // shape handles the shape of the card. This code defines a rounded rectangle with  a 10.0 corner radius.
          borderRadius: BorderRadius.circular(10.0)),
// 3
      child: Padding(
        padding: const EdgeInsets.all(15.0), // Padding insets its child’s contents by the specified padding value.
// 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
// 5
            const SizedBox(
              height: 10.0,
            ),  // This is a blank view with a fixed size.
// 6
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}
