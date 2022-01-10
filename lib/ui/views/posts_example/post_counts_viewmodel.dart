
import 'package:stacked/stacked.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/services/post_service.dart';

class PostsCountViewModel extends BaseViewModel{
  int get postsCount => getIt<PostService>().posts.length;
}