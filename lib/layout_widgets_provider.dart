import 'package:flutter/material.dart';
import 'package:layout_widgets/align/align.dart';
import 'package:layout_widgets/align/align_fractional_offset.dart';
import 'package:layout_widgets/center/center.dart';
import 'package:layout_widgets/constrained_box/constrained_box.dart';
import 'package:layout_widgets/padding/padding.dart';

import 'column/column.dart';
import 'container/container.dart';
import 'expanded/expanded.dart';
import 'row/row.dart';

class LayoutWidgetsProvider {
  static Widget align = getAlign();
  static Widget alignFractionalOffset = getAlignFractionalOffset();
  static Widget center = getCenter();
  static Widget padding = getPadding();
  static Widget constrainedBox = getConstrainedBox();
  static Widget constrainedBoxWithLargeText = getConstrainedBoxWithLargeText();
  static Widget container = getContainer();
  static Widget containerWithMargin = getContainerWithMargin();
  static Widget column = getColumn();
  static Widget columnWithCrossAxis = getColumnWithCrossAxis();
  static Widget columnWithVerticalDirection = getColumnWithVerticalDirection();
  static Widget columnWithMainAxisAlignment = getColumnWithMainAxisAlignment();
  static Widget columnWithSpaceBetween = getColumnWithSpaceBetween();
  static Widget columnWithSpaceEvenly = getColumnWithSpaceEvenly();
  static Widget columnWithSpaceAround = getColumnWithSpaceAround();
  static Widget row = getRow();
  static Widget rowWithSpaceEvenly = getRowWithSpaceEvenly();
  static Widget rowWithCrossAxisAlignment = getRowWithCrossAxisAlignment();
  static Widget rowWithoutExpanded = getRowWithoutExpanded();
  static Widget expandedRow = getExpandedRow();
  static Widget expandedRowWithFlex = getExpandedRowWithFlex();
  static Widget expandedColumnWithFlex = getExpandedColumnWithFlex();
}
