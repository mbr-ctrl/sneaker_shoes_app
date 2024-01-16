import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../animations/fade_animation.dart';
import '../widgets/my_button.dart';
import 'buy_page.dart';
class Shoes extends StatefulWidget {
  final String image;

  const Shoes({required this.image});

  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  bool clicked = false;
  bool clicked2 = false;
  bool clicked3 = false;
  bool clicked4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/header.jpg"),
                    fit: BoxFit.fill),
                color: Colors.white54,
              ),
              child: Text(
                "",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text(
                "Accueil",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text(
                "Parametres",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.pages,
                color: Colors.black,
              ),
              title: const Text(
                "Produits",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Hero(
            tag: 'red',
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400]!,
                        blurRadius: 10,
                        offset: const Offset(0, 10))
                  ]),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Center(
                            child: Icon(
                              Icons.favorite_border,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    child: FadeAnimation(
                        1,
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(.9),
                                    Colors.black.withOpacity(.0),
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FadeAnimation(
                                  1.3,
                                  const Text(
                                    "Nike",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(
                                height: 15,
                              ),
                              FadeAnimation(
                                  1.4,
                                  const Text(
                                    "Taille",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(
                                height: 5,
                              ),
                              // FadeAnimation(
                              //   4,
                              //   SizedBox(
                              //     height: 20,
                              //     child: Text(
                              //       'Hold on Size',
                              //       style: TextStyle(
                              //           color: Colors.white, fontSize: 12),
                              //     ),
                              //   ),
                              // ),
                              Row(
                                children: <Widget>[
                                  FadeAnimation(
                                      1.5,
                                      CustomButton(
                                        text: "38",
                                        onTap: () {
                                          setState(() {
                                            clicked = false;
                                            clicked2 = false;
                                            clicked3 = false;
                                            clicked4 = false;
                                          });
                                        },

                                        mode: !clicked, loading: false,
                                      )),
                                  FadeAnimation(
                                      1.5,
                                      CustomButton(
                                        text: "40",
                                        onTap: () {
                                          setState(() {
                                            clicked = false;
                                            clicked2 = false;
                                            clicked3 = false;
                                            clicked4 = false;
                                          });
                                        },

                                        mode: !clicked2, loading: false,
                                      )),
                                  FadeAnimation(
                                      1.5,
                                      CustomButton(
                                        text: "42",
                                        onTap: () {
                                          setState(() {
                                            clicked = false;
                                            clicked2 = false;
                                            clicked3 = false;
                                            clicked4 = false;
                                          });
                                        },
                                        mode: !clicked3, loading: false,
                                      )),
                                  FadeAnimation(
                                      1.5,
                                      CustomButton(
                                        text: "44",
                                        onTap: () {
                                          setState(() {
                                            clicked = false;
                                            clicked2 = false;
                                            clicked3 = false;
                                            clicked4 = false;
                                          });
                                        },

                                        mode: !clicked4, loading: false,
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              FadeAnimation(
                                  1.5,
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Center(
                                        child: GestureDetector(
                                          onTap: () => Get.offAll(() => BuyPage()),
                                          child: const Text(
                                            'Acheter',
                                            style:
                                            TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                  )),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
