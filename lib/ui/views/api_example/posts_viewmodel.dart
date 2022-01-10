import 'dart:convert';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/datamodels/post.dart';
import 'package:stackedproj/services/api_service.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  final int userId;
  PostsViewModel(this.userId);

  @override
  Future<List<Post>> futureToRun() => getIt<ApiService>().getPosts(userId);
}
