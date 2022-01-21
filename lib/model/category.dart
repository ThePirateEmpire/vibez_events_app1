import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

final animeCategory = Category(
  categoryId: 1,
  name: "Anime",
  icon: Icons.whatshot_outlined,
);

final foodCategory = Category(
  categoryId: 2,
  name: "Foodies",
  icon: Icons.fastfood,
);

final gamingCategory = Category(
  categoryId: 3,
  name: "Gaming",
  icon: Icons.games,
);

final musicCategory = Category(
  categoryId: 4,
  name: "Music",
  icon: Icons.music_note,
);
final charityCategory = Category(
  categoryId: 5,
  name: "Charity",
  icon: Icons.volunteer_activism_sharp,
);

final categories = [
  allCategory,
  animeCategory,
  foodCategory,
  gamingCategory,
  musicCategory,
  charityCategory,
];
