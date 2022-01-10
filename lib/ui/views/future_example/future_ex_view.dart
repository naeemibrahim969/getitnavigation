import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproj/ui/views/future_example/future_ex_viewmodel.dart';

class FutureExView extends StatelessWidget {
  const FutureExView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExViewModel>.reactive(
      builder: (context, model, child) {
        print('PartialBuildsView Rebuild');
        // return Scaffold(
        //   body: model.hasError
        //       ? Container( color: Colors.red, alignment: Alignment.center,
        //           child: Text('An Error occured while fetching from server'),
        //         )
        //       :
        //         Center(
        //           child: model.isBusy
        //           ? CircularProgressIndicator()
        //           : Text(model.data!)
        //         ),
        // );
        return Scaffold(
          body: Center(child: model.isBusy
                  ? CircularProgressIndicator()
                  : Column(mainAxisSize: MainAxisSize.min,
                        children:<Widget> [
                          Text(model.data ?? 'NO Data'),
                          _ErrorMessage()
                        ],
                    ),
                )
        );
      },
      viewModelBuilder: () => FutureExViewModel(),
    );
  }
}

class _ErrorMessage extends ViewModelWidget<FutureExViewModel> {
  const _ErrorMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, FutureExViewModel model) {
    return model.hasError
        ? Text(
            model.modelError.toString(),
            style: TextStyle(fontSize: 30),
          )
        : Container();
  }
}
