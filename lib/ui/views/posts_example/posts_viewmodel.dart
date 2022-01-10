import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/datamodels/post.dart';
import 'package:stackedproj/services/api_service.dart';

@singleton
class PostsViewModel extends FutureViewModel<List<Post>> {

  final _api = getIt<ApiService>();


  @override
  Future<List<Post>> futureToRun() {
    print('Fetch posts');
    return _api.getPosts(3);
  }
  
}
