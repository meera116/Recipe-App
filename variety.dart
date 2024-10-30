import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipe.title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF722F37),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              recipe.imageUrl,
              width: double.infinity,
              height: 300, // Increased height
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              'Ingredients',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(recipe.ingredients.join('\n')),
            SizedBox(height: 16),
            Text(
              'Instructions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(recipe.instructions),
          ],
        ),
      ),
    );
  }
}

class RecipeVariationsPage extends StatelessWidget {
  final Recipe recipe;

  RecipeVariationsPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${recipe.title} Variations',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF722F37),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: recipe.variations?.length ?? 0,
        itemBuilder: (context, index) {
          final variation = recipe.variations![index];
          return ListTile(
            title: Text(variation.title),
            subtitle: Text(variation.description),
            leading: Image.network(
              variation.imageUrl,
              width: 80, // Increased width for better visibility
              height: 80, // Increased height for better visibility
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailPage(recipe: variation),
                ),
              );
            },
          );
        },
      ),
    );
  }
}