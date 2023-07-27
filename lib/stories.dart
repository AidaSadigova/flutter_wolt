import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wolt/homepage.dart';

class Stroies extends StatefulWidget {
  const Stroies({super.key});

  @override
  State<Stroies> createState() => _StroiesState();
}

class _StroiesState extends State<Stroies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // physics: const BouncingScrollPhysics(),
              // reverse: true,
              // padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  containerMethod(
                      'https://w7.pngwing.com/pngs/201/77/png-transparent-hamburger-veggie-burger-take-out-fast-food-kebab-delicious-beef-burger-burger-with-lettuce-tomato-and-cheese-food-beef-recipe.png',
                      'Restaurants'),
                  containerMethod(
                      'https://cdn-icons-png.flaticon.com/512/3731/3731016.png',
                      'Groceries'),
                  containerMethod(
                      'https://www.transparentpng.com/thumb/book-png/gYJvka-book-cut-out-png.png',
                      'General Stores'),
                  containerMethod(
                      'https://w7.pngwing.com/pngs/674/885/png-transparent-pet-shop-illustration-alecrim-pet-e-jardim-loja-2-pet-shop-pet-shop-model-celebrities-building-pet-thumbnail.png',
                      'Pet Supply'),
                  containerMethod(
                      'https://st.depositphotos.com/1858383/3727/v/450/depositphotos_37272779-stock-illustration-two-coloured-realistic-piil-on.jpg',
                      'Pharmacies'),
                  containerMethod(
                      'https://resources.mynewsdesk.com/image/upload/c_fill,dpr_auto,f_auto,g_auto,q_auto:good,w_746/sm6nu2alhk4nuxe8ylq6',
                      'Wolt+'),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 4,
            child: SingleChildScrollView(
              // physics: const BouncingScrollPhysics(),
              // reverse: true,
              // padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  MyHomePage(title: 'app'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Padding containerMethod(String url, String userName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 40.0,
          backgroundColor: Colors.grey[800],
          child: CircleAvatar(
            radius: 35.0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(url),
              backgroundColor: Colors.grey[900],
              radius: 20.0,
            ),
          ),
        ),
        Text(
          userName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
