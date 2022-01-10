import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproj/ui/views/startup/startup_view_model.dart';

class StartupView extends StatelessWidget {

  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
        builder: (context,model,child) => Scaffold(
          body: Center(child: Text(
            'Startup View'
          ),),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.navigate_next),
            onPressed: model.navigateToHome,),
        ),
        viewModelBuilder: () => StartupViewModel()
    );
  }
}
