class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;
// TODO: Add servings and ingredients here
  Recipe(
      this.label,
      this.imageUrl,
      this.ingredients,
      this.servings,
      );
  static List<Recipe> samples = [
  Recipe(
  'Spaghetti and Meatballs',
  'assets/2126711929_ef763de2b3_w.jpg',
    [
    Ingredient(5,"unit","tomato"),
    Ingredient(10,"Gram","Salt"),

  ],
    4,
  ),
  Recipe(
  'Tomato Soup',
  'assets/27729023535_a57606c1be.jpg',
    [
      Ingredient(5,"unit","tomato"),
      Ingredient(10,"Gram","Salt"),
      Ingredient(20,"Strip","Onion"),
      Ingredient(20,"Strip","Onion"),
    ],
    4,
  ),
  Recipe(
  'Grilled Cheese',
  'assets/3187380632_5056654a19_b.jpg',
    [
      Ingredient(5,"unit","tomato"),
      Ingredient(10,"Gram","Salt"),
      Ingredient(20,"Strip","Onion"),
    ],
    4,
  ),
  Recipe(
  'Chocolate Chip Cookies',
  'assets/15992102771_b92f4cc00a_b.jpg',
    [
      Ingredient(5,"unit","tomato"),
      Ingredient(10,"Gram","Salt"),
      Ingredient(20,"Strip","Onion"),
    ],
    4,
  ),
    Recipe(
      'Taco Salad',
      'assets/8533381643_a31a99e8a6_c.jpg',
      [
        Ingredient(5,"unit","tomato"),
        Ingredient(10,"Gram","Salt"),
        Ingredient(20,"Strip","Onion"),
      ],
      4,
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/15452035777_294cefced5_c.jpg',
      [
        Ingredient(5,"unit","tomato"),
        Ingredient(10,"Gram","Salt"),
        Ingredient(20,"Strip","Onion"),
      ],
      4,
    ),
  ];
// TODO; Add List<Recipe> here
}
class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(
      this.quantity,
      this.measure,
      this.name,
      );
}