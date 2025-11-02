import 'package:data_pass/models/product_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.cartProducts});
  final List<ProductModel> cartProducts;

  @override
  State<CartScreen> createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  double get getTotal => widget.cartProducts
          .map((toElement) => toElement.price!.toDouble() * toElement.quantity)
          .reduce(
        (v, e) {
          return v + e;
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Added Items : ${widget.cartProducts.length}'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: widget.cartProducts.length,
                itemBuilder: (context, idx) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        widget.cartProducts[idx].img.toString(),
                      ),
                      title: Text(widget.cartProducts[idx].name.toString()),
                      subtitle: Text(
                        widget.cartProducts[idx].description!.toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Text(
                              '\$${widget.cartProducts[idx].price}',
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    widget.cartProducts[idx].quantity--;
                                  });
                                },
                                icon: const Icon(Icons.remove),
                              ),
                              Text(
                                  widget.cartProducts[idx].quantity.toString()),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    widget.cartProducts[idx].quantity++;
                                  });
                                },
                                icon: const Icon(Icons.add),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.cartProducts.removeAt(idx);
                                    });
                                  },
                                  icon: const Icon(Icons.delete))
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Text('Total value is \$$getTotal'),
        ],
      ),
    );
  }
}
