import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MediaService{


  Future<XFile?> getImage({required bool fromGallery}) {
    return ImagePicker().pickImage(
        source: fromGallery ? ImageSource.gallery : ImageSource.camera);
  }

}