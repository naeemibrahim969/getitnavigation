
import 'package:injectable/injectable.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/datamodels/post.dart';
import 'package:stackedproj/services/api_service.dart';

@lazySingleton
class PostService{
  final _api = getIt<ApiService>();

  late List<Post> _posts;

  List<Post> get posts => _posts;

  bool get hasPosts => _posts !=null && _posts.isNotEmpty;

  Future<List<Post>> getPostForuser(int userId) async{
    _posts= await _api.getPosts(userId);
    return _posts;
  }

}