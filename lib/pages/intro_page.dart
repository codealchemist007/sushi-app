import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
          // shop name
          Text(
            "SUSHI MAN", 
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 28,
              color: Colors.white,
            ),
          ),

            const SizedBox(height: 25),
          // icon
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/sushi_5.png'),
          ),

          const SizedBox(height: 25),
          // title
          Text(
           "THE TASTE OF JAPANESE FOOD",
           style: GoogleFonts.dmSerifDisplay(
              fontSize: 44,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),

          // subtitle
          Text(
            "Feel the taste of the most popular japanese food from anywhere and anytime",
            style: TextStyle(
              color: Colors.grey[300],
              height: 2,
            ),
          ),

          const SizedBox(width: 25),
          
          // get started button
          MyButton(
            text: "Get Started",
            onTap: () {
              // Go to the menu page
              Navigator.pushNamed(context, '/menupage');
            },
          ),
        ],
      ),
    )
   );
  }
}
