import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Cheese Delight Burger",
      description:
          "This burger comes with a juicy beef patty, melted cheddar cheese, and a light spread of mustard.",
      imagePath: "lib/images/burgers/1.jpg",
      price: 1.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Bacon",
          price: 1.29,
        ),
        Addon(
          name: "Mushrooms",
          price: 0.69,
        ),
        Addon(
          name: "Jalapenos",
          price: 0.49,
        )
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description:
          "Spiced with a blend of herbs, this chicken burger is topped with lettuce and mayo for a cool finish.",
      imagePath: "lib/images/burgers/2.jpg",
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Chicken Patty",
          price: 1.59,
        ),
        Addon(
          name: "Cheese Slice",
          price: 0.89,
        ),
        Addon(
          name: "Pickles",
          price: 0.39,
        )
      ],
    ),
    Food(
      name: "Veggie Supreme Burger",
      description:
          "A delightful mix of grilled vegetables, this burger is served with a tangy sauce and fresh greens.",
      imagePath: "lib/images/burgers/3.jpg",
      price: 1.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Avocado",
          price: 1.49,
        ),
        Addon(
          name: "Fried Egg",
          price: 0.99,
        ),
        Addon(
          name: "Spicy Mayo",
          price: 0.59,
        )
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smothered in BBQ sauce, this burger has crispy bacon and onion rings for a savory crunch.",
      imagePath: "lib/images/burgers/4.jpg",
      price: 2.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Grilled Onions",
          price: 0.79,
        ),
        Addon(
          name: "Blue Cheese",
          price: 1.09,
        ),
        Addon(
          name: "BBQ Sauce",
          price: 0.29,
        )
      ],
    ),
    Food(
      name: "Fish Fillet Burger",
      description:
          "Featuring a crispy fish fillet, this burger is complemented with tartar sauce and shredded lettuce.",
      imagePath: "lib/images/burgers/5.jpg",
      price: 2.19,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Tartar Sauce",
          price: 0.69,
        ),
        Addon(
          name: "Coleslaw",
          price: 0.89,
        ),
        Addon(
          name: "Cheese Slice",
          price: 0.89,
        )
      ],
    ),

    // Desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
          "A rich and gooey chocolate cake with a molten center, served warm.",
      imagePath: "lib/images/desserts/1.jpg",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Vanilla Ice Cream",
          price: 1.49,
        ),
        Addon(
          name: "Whipped Cream",
          price: 0.99,
        ),
        Addon(
          name: "Raspberry Sauce",
          price: 0.59,
        )
      ],
    ),
    Food(
      name: "New York Cheesecake",
      description:
          "A creamy and smooth cheesecake with a buttery graham cracker crust.",
      imagePath: "lib/images/desserts/2.jpg",
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Strawberry Topping",
          price: 1.29,
        ),
        Addon(
          name: "Chocolate Chips",
          price: 0.69,
        ),
        Addon(
          name: "Caramel Drizzle",
          price: 0.49,
        )
      ],
    ),
    Food(
      name: "Apple Pie a la Mode",
      description:
          "A classic apple pie with a flaky crust, served with a scoop of vanilla ice cream.",
      imagePath: "lib/images/desserts/3.jpg",
      price: 2.79,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Ice Cream Scoop",
          price: 1.49,
        ),
        Addon(
          name: "Cinnamon Sugar",
          price: 0.29,
        ),
        Addon(
          name: "Cheddar Cheese Slice",
          price: 0.79,
        )
      ],
    ),
    Food(
      name: "Tiramisu",
      description:
          "An Italian dessert with layers of coffee-soaked ladyfingers and mascarpone cheese, dusted with cocoa powder.",
      imagePath: "lib/images/desserts/4.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Mascarpone",
          price: 1.59,
        ),
        Addon(
          name: "Chocolate Shavings",
          price: 0.89,
        ),
        Addon(
          name: "Espresso Shot",
          price: 0.99,
        )
      ],
    ),
    Food(
      name: "Fruit Tart",
      description:
          "A sweet pastry crust filled with custard and topped with an assortment of fresh fruits.",
      imagePath: "lib/images/desserts/5.jpg",
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Whipped Cream",
          price: 0.99,
        ),
        Addon(
          name: "Mixed Berries",
          price: 1.29,
        ),
        Addon(
          name: "Mint Leaves",
          price: 0.19,
        )
      ],
    ),

    // Drinks
    Food(
      name: "Classic Lemonade",
      description:
          "A refreshing drink made from freshly squeezed lemons, sugar, and water, served over ice.",
      imagePath: "lib/images/drinks/1.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Mint Leaves",
          price: 0.49,
        ),
        Addon(
          name: "Extra Lemon Slice",
          price: 0.29,
        ),
        Addon(
          name: "Splash of Soda",
          price: 0.59,
        )
      ],
    ),
    Food(
      name: "Iced Coffee",
      description:
          "Cold brew coffee served over ice with a touch of milk and sugar.",
      imagePath: "lib/images/drinks/2.jpg",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Whipped Cream",
          price: 0.99,
        ),
        Addon(
          name: "Caramel Drizzle",
          price: 0.69,
        ),
        Addon(
          name: "Shot of Espresso",
          price: 0.99,
        )
      ],
    ),
    Food(
      name: "Strawberry Smoothie",
      description:
          "A creamy smoothie made with ripe strawberries, yogurt, and a hint of honey.",
      imagePath: "lib/images/drinks/3.jpg",
      price: 3.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Protein Powder",
          price: 1.49,
        ),
        Addon(
          name: "Chia Seeds",
          price: 0.79,
        ),
        Addon(
          name: "Banana",
          price: 0.59,
        )
      ],
    ),
    Food(
      name: "Mango Lassi",
      description:
          "A traditional Indian yogurt-based drink blended with mango pulp and a touch of cardamom.",
      imagePath: "lib/images/drinks/4.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Saffron Strands",
          price: 1.99,
        ),
        Addon(
          name: "Pistachios",
          price: 0.99,
        ),
        Addon(
          name: "Rose Water",
          price: 0.49,
        )
      ],
    ),
    Food(
      name: "Green Tea",
      description:
          "A soothing cup of green tea, known for its antioxidants and calming properties.",
      imagePath: "lib/images/drinks/5.jpg",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Honey",
          price: 0.49,
        ),
        Addon(
          name: "Lemon Slice",
          price: 0.29,
        ),
        Addon(
          name: "Ginger",
          price: 0.59,
        )
      ],
    ),

    // Salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, and croutons, all tossed in a creamy Caesar dressing.",
      imagePath: "lib/images/salads/1.jpg",
      price: 2.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled Chicken",
          price: 1.99,
        ),
        Addon(
          name: "Anchovies",
          price: 0.99,
        ),
        Addon(
          name: "Bacon Bits",
          price: 0.79,
        )
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A colorful salad with cucumber, tomatoes, red onions, olives, and feta cheese, dressed with olive oil.",
      imagePath: "lib/images/salads/2.jpg",
      price: 3.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Feta Cheese",
          price: 1.29,
        ),
        Addon(
          name: "Stuffed Grape Leaves",
          price: 1.49,
        ),
        Addon(
          name: "Grilled Pita Bread",
          price: 0.99,
        )
      ],
    ),
    Food(
      name: "Garden Salad",
      description:
          "A fresh mix of lettuce, carrots, tomatoes, cucumbers, and your choice of dressing.",
      imagePath: "lib/images/salads/3.jpg",
      price: 1.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Avocado",
          price: 1.49,
        ),
        Addon(
          name: "Sunflower Seeds",
          price: 0.69,
        ),
        Addon(
          name: "Crumbled Goat Cheese",
          price: 1.09,
        )
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Nutritious quinoa tossed with bell peppers, corn, beans, and a zesty lime dressing.",
      imagePath: "lib/images/salads/4.jpg",
      price: 3.29,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled Shrimp",
          price: 2.49,
        ),
        Addon(
          name: "Roasted Nuts",
          price: 1.29,
        ),
        Addon(
          name: "Feta Cheese",
          price: 0.99,
        )
      ],
    ),
    Food(
      name: "Fruit Salad",
      description:
          "A sweet and refreshing mix of seasonal fruits, perfect for a light dessert or side.",
      imagePath: "lib/images/salads/5.jpg",
      price: 2.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Honey Drizzle",
          price: 0.49,
        ),
        Addon(
          name: "Yogurt",
          price: 0.99,
        ),
        Addon(
          name: "Granola",
          price: 0.79,
        )
      ],
    ),

    // Sides
    Food(
      name: "Sweet Potato Fries",
      description:
          "Crispy and lightly seasoned sweet potato fries, served with a side of spicy mayo dip.",
      imagePath: "lib/images/sides/1.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Cheese Sauce",
          price: 0.99,
        ),
        Addon(
          name: "Bacon Bits",
          price: 0.79,
        ),
        Addon(
          name: "Ranch Dressing",
          price: 0.59,
        )
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Toasted bread slices, buttered and topped with garlic and herbs, served with marinara sauce.",
      imagePath: "lib/images/sides/2.jpg",
      price: 1.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Mozzarella Cheese",
          price: 0.89,
        ),
        Addon(
          name: "Pesto Sauce",
          price: 0.69,
        ),
        Addon(
          name: "Parmesan Cheese",
          price: 0.49,
        )
      ],
    ),
    Food(
      name: "Coleslaw",
      description:
          "A classic side of shredded cabbage and carrots in a creamy dressing.",
      imagePath: "lib/images/sides/3.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Bacon Bits",
          price: 0.79,
        ),
        Addon(
          name: "Sunflower Seeds",
          price: 0.29,
        ),
        Addon(
          name: "Jalapenos",
          price: 0.49,
        )
      ],
    ),
    Food(
      name: "Mac and Cheese",
      description:
          "Creamy and cheesy macaroni pasta, baked to golden perfection.",
      imagePath: "lib/images/sides/4.jpg",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Bacon Bits",
          price: 1.29,
        ),
        Addon(
          name: "Truffle Oil",
          price: 1.99,
        ),
        Addon(
          name: "Bread Crumbs",
          price: 0.59,
        )
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Golden and crispy onion rings, served with a tangy dipping sauce.",
      imagePath: "lib/images/sides/5.jpg",
      price: 1.79,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Spicy Mayo",
          price: 0.49,
        ),
        Addon(
          name: "BBQ Sauce",
          price: 0.59,
        ),
        Addon(
          name: "Honey Mustard",
          price: 0.59,
        )
      ],
    ),
  ];

  // Getters
  List<Food> get menu => _menu;

  // Operations

  // Add to cart
  // remove from cart
  // get total price of cart
  // get total number of items
  // Clear cart

  // Helpers
  // generate a receipt
  // format double value into money
  // format list of addons into a string summary
}
