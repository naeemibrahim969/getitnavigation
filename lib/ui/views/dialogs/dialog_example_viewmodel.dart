
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/utils/dialog_type.dart';

class DialogExampleViewModel extends BaseViewModel {

  final _dialogService = getIt<DialogService>();

  bool? _confirmationResult = false;
  bool? get confirmationResult => _confirmationResult;

  DialogResponse? _dialogResponse = null;
  DialogResponse? get customDialogResult => _dialogResponse;

  
  Future showBasicDialog() async {
    var response = await _dialogService.showDialog(
      title: 'The Basic Dialog',
      description:
      'This is the description for the dialog that shows up under the title',
      buttonTitle: 'Main title',
      cancelTitle: 'Cancel',
      barrierDismissible: false
      // dialogPlatform: DialogPlatform.Cupertino,
    );

    print('DialogResponse: ${response?.confirmed}');

  }

  showConfirmationDialog() async {

    var response = await _dialogService.showConfirmationDialog(
      title: 'The Confirmation Dialog',
      description: 'Do you want to update Confiramtion state in the UI?',
      confirmationTitle: 'Yes',
      cancelTitle: 'No',
    );

    _confirmationResult = response?.confirmed;

    notifyListeners();
  }

  Future showCustomDialog() async{

    var response = await _dialogService.showCustomDialog(
      title: 'Please enter your password',
      mainButtonTitle: 'Submit',
      variant: DialogType.form,
    );

    // var response = await _dialogService.showCustomDialog(
    //   title: 'Custom Dialog',
    //   description: 'Custom Dialog Description for testing',
    //   mainButtonTitle: 'Confirm',
    //   variant: DialogType.basic
    // );

    print('Custom response: ${response?.data}');

    _dialogResponse = response;

    notifyListeners();
  }

}