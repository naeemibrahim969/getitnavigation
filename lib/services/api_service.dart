import 'package:injectable/injectable.dart';
import 'package:stackedproj/datamodels/comment.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:stackedproj/datamodels/post.dart';
import 'package:stackedproj/datamodels/user.dart';

@lazySingleton
class ApiService{

  static const endPoint = 'https://jsonplaceholder.typicode.com';
  var client = new http.Client();

  Future<List<Comment>> getCommentsForPost(int postId) async{
    var comments = <Comment>[];
    var response = await client.get(Uri.parse("$endPoint/comments?postId=$postId"));
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var comment in parsed) {
      comments.add(Comment.fromJson(comment));
    }
    return comments;
  }

  Future<List<Post>> getPosts(int userId) async {
    var posts = <Post>[];
    var response = await client.get(Uri.parse('$endPoint/posts?userId=$userId'));
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var post in parsed) {
      posts.add(Post.fromJson(post));
    }

    return posts;
  }

  Future<User> getUserProfile(int userId) async {
    var response =
    await client.get(Uri.parse('$endPoint/users/$userId'));
    return User.fromJson(json.decode(response.body));
  }

}