import 'package:carousel_slider/carousel_slider.dart';
import 'package:elomano/components/bottomNavigationBar.dart';
import 'package:elomano/components/outlineButton.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  // ignore: non_constant_identifier_names
  void nav_login(){
    Navigator.pushNamed(
      context,
      '/logouinsc', 
    );
  }
  
  List<Widget> caroussel = [

    Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: const DecorationImage(
          image: AssetImage('images/JonahsyTendry.jpg'),
          fit: BoxFit.cover
        )
      ),
    ),
    Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: const DecorationImage(
          image: AssetImage('images/Tendry.jpg'),
          fit: BoxFit.cover
        )
      ),
    ),
    Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: const DecorationImage(
          image: AssetImage('images/Antsa.jpg'),
          fit: BoxFit.cover
        )
      ),
    ),
    Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: const DecorationImage(
          image: AssetImage('images/Jonah.jpg'),
          fit: BoxFit.cover
        )
      ),
    ),
   
  ];

  Color maCouleur = const Color(0xFF3742FA);
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: caroussel,
                options:CarouselOptions(
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  height: 250,
                  onPageChanged: (index, reason){
                    setState(() {
                      currentindex = index;
                    });
                  }
                )
              ),
        
              //Spacer
              const SizedBox(
                height: 20,
              ),
        
        
              //Control anle caroussel
              AnimatedSmoothIndicator(
                activeIndex: currentindex, 
                count: caroussel.length,
                effect:const ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.blue,
                  spacing: 5,
                ),
              ),
        
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                    image: AssetImage('images/Logo.png'),
                    fit: BoxFit.cover
                  )
                ),
              ),
        
              Text(
                'E-lomano', 
                style: GoogleFonts.inder(
                  fontSize: 30,
                  color: Colors.grey,
                ),
        
              ),
              const Text(
                "L'application des nageurs Malagasy", 
              ),
        
              const SizedBox(
                height: 20,
              ),

              const SizedBox(height: 10,),
        
              OutlinedButtonComponent(onTap: nav_login, text: 'Commencer'),           

              const SizedBox(height: 30,),
              
  
            ],
          ),
        ),
      ),

      bottomNavigationBar:const BottomNavigationBarComponent() 
    );
  }
}