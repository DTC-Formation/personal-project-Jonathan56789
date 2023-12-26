import 'package:flutter/material.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  const BottomNavigationBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 60,
        child: Center(
          child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Vous avez des difficultés? ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ), // Ajoute un espace entre les deux textes
                  Text(
                    'Consulter aide',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
        ),
      );
  }
}