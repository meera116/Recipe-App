import 'package:flutter/material.dart';
import 'recipe.dart';
import 'variety.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecipeListPage(),
    );
  }
}

class RecipeListPage extends StatefulWidget {
  @override
  _RecipeListPageState createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  final List<Recipe> recipes = [
    Recipe(
      title: 'Pasta',
      description: 'Al dente, saucy',
      ingredients: [
        '1 pound pasta\n-1 jar pasta sauce\n-1/2 cup grated Parmesan cheese\n-Optional toppings: cooked meat, vegetables, red pepper flakes'
      ],
      instructions:
          '1. Cook pasta according to package directions. Drain and set aside.\n2. In a large skillet, heat a tablespoon of olive oil. Add cooked meat and vegetables, if using, and sauté until heated through.\n3. Add pasta sauce to the skillet and simmer for a few minutes.\n4. Toss cooked pasta with the sauce and toppings.\n5. Serve immediately, topped with Parmesan cheese.',
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.wSuyQCcpGi9Zo9G_IgWiRAHaGw&pid=Api&P=0&h=180',
      variations: [
        Recipe(
          title: 'Spaghetti',
          description: 'Classic spaghetti pasta.',
          ingredients: [
            '1 pound spaghetti\n1 pound ground beef\n1/2 cup breadcrumbs\n1/4 cup grated Parmesan cheese\n1 egg\n1/4 cup chopped onion\n1/4 cup chopped garlic\n1 can (28 ounces) crushed tomatoes\n1 teaspoon dried oregano\n1/2 teaspoon dried basil'
          ],
          instructions:
              '1.Cook spaghetti according to package directions.\n2.In a large bowl, combine ground beef, breadcrumbs, Parmesan cheese, egg, onion, and garlic. Form into small meatballs.\n3.Heat olive oil in a large skillet over medium heat. Cook meatballs until browned on all sides.\n4.Add crushed tomatoes, oregano, and basil to the skillet. Simmer for 15-20 minutes, or until meatballs are cooked through.\n5.Drain spaghetti and add to the skillet with meatballs and sauce. Toss to coat.\n6.Serve with additional Parmesan cheese.',
          imageUrl:
              'https://th.bing.com/th/id/OIP.AX3eF50qIH9YKzMZT0Zo0wHaE6?rs=1&pid=ImgDetMain',
        ),
        Recipe(
          title: 'Fettuccine',
          description: 'Creamy Alfredo Pasta',
          ingredients: [
            '1 pound fettuccine\n1 cup heavy cream\n1/2 cup unsalted butter\n1 cup grated Parmesan cheese\nSalt and pepper'
          ],
          instructions:
              '1.Cook fettuccine: Cook the fettuccine according to package directions until al dente. Drain and set aside.\n2.Make the sauce: In a large skillet over medium heat, melt the butter.\n3.Add heavy cream: Pour in the heavy cream and bring it to a simmer.\n4.Whisk in Parmesan cheese: Gradually whisk in the grated Parmesan cheese until the sauce is smooth and creamy.\n5.Season: Season with salt and pepper to taste.\n6.Combine pasta and sauce: Add the cooked fettuccine to the sauce and toss to coat evenly.\n7.Serve: Serve the creamy Alfredo pasta immediately while its hot.',
          imageUrl:
              'https://th.bing.com/th/id/OIP.pS7UqzvDTOXY5KuacEHAcQHaE6?w=284&h=188&c=7&r=0&o=5&pid=1.7',
        ),
      ],
    ),
    Recipe(
      title: 'Noodles',
      description: 'Delicious stir-fried noodles',
      ingredients: [
        '1 pound noodles (ramen, udon, soba, etc.)\n-1 tablespoon soy sauce\n-1 tablespoon rice vinegar\n-1 teaspoon sesame oil\n-Optional toppings: cooked chicken, vegetables, eggs'
      ],
      instructions:
          '1. Cook noodles according to package directions. Drain and set aside.\n2. In a small bowl, whisk together soy sauce, rice vinegar, and sesame oil.\n3. Toss cooked noodles with the sauce and toppings.\n4. Serve immediately.',
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.BfAuP0_qWySDMK8vl1tHNAHaE7&pid=Api&P=0&h=180',
      variations: [
        Recipe(
          title: 'Glass Noodles',
          description: 'Glass Noodle Soup (Thai Style).',
          ingredients: [
            '8 ounces glass noodles\n1 tablespoon vegetable oil\n1 onion, chopped\n2 cloves garlic, minced\n1 tablespoon grated ginger\n1 can (15 ounces) coconut milk\n2 cups chicken broth\n1 tablespoon soy sauce\n1 tablespoon fish sauce\n1 teaspoon red pepper flakes (optional)\n1/4 cup chopped cilantro\n1/4 cup chopped green onions'
          ],
          instructions:
              '1.Prepare noodles: Soak glass noodles in cold water for 30 minutes, or according to package directions. Drain.\n2.Sauté aromatics: Heat vegetable oil in a large pot over medium heat. Add onion, garlic, and ginger. Sauté until fragrant.\n3.Add liquids: Stir in coconut milk, chicken broth, soy sauce, fish sauce, and red pepper flakes (if using). Bring to a boil, then reduce heat and simmer for 5 minutes.\n4.Add noodles: Add the soaked glass noodles to the pot and cook for 2-3 minutes, or until heated through.\n5.Garnish and serve: Garnish with cilantro and green onions. Serve immediately.',
          imageUrl:
              'https://drivemehungry.com/wp-content/uploads/2020/06/japchae-korean-glass-noodles-19.jpg',
        ),
        Recipe(
          title: 'Pad Thai',
          description: 'Pad Thai',
          ingredients: [
            '1 pound rice noodles\n1 tablespoon tamarind paste\n1 tablespoon fish sauce\n1 tablespoon soy sauce\n1 tablespoon sugar\n1/4 cup vegetable oil\n2 eggs\n1 pound cooked shrimp\n1/2 cup chopped peanuts\n1/4 cup chopped green onions\n1/4 cup chopped cilantro'
          ],
          instructions:
              '1.Soak rice noodles in warm water for 30 minutes.\n2.In a small bowl, combine tamarind paste, fish sauce, soy sauce, and sugar.\n3.Heat vegetable oil in a large skillet over medium heat. Add eggs and scramble. Remove from skillet.\n4.Add shrimp to the skillet and cook until pink. Remove from skillet.\n5.Add noodles to the skillet and stir-fry for 2-3 minutes, or until heated through.\n6.Add tamarind sauce mixture to the skillet and stir-fry for 1 minute more.\n7.Return shrimp and eggs to the skillet.\n8.Top with peanuts, green onions, and cilantro.',
          imageUrl:
              'https://bellyfull.net/wp-content/uploads/2022/08/Chicken-Pad-Thai-blog-1.jpg',
        ),
        Recipe(
          title: 'Ramen',
          description: 'Chinese Noodle Soup',
          ingredients: [
            '1 tablespoon olive oil\n1 onion, chopped\n2 carrots, chopped\n2 celery stalks, chopped\n1 bay leaf\n1 teaspoon dried thyme\n1 teaspoon dried parsley\n1 gallon chicken broth\n1 pound boneless, skinless chicken breasts\n1 cup egg noodles\nSalt and pepper'
          ],
          instructions:
              '1.eat olive oil in a large pot over medium heat. Add onion, carrots, and celery. Cook until softened.\n2.Add bay leaf, thyme, and parsley. Cook for 1 minute more.\n3.Stir in chicken broth and bring to a boil. Reduce heat and simmer for 15 minutes.\n4.Add chicken breasts and cook until cooked through. Remove chicken from the pot and shred.\n5.Add egg noodles to the pot and cook according to package directions.\n6.Return shredded chicken to the pot and season with salt and pepper.',
          imageUrl:
              'https://thehintofrosemary.com/wp-content/uploads/2020/02/ramen-cover-1536x1536.jpg',
        ),
      ],
    ),
    Recipe(
      title: 'Pizzas',
      description: 'Savory, cheesy',
      ingredients: [
        '1 pound pasta\n-1 jar pasta sauce\n-1/2 cup grated Parmesan cheese\n-Optional toppings: cooked meat, vegetables, red pepper flakes'
      ],
      instructions:
          '1. Cook pasta according to package directions. Drain and set aside.\n2. In a large skillet, heat a tablespoon of olive oil. Add cooked meat and vegetables, if using, and sauté until heated through.\n3. Add pasta sauce to the skillet and simmer for a few minutes.\n4. Toss cooked pasta with the sauce and toppings.\n5. Serve immediately, topped with Parmesan cheese.',
      imageUrl:
          'https://tse2.mm.bing.net/th?id=OIP.JgT2nYsBp8Yf0XZKkV10sgHaFs&pid=Api&P=0&h=180',
      variations: [
        Recipe(
          title: 'Pizza',
          description: 'Classic Margherita Pizza',
          ingredients: [
            '1 pizza dough\n1 cup pizza sauce\n1 cup shredded mozzarella cheese\nFresh basil leaves\nExtra virgin olive oil\nSalt and pepper'
          ],
          instructions:
              '1.Preheat oven to 450°F (230°C).\n2.Roll out the pizza dough on a floured surface.\n3.Place the dough on a baking sheet and spread the pizza sauce evenly over the dough, leaving a small border.\n4.Top with mozzarella cheese.\n5.Bake for 10-15 minutes, or until the crust is golden brown and the cheese is bubbly.\n6.emove from the oven and garnish with fresh basil leaves. Drizzle with extra virgin olive oil and season with salt and pepper.',
          imageUrl:
              'https://tse2.mm.bing.net/th?id=OIP.883_MF8WDqqi6LDj72zVLAHaHa&pid=Api&P=0&h=180',
        ),
        Recipe(
          title: 'Pepperoni Pizza',
          description: 'Classic Pepperoni pizza',
          ingredients: [
            '1 pizza dough\n1 cup pizza sauce\n1 cup shredded mozzarella cheese\n10-12 pepperoni slices\nDried oregano\nGarlic powder'
          ],
          instructions:
              '1.Preheat oven to 450°F (230°C).\n2.Roll out the pizza dough on a floured surface.\n3.Place the dough on a baking sheet and spread the pizza sauce evenly over the dough, leaving a small border.\n4.Top with mozzarella cheese, pepperoni slices, dried oregano, and garlic powder.\n5.Bake for 10-15 minutes, or until the crust is golden brown and the cheese is bubbly.',
          imageUrl:
              'https://tse3.mm.bing.net/th?id=OIP.F_mv7Lb7QGLidPoS7jro4gAAAA&pid=Api&P=0&w=300&h=300',
        ),
      ],
    ),
    Recipe(
      title: 'Cupcakes',
      description: 'Sweet, fluffy',
      ingredients: [
        '1 pound pasta\n-1 jar pasta sauce\n-1/2 cup grated Parmesan cheese\n-Optional toppings: cooked meat, vegetables, red pepper flakes'
      ],
      instructions:
          '1. Cook pasta according to package directions. Drain and set aside.\n2. In a large skillet, heat a tablespoon of olive oil. Add cooked meat and vegetables, if using, and sauté until heated through.\n3. Add pasta sauce to the skillet and simmer for a few minutes.\n4. Toss cooked pasta with the sauce and toppings.\n5. Serve immediately, topped with Parmesan cheese.',
      imageUrl:
          'http://4.bp.blogspot.com/-TgxnxZy2EjY/TkiN1LyiTmI/AAAAAAAACKk/I_8zxxVPKPc/s1600/IMG_6155csqs.jpg',
      variations: [
        Recipe(
          title: 'Vanilla Cupcake',
          description: 'Creamy Delight',
          ingredients: [
            '1 1/4 cups all-purpose flour\n1 teaspoon baking powder\n1/4 teaspoon salt\n1/2 cup unsalted butter, softened\n1 cup granulated sugar\n2 large eggs\n1 teaspoon vanilla extract   \n1/2 cup milk  '
          ],
          instructions:
              '1.Preheat oven to 350°F (175°C). Line a cupcake tin with paper liners.\n2.In a medium bowl, whisk together flour, baking powder, and salt.\n3.In a large bowl, cream together butter and sugar until light and fluffy.   \n4.Beat in eggs one at a time, then stir in vanilla extract.\n5. Gradually add the dry ingredients to the wet ingredients, alternating with the milk, and mix until just combined.\n6.Divide batter evenly among cupcake liners.\n7.Bake for 18-20 minutes, or until a toothpick inserted into the center comes out clean.\n8.Let cool in pan for a few minutes before transferring to a wire rack to cool completely.',
          imageUrl:
              'https://nataliewaybakes.com/wp-content/uploads/2020/09/vanilla-cupcake-1-e1599795648948.jpg',
        ),
        Recipe(
          title: ' Chocolate Cupcakes',
          description: ' Rich Indulgence',
          ingredients: [
            '1 cup all-purpose flour\n1/2 cup unsweetened cocoa powder\n1 teaspoon baking powder\n1/2 teaspoon salt\n1/2 cup unsalted butter, softened\n1 cup granulated sugar\n2 large eggs\n1 teaspoon vanilla extract\n1/2 cup milk'
          ],
          instructions:
              '1.Preheat oven to 350°F (175°C). Line a cupcake tin with paper liners.\n2.In a medium bowl, whisk together flour, cocoa powder, baking powder, and salt.\n3.In a large bowl, cream together butter and sugar until light and fluffy.\n4.Beat in eggs one at a time, then stir in vanilla extract. 5. Gradually add the dry ingredients to the wet ingredients, alternating with the milk, and mix until just combined.\n5.Divide batter evenly among cupcake liners.\n6.Bake for 18-20 minutes, or until a toothpick inserted into the center comes out clean.\n7.Let cool in pan for a few minutes before transferring to a wire rack to cool completely.',
          imageUrl:
              'https://media.istockphoto.com/id/1338318252/photo/close-up-image-of-batch-of-homemade-chocolate-cupcakes-in-paper-cake-cases-on-circular-black.webp?b=1&s=170667a&w=0&k=20&c=Hrmn_tquVYIXelLkZTWkmw-XX2gVw4vZy5I_24ifOcg=',
        ),
      ],
    ),
    Recipe(
      title: 'Cheesecake',
      description: 'Cool, creamy',
      ingredients: [
        '1 pound pasta\n-1 jar pasta sauce\n-1/2 cup grated Parmesan cheese\n-Optional toppings: cooked meat, vegetables, red pepper flakes'
      ],
      instructions:
          '1. Cook pasta according to package directions. Drain and set aside.\n2. In a large skillet, heat a tablespoon of olive oil. Add cooked meat and vegetables, if using, and sauté until heated through.\n3. Add pasta sauce to the skillet and simmer for a few minutes.\n4. Toss cooked pasta with the sauce and toppings.\n5. Serve immediately, topped with Parmesan cheese.',
      imageUrl:
          'https://th.bing.com/th/id/OIP.sgw2JzP6_v48mGsXtyRXOQHaI9?w=172&h=208&c=7&r=0&o=5&pid=1.7',
      variations: [
        Recipe(
          title: 'Chocolate Cheesecake',
          description: 'Decadent Delight',
          ingredients: [
            'Crust:\n1 1/2 cups graham cracker crumbs\n5 tablespoons unsalted butter, melted\n1 tablespoon granulated sugar\nFilling:\n14 ounces sweetened condensed milk\n16 ounces cream cheese, softened\n1/4 cup unsweetened cocoa powder\n1 teaspoon vanilla extract'
          ],
          instructions:
              'Prepare crust: \n1.Combine graham cracker crumbs, melted butter, and sugar in a bowl. Press the mixture into the bottom of a 9-inch springform pan.\n2.Make filling: In a large bowl, beat together sweetened condensed milk, cream cheese, cocoa powder, and vanilla extract until smooth.\n3.Assemble: Pour the filling over the prepared crust.\n4.Chill: Refrigerate for at least 4 hours, or overnight, before serving.',
          imageUrl:
              'https://lilluna.com/wp-content/uploads/2015/07/milk-chocolate-cheesecake-20-scaled.jpg',
        ),
        Recipe(
          title: ' No-Bake Chocolate Cheesecake',
          description: 'Creamy, effortless',
          ingredients: [
            'Crust:\n1 1/2 cups graham cracker crumbs\n5 tablespoons unsalted butter, melted\n1 tablespoon granulated sugar\nFilling:\n14 ounces sweetened condensed milk\n16 ounces cream cheese, softened\n1/4 cup unsweetened cocoa powder\n1 teaspoon vanilla extract'
          ],
          instructions:
              'Prepare crust:\n1. Combine graham cracker crumbs, melted butter, and sugar in a bowl. Press the mixture into the bottom of a 9-inch springform pan.\n2.Make filling: In a large bowl, beat together sweetened condensed milk, cream cheese, cocoa powder, and vanilla extract until smooth.\n3.Assemble: Pour the filling over the prepared crust.\n4.Chill',
          imageUrl:
              'https://th.bing.com/th/id/OIP.bhyIW-vql799qveRKcdARQHaJ3?rs=1&pid=ImgDetMain',
        ),
      ],
    ),
    Recipe(
      title: 'Fresh Juice',
      description: 'A simple pizza recipe',
      ingredients: [''],
      instructions: '',
      imageUrl:
          'https://th.bing.com/th/id/OIP.MTkxBfdHroZKCsRxfNBSgQHaEo?w=307&h=191&c=7&r=0&o=5&pid=1.7',
      variations: [
        Recipe(
          title: 'ABC Juice',
          description: 'Tangy, nutritious',
          ingredients: [
            '1 apple, cored and chopped\n1 beetroot, peeled and chopped\n1 carrot, peeled and chopped\n1 cup water (adjust to desired consistency)',
          ],
          instructions:
              '1.Prepare the fruits and vegetables: Wash the apple, beetroot, and carrot thoroughly.\n2.Cut into pieces: Cut the fruits and vegetables into smaller pieces for easier blending.\n3.Blend: Add the cut fruits and vegetables, along with the water, to a blender. Blend until smooth.\n4.Strain: Strain the juice through a fine-mesh sieve to remove any pulp.\n5.Serve: Pour the juice into a glass and serve immediately.',
          imageUrl:
              'https://th.bing.com/th/id/OIP.HeoSPJyz9F6RLDdi5y_ISgAAAA?w=198&h=198&c=7&r=0&o=5&pid=1.7',
        ),
        Recipe(
          title: 'Strawberry Lemonade',
          description: 'Sweet, refreshing',
          ingredients: [
            '1 cup fresh strawberries, hulled\n1/2 cup granulated sugar\n1 cup freshly squeezed lemon juice\n4 cups cold water\nIce cubes',
          ],
          instructions:
              '1.Mash the strawberries: In a large pitcher, mash the strawberries with a fork.\n2.Add sugar and lemon juice: Stir in the sugar and lemon juice.\n3.Add water: Pour in the cold water and stir to combine.\n4.Chill: Refrigerate for at least 1 hour, or overnight, to let the flavors meld.\n5.Serve: Serve over ice.',
          imageUrl:
              'https://th.bing.com/th/id/OIP.LjcMD5xFPKYNhICMZqxyXwHaHa?w=210&h=210&c=7&r=0&o=5&pid=1.7',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RecipeHub',
          style: TextStyle(color: Colors.white), // White color for the title
        ),
        backgroundColor: Color(0xFF722F37), // Red wine color
        centerTitle: true,
        iconTheme:
            IconThemeData(color: Colors.white), // Ensures back button is white
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Navigate to home page or reset view
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (recipes[index].variations != null &&
                  recipes[index].variations!.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RecipeVariationsPage(recipe: recipes[index]),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RecipeDetailPage(recipe: recipes[index]),
                  ),
                );
              }
            },
            child: Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      recipes[index].imageUrl,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recipes[index].title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          recipes[index].description,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}