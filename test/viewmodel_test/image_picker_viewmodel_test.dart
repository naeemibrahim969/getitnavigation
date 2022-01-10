import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/services/media_service.dart';
import 'package:stackedproj/ui/views/image_picker/image_picker_viewmodel.dart';


class MediaServiceMock extends Mock implements MediaService{}

void main() {
  group('ImagePickerViewModel Tests -', () {
    test(
        'When selectImage is called with fromGallery true, should request image with fromGallery true',
        () async {
          var mediaService = MediaServiceMock();
          getIt.registerSingleton<MediaService>(mediaService);
      var model = ImagePickerViewModel();
      await model.selectImage(fromGallery: true);
      verify(mediaService.getImage(fromGallery: true));
    });
  });
}
