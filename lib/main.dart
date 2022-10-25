import 'package:flutter/material.dart';
import 'models/foodModels.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.brown),
    home: const HomePage(),
  ));
}

String imageUrl =
    'https://media.istockphoto.com/photos/mexican-quesadillas-picture-id1006720898';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade500,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                expandedHeight: 540,
                backgroundColor: Colors.brown.withOpacity(0),
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imageUrl), fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.brown,
                            Colors.brown.withOpacity(0.3)
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Icon(
                                Icons.fastfood_outlined,
                                size: 60,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Plate House',
                                style: TextStyle(
                                    fontSize: 45,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                            Container(
                              width: 330,
                              height: 73,
                              child: Text(
                                'ул. Академика Трубилина, 56  г.Краснодар',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              gridFood()
            ],
          ),
        ],
      ),
    );
  }
}

Widget gridFood() {
  return SliverGrid(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      mainAxisExtent: 220,
    ),
    delegate: SliverChildListDelegate([
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://eda.yandex.ru/images/3521394/fe9c612b5c1c1b585c76fb4291a25cd3-680x500.jpeg',
              fit: BoxFit.fitWidth,
            )),
      ),
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const ListTile()),
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const ListTile()),
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const ListTile()),
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const ListTile()),
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const ListTile()),
    ]),
  );
}
