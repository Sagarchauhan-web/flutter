import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:minimal_food_delivery/components/my_current_location.dart";
import "package:minimal_food_delivery/components/my_description_box.dart";
import "package:minimal_food_delivery/components/my_drawer.dart";
import "package:minimal_food_delivery/components/my_food_tile.dart";
import "package:minimal_food_delivery/components/my_sliver_app_bar.dart";
import "package:minimal_food_delivery/components/my_tab_bar.dart";
import "package:minimal_food_delivery/model/food.dart";
import "package:minimal_food_delivery/model/restaurant.dart";
import "package:provider/provider.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Sort out and return a list of food items that belong t a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return FoodTile(
              food: food,
              onTap: () {},
            );
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: MyTabBar(
                    tabController: _tabController,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      MyCurrentLocation(),
                      MyDescriptionBox(),
                    ],
                  ),
                )
              ],
          body: Consumer<Restaurant>(builder: (context, restuarant, child) {
            return TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restuarant.menu),
            );
          })),
    );
  }
}
