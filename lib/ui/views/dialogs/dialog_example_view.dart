import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproj/ui/views/dialogs/dialog_example_viewmodel.dart';


class DialogExampleView extends StatelessWidget {
  const DialogExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DialogExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                child: Text('Show Basic Dialog'),
                onPressed: () => model.showBasicDialog(),
              ),
              SizedBox(height: 25),
              OutlinedButton(
                child: Text('Show Confirmation Dialog'),
                onPressed: () => model.showConfirmationDialog(),
              ),
              Text('Confirmation result: ${model.confirmationResult}'),
              SizedBox(height: 25),
              OutlinedButton(
                child: Text('Show Custom Dialog'),
                onPressed: () => model.showCustomDialog(),
              ),
              Text('Custom Dialog result: ${model.customDialogResult}'),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DialogExampleViewModel(),
    );
  }
}