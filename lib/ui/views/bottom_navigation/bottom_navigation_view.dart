import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproj/ui/views/bottom_navigation/bottom_navigation_viewmodel.dart';
import 'package:stackedproj/ui/views/home/home_view.dart';
import 'package:stackedproj/ui/views/posts_example/posts_view.dart';
import 'package:stackedproj/ui/views/todo/todo_view.dart';


class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavigationViewModel>.reactive(
        builder: (context,model,child) => Scaffold(
          body: PageTransitionSwitcher(
              duration: const Duration(milliseconds: 300),
              reverse: model.reverse,
              transitionBuilder: transitionBuilder,
              child: getViewForIndex(model.currentIndex)
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[800],
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.art_track),
                label: 'Posts',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Todos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
          ),
        ),
        viewModelBuilder: () => BottomNavigationViewModel()
    );
  }

  Widget getViewForIndex(int index){
    switch(index){
      case 0:
        return PostsView();
      case 1:
        return TodoView();
      case 2:
        return HomeView();
      default:
        return PostsView();
    }
  }

  Widget defaultTransitionBuilder(Widget child, Animation<double> animation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  Widget transitionBuilder(Widget child, Animation<double> animation,Animation<double> secondaryAnimation) {
    return SharedAxisTransition(
      child: child,
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: SharedAxisTransitionType.horizontal,
    );
  }
}
