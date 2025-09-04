import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          brightness: Brightness.light,
          surface: const Color.fromARGB(52, 168, 129, 153),
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
          ],
          centerTitle: true,
          title: Text('Order Details'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Mashroom Pizza",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.timelapse),
                        Text('15 Mins'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.light),
                        Text('320 kal'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.reviews_outlined),
                        Text('4 (1.7k Reviews)'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 4,
                  color: const Color.fromARGB(50, 122, 111, 111),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$17.99',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(109, 192, 183, 189),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.remove),
                            Text('2'),
                            Icon(Icons.add),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                      'Pizza is a popular Italian dish consisting of a flattened \n bread crust topped with sauce,Pizza is a popular Italian dish consisting of a flattened cheese, and various other ingredients,\n then baked in a hot oven. Originating from the city of Naples,\n its roots extend to ancient flatbreads, with the modern version\n emerging in the 18th or 19th century.\n The classic Margherita pizza, with tomato, mozzarella, and basil, was named after Queen Margherita in 1889. Pizza is a popular Italian dish consisting of a flattened \n bread crust topped with sauce, cheese, and various other ingredients,\n then baked in a hot oven. Originating from the city of Naples,\n its roots extend to ancient flatbreads, with the modern version\n emerging in the 18th or 19th century.\n The classic Margherita pizza, with tomato, mozzarella, and basil, was named after Queen Margherita in 1889.'),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 1,
                          minimumSize: Size.fromHeight(50),
                          backgroundColor: Colors.black54,
                          foregroundColor: Colors.white),
                      child: Text("Add To Cart"),
                    ),
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
