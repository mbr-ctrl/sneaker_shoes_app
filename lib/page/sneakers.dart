import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneaker_shoes_app/page/football.dart';
import 'package:sneaker_shoes_app/page/shoes.dart';
import '../animations/fade_animation.dart';

class Sneakers extends StatefulWidget {
  const Sneakers({super.key});

  @override
  State<Sneakers> createState() => _SneakersState();
}

class _SneakersState extends State<Sneakers> {
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
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: const Text(
          "Chaussures",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: GestureDetector(
                        // onTap: () => Get.offAll(HomePage()),
                        child: FadeAnimation(
                            1,
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: const Center(
                                child: Text(
                                  "Tous",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            )),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: GestureDetector(
                        onTap: () {},
                        child: FadeAnimation(
                            1.1,
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  "Sneakers",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: GestureDetector(
                        onTap: () => Get.off(() => Football()),
                        child: FadeAnimation(
                            1.2,
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: const Center(
                                child: Text(
                                  "Football",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            )),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: GestureDetector(
                        onTap: () => Get.off(() => Football()),
                        child: FadeAnimation(
                            1.3,
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: const Center(
                                child: Text(
                                  "Running",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            )),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: GestureDetector(
                        onTap: () => Get.off(Football()),
                        child: FadeAnimation(
                            1.4,
                            Container(
                              margin: const EdgeInsets.only(right: 30),
                              child: const Center(
                                child: Text(
                                  "Air",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  1.1,
                  makeItem(
                      image: 'assets/two.jpg',
                      tag: 'Sneakers1',
                      context: context,
                      name: "Sneakers",
                      price: 100)),
              FadeAnimation(
                  1.2,
                  makeItem(
                      image: 'assets/three.jpg',
                      tag: 'Sneakers2',
                      context: context,
                      name: "Sneakers",
                      price: 100)),
              FadeAnimation(
                  1.3,
                  makeItem(
                      image: 'assets/seven.jpg',
                      tag: 'Sneakers3',
                      context: context,
                      name: "Sneakers",
                      price: 100)),
              FadeAnimation(
                  1.4,
                  makeItem(
                      image: 'assets/ten.jpg',
                      tag: 'Sneakers4',
                      context: context,
                      name: "Sneakers",
                      price: 100)),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context, name, price}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Shoes(
                    image: image,
                  )));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400]!,
                    blurRadius: 10,
                    offset: const Offset(0, 10))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1,
                            const Text(
                              "Nike",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                            1.1,
                            Text(
                              name,
                              style:
                              const TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  FadeAnimation(
                      1.2,
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
                      ))
                ],
              ),
              FadeAnimation(
                  1.2,
                  Text(
                    "$price\K FCFA",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
