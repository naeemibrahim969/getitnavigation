import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import 'package:stackedproj/ui/views/partial_builds/partial_builds_viewmodel.dart';

class PartialBuildsView extends StatelessWidget {

  const PartialBuildsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (context, model, child) {
        print('PartialBuildsView Rebuild');
        return Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _StringForm(),
              SizedBox(height: 5,),
              _TitleandValue()
            ],
          ),
        );
      },
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  const _StringForm({Key? key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(BuildContext context, PartialBuildsViewModel model) {
    print('_StringForm Rebuild');
    var text = useTextEditingController();
    return TextField(
      controller: text,
      onChanged: model.updateString,
    );
  }
}


class _TitleandValue extends ViewModelWidget<PartialBuildsViewModel> {
  const _TitleandValue({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    print('_TitleandValue Rebuild');
    return Text(model.title ?? "",style: TextStyle(fontSize: 30),);
  }
}
