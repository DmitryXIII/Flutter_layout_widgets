import 'package:flutter/material.dart';
import 'package:layout_widgets/layout_widgets_provider.dart';

/// Для просмотра примеров необходимо выбрать в [_LayoutWidgetsExamples.build]
/// виждет [LayoutWidgetsProvider]

void main() {
  runApp(const _LayoutWidgetsExamples());
}

class _LayoutWidgetsExamples extends StatelessWidget {
  const _LayoutWidgetsExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutWidgetsProvider.expandedColumnWithFlex;
  }
}
