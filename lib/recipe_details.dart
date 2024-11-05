import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetails extends StatefulWidget {

  final String name;
  final String image;
  final String description;

  const RecipeDetails({super.key, required this.name, required this.image, required this.description});

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text("Recipe Details", style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/${widget.image}",
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height/2,
                fit: BoxFit.fitWidth,
                )
              ],
            ),

            Row(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.redAccent,
                  child: Center(
                    child: Text(widget.name, style: GoogleFonts.sacramento(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.description, style: GoogleFonts.arima(
                      fontSize: 20,
                    ),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
