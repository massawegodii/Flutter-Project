import 'package:ecommerce_app/common/widget/appbar.dart';
import 'package:flutter/material.dart';

import '../../../../common/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView (
        child: Column(
          children: [
            //Header
            TPrimaryHeaderContainer(
              child: Column(
              children: [
                TAppBar()
              ],
            ),) 
          ],
        ),
      ),
    );
  }
}

