import 'package:basicflutter/body.dart';
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
        body: Column(
          children: [
            ListTile(
              title: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Center(
                child: Text(
                  "Mashroom Pizza",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ListTile(
                    leading: Icon(Icons.timelapse),
                    title: Text(
                      "15 Mins",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: Icon(Icons.local_fire_department),
                    title: Text(
                      "320 kal",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    dense: true,
                    leading: Icon(Icons.reviews),
                    title: Text("4 (1.7k Reviews)",
                        style: TextStyle(fontSize: 14)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.blueGrey,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ListTile(
                  title: Text(
                      textAlign: TextAlign.start,
                      'Pizza is a popular Italian dish consisting of a flattened \n bread crust topped with sauce,Pizza is a popular Italian dish consisting of a flattened cheese, and various other ingredients,\n then baked in a hot oven. Originating from the city of Naples,\n its roots extend to ancient flatbreads, with the modern version\n emerging in the 18th or 19th century.\n The classic Margherita pizza, with tomato, mozzarella, and basil, was named after Queen Margherita in 1889. Pizza is a popular Italian dish consisting of a flattened \n bread crust topped with sauce, cheese, and various other ingredients,\n then baked in a hot oven. Originating from the city of Naples,\n its roots extend to ancient flatbreads, with the modern version\n emerging in the 18th or 19th century.\n The classic Margherita pizza, with tomato, mozzarella, and basil, was named after Queen Margherita in 1889.'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
          ],
        ),
      ),
    ),
  );
}
