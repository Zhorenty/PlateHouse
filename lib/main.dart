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
      backgroundColor: Colors.brown,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 540,
                backgroundColor: Colors.brown,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
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
                            Text(
                              'Plate House',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 350,
                              height: 73,
                              child: Text(
                                '\n ул. Академика Трубилина, 56  г.Краснодар',
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
            ],
          ),
        ],
      ),
    );
  }
}

Widget gridFood() {
  return ListView.builder(
    itemCount: dummyFoods.length,
    itemBuilder: (context, index) {
      Food food = dummyFoods[index];
      return GestureDetector();
    },
  );
}
