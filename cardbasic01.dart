import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(131, 182, 196, 0.822),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(130, 182, 196, 1),
          centerTitle: true,
          title: Text("Contact List"),
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: const Color.fromARGB(255, 179, 77, 77),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://media.licdn.com/dms/image/v2/D5603AQH_SxsLGUQ0NQ/profile-displayphoto-shrink_800_800/B56ZSC5XULHQAo-/0/1737362863828?e=1759363200&v=beta&t=oz6jpX582CsWXdbJsY7_vDhCRigASD59CzbQO87fmkk"),
                ),
                title: Text('Rashed khan'),
                subtitle: Text("01521431566"),
                trailing: Icon(Icons.call),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
