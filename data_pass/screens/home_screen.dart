import '../models/product_model.dart';
import '../screens/cart_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ProductModel> myProducts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart items : ${myProducts.length}'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 3 / 4,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        products[index].img.toString(),
                        height: 190,
                        width: double.infinity,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        products[index].name.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '\$${products[index].price?.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.green),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  bool bl = myProducts.any((element) =>
                                      element.id == products[index].id);
                                  if (!bl) {
                                    myProducts.add(products[index]);
                                  }
                                  // try {
                                  //   myProducts.firstWhere((test) =>
                                  //       test.id == products[index].id);
                                  // } catch (e) {
                                  //   myProducts.add(products[index]);
                                  // }
                                },
                              );
                            },
                            icon: const Icon(Icons.shopping_cart_outlined),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          MaterialButton(
            color: const Color.fromARGB(255, 133, 151, 167),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return CartScreen(
                      cartProducts: myProducts,
                    );
                  },
                ),
              );
            },
            child: const Text('Next Page >'),
          ),
        ],
      ),
    );
  }
}
