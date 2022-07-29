import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}