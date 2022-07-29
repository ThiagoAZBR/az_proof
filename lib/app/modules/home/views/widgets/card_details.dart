import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardDetails extends StatelessWidget {
  final IconData _icon;
  final String _title;
  final String _body;
  const CardDetails({
    Key? key,
    required IconData icon,
    required String title,
    required String body,
  })  : _icon = icon,
        _title = title,
        _body = body,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 174,),
      child: Card(
        child: Column(
          children: <Widget>[
            Icon(_icon),
            Text(_title),
            Text(_body),
          ],
        ),
      ),
    );
  }
}
