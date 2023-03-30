import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/posts_json_api.dart';

import 'package:flutter_cubit/posts_cubits.dart';



class PostsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Posts From jsonAPi'),
        centerTitle: true,
      ),
      body: BlocBuilder<PostsCubit, List<Post>>(
        builder: (context, posts) {
          if (posts.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: posts.length,
              itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text("${posts[index].title}"),
                subtitle: Text("${posts[index].body}"),
                trailing: Text("${posts[index].userId}"),
                leading: Text("${posts[index].id}"),
              ),
            );
          });
        },
      ),
    );
  }
}