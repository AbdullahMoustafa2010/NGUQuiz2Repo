class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;
  Recipe(
    this.label,
    this.imageUrl,
    this.ingredients,
    this.servings,
  );
  static List<Recipe> samples = [
    Recipe(
      'Ahmed Z. Elbeltagy',
      'assets/belta.jpg',
      [
        Ingredient("Phone Number: 01554813316"),
        Ingredient("Email: ahmedzakibeltagy5008@gmail.com"),
        Ingredient("Address: Dakahlia/Met Ghamr"),
      ],
      4,
    ),
    Recipe(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpg',
      [
        Ingredient("still in progress......"),
      ],
      4,
    ),
    Recipe(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',
      [
        Ingredient("still in progress...."),
      ],
      4,
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/15992102771_b92f4cc00a_b.jpg',
      [
        Ingredient("still in progress....."),
      ],
      4,
    ),
    Recipe(
      'Taco Salad',
      'assets/8533381643_a31a99e8a6_c.jpg',
      [
        Ingredient("still in progress....."),
      ],
      4,
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/15452035777_294cefced5_c.jpg',
      [
        Ingredient("Still in progress...."),
      ],
      4,
    ),
  ];
// TODO; Add List<Recipe> here
}

class Ingredient {
  String name;
  Ingredient(
    this.name,
  );
}
