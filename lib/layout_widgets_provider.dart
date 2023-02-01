import 'package:flutter/material.dart';
import 'package:layout_widgets/align/align.dart';
import 'package:layout_widgets/align/align_fractional_offset.dart';
import 'package:layout_widgets/center/center.dart';

class LayoutWidgetsProvider {
  static Widget align = getAlign();
  static Widget alignFractionalOffset = getAlignFractionalOffset();
  static Widget center = getCenter();
}
