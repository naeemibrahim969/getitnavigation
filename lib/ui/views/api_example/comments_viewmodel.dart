import 'package:stacked/stacked.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/datamodels/comment.dart';
import 'package:stackedproj/services/api_service.dart';

class CommentsViewModel extends FutureViewModel<List<Comment>> {
  final int postId;
  CommentsViewModel(this.postId);

  @override
  Future<List<Comment>> futureToRun() => getIt<ApiService>().getCommentsForPost(postId);
}
