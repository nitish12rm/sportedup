import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sportedup/common/widgets/custom_shape/curved_edges/curved_edges.dart';
import 'package:sportedup/utils/constants/colors.dart';

import '../../../../common/widgets/custom_shape/container/circular_container.dart';
import '../../../../common/widgets/custom_shape/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///So the thing is, we have to add a custom app for that that may include Apple with some padding or a bar, with some curved edges or Apple with some images and what not, but to do that, we'll have to wrap it with a container right,
      ///But in the above method of the scaffold, we can't really add any container or any padding or any type of state for those Status widgets are you can contact the app for so to do that will have to make an custom app for that will be extending with the state, full budgets and implementing the preferred sized widget
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(child: Container(),)
          ],
        ),
      ),
    );
  }
}

