import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproj/ui/smart_widgets/double_increase_counter/double_increase_counter_viewmodel.dart';
import 'package:stackedproj/ui/smart_widgets/single_increase_counter/single_increase_counter_viewmodel.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  const DoubleIncreaseCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
        viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
        builder: (context,model,child) => GestureDetector(
          onTap: model.updateCounter,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Tap to double counter',textAlign: TextAlign.center,),
                Text(model.counter.toString())
              ],
            ),
          ),
        )
    );
  }
}