import 'package:flutter/material.dart';
import 'package:stackedproj/ui/smart_widgets/double_increase_counter/double_increase_counter.dart';
import 'package:stackedproj/ui/smart_widgets/single_increase_counter/single_increase_counter.dart';


class ReactiveView extends StatelessWidget {
  const ReactiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            SingleIncreaseCounter(),
            SizedBox(width: 30,),
            DoubleIncreaseCounter()
          ],
        ),
      ),
    );
  }
}
