import 'package:flutter/material.dart';
import 'package:fourth_app/recipe_details.dart';

import 'constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home", style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.redAccent,
      ),
      body: GridView.count(
          crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipeDetails(name: recipe1Name, image: image1, description: description1,)));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.fastfood,
                    size: 100,
                      color: Colors.white,
                    ),
              
                    const SizedBox(height: 10,),
              
                    Text(recipe1Name, style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipeDetails(name: recipe2Name, image: image2, description: description2,)));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.rice_bowl,
                      size: 100,
                      color: Colors.white,
                    ),

                    const SizedBox(height: 10,),

                    Text(recipe2Name, style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipeDetails(name: recipe3Name, image: image3, description: description3,)));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.cake,
                      size: 100,
                      color: Colors.white,
                    ),

                    const SizedBox(height: 10,),

                    Text(recipe3Name, style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipeDetails(name: recipe4Name, image: image4, description: description4,)));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.local_pizza,
                      size: 100,
                      color: Colors.white,
                    ),

                    const SizedBox(height: 10,),

                    Text(recipe4Name, style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
