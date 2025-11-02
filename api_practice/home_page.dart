import 'dart:convert';
import 'package:api_basics/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> userdata = [];

  
  Future<List<UserModel>> getUserData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> mydata in data) {
        userdata.add(UserModel.fromJson(mydata));
      }
      return userdata;
    } else {
      throw Exception('Failed to load user data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Api Data"),
      ),
      body: FutureBuilder(
        future: getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            List<UserModel>? posts = snapshot.data;

            if (posts == null || posts.isEmpty) {
              return const Center(child: Text('No posts found.'));
            }

            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Card(
                    elevation: 4,
                    child: ListTile(
                      isThreeLine: true,
                      leading: CircleAvatar(
                        child: Text('${post.id}'),
                      ),

                      title: Text(
                        post.title ?? 'No Title',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),

                      subtitle: Text(
                        post.body ?? 'No Body',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis, 
                      ),
                      
                    ),
                  ),
                );
              },
            );
          }

          return const Center(child: Text('Tap to load data'));
        },
      ),
    );
  }
}
