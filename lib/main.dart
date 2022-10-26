import 'package:flutter/material.dart';
import 'package:metanit/cart.dart';
import 'models/foodModels.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.brown),
    routes: {
      '/main': (context) => const HomePage(),
      '/cart': (contex) => const Cart(),
    },
    home: const HomePage(),
  ));
}

var _selectedFood = 0;
var _selectedIndex = 0;
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
      // bottomNavigationBar: NavigationBar(
      //   backgroundColor: Colors.brown,
      //   selectedIndex: _selectedIndex,
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       Navigator.pushReplacementNamed(context, '/cart');
      //       _selectedIndex = index;
      //     });
      //   },
      //   destinations: const [
      //     NavigationDestination(
      //         icon: Icon(
      //           Icons.food_bank,
      //           size: 50,
      //         ),
      //         label: 'Товары'),
      //     NavigationDestination(
      //         icon: Icon(
      //           Icons.shopping_cart,
      //           size: 50,
      //         ),
      //         label: 'Корзина'),
      //   ],
      // ),
      // backgroundColor: Colors.brown.shade500,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverBar(),
              gridFood(),
            ],
          ),
          Positioned(
              bottom: 20,
              right: 20,
              child: SizedBox(
                width: 90,
                height: 90,
                child: FloatingActionButton(
                  backgroundColor: Colors.brown,
                  child: Stack(children: [
                    const Icon(
                      Icons.shopping_cart_rounded,
                      size: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 2, 0, 0),
                      alignment: Alignment.topCenter,
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Text(_selectedFood.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.brown)),
                    )
                  ]),
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/cart', ((route) => false));
                    });
                  },
                ),
              )),
        ],
      ),
    );
  }
}

Widget gridFood() {
  return SliverGrid(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      mainAxisExtent: 260,
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

Widget SliverBar() {
  return SliverAppBar(
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
                  colors: [Colors.brown, Colors.brown.withOpacity(0.3)])),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: const [
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
                  child: const Text(
                    'ул. Академика Трубилина, 56  г.Краснодар',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
