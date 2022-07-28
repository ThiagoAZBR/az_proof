import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TableColumn extends StatelessWidget {
  final String _title;
  final List<String> _dataList;
  final Color _titleBackground;
  final Color _dataListBackground;
  const TableColumn({
    Key? key,
    required String title,
    required List<String> dataList,
    required Color titleBackground,
    required Color dataListBackground,
  })  : _title = title,
        _dataList = dataList,
        _titleBackground = titleBackground,
        _dataListBackground = dataListBackground,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: _titleBackground,
          child: Text(_title),
        ),
        for (var i = 0; i < 3; i++)
          Container(
            color: _dataListBackground,
            child: Text(
              _dataList[i],
            ),
          ),
      ],
    );
  }
}
