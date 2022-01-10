import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproj/ui/views/stream_example/stream_ex_viewmodel.dart';

class StreamExView extends StatelessWidget {
  const StreamExView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(child: Text(model.title)),
          floatingActionButton: FloatingActionButton(onPressed: model.swapSources,),
        );
      },
      viewModelBuilder: () => StreamExViewModel(),
    );
  }
}