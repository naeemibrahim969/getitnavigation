import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/services/media_service.dart';

class ImagePickerViewModel extends BaseViewModel{

  final _mediaService = getIt<MediaService>();

  XFile? _selectImage;
  bool get hasSelectedImage => _selectImage !=null ;
  XFile get selectedImage => _selectImage!;

  //Old it has issue while unit testing
  Future selectImages ({required bool fromGallery}) async {
    // Background Logic has hard dependency on ImagePicker
    _selectImage = await runBusyFuture(ImagePicker().pickImage(
        source: fromGallery ? ImageSource.gallery:ImageSource.camera));
  }

  Future selectImage ({required bool fromGallery}) async {
    _selectImage = await runBusyFuture(_mediaService.getImage(fromGallery: fromGallery));
    if(_selectImage!=null){
      print(_selectImage?.path.toString());
    }
  }

}