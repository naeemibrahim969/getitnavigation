import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproj/ui/views/home/home_view_model.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context,model,child) => Scaffold(
          body: Center(child: Text(
            model.title
          ),),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.updateCounter,),
        ),
        viewModelBuilder: () => HomeViewModel()
    );
  }
}
