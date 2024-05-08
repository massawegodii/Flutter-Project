import 'package:flutter/material.dart';

import '../containers/primary_header_container.dart';

class TCurveEdgeWidget extends StatelessWidget {
  const TCurveEdgeWidget({super.key, required Container child});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [TPrimaryHeaderContainer(child: Column(
            children: [

            ],
          ),)],
        ),
      ),
    );
  }
}

