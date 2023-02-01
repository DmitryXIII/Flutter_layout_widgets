import 'package:flutter/material.dart';

/// Контейнер [Row] располагает элементы горизонтально, в виде строки.
///
/// Параметры конструктора:
/// key: ключ виджета
/// mainAxisAlignment: задает выравнивание по горизонтали
/// mainAxisSize: задает пространство, занимаемое виджетом по горизонтали
/// crossAxisAlignment: задает выравнивание по вертикали
/// textDirection: определяет порядок расположения вложенных элементов по горизонтали
/// verticalDirection: определяет порядок расположения вложенных элементов по вертикали
/// textBaseline: устанавливает базовую линию для выравнивания элементов
/// children: набор вложенных элементов
///
/// по умолчанию элемент [Row] располагает все вложенные виджеты по центру по вертикали и слева по горизонтали.

getRow() => Container(
    padding: const EdgeInsets.all(30),
    color: Colors.teal,
    child: Row(
      textDirection: TextDirection.ltr,
      children: const <Widget>[
        Text('Tom', textDirection: TextDirection.ltr),
        Text('Bob', textDirection: TextDirection.ltr),
        Text('Sam', textDirection: TextDirection.ltr),
        Text('Alice', textDirection: TextDirection.ltr)
      ],
    ));

/// [MainAxisAlignment]
/// Параметр [mainAxisAlignment] конструктора позволяет настроить позиционирование
/// вложенных элементов по горизонтали. Он представляет тип [MainAxisAlignment] и может принимать следующие значения:
/// MainAxisAlignment.center: выравнивание по горизонтали по центру
/// MainAxisAlignment.end: выравнивание в конце горизонтальной оси. Где находится конец горизонтальной оси, зависит от другого параметра конструктора - textDirection. Если он равен TextDirection.ltr (текст слева направо), конец горизонтальной оси аналогичен правому краю, а при значении TextDirection.rtl конец аналогичен левому краю.
/// MainAxisAlignment.start: выравнивание в начале вертикальной оси. Аналогично MainAxisAlignment.end расположение "начала" горизонтальной оси зависит от значения параметра textDirection
/// MainAxisAlignment.spaceBetween: свободное пространство Row равным образом распределяется между вложенными виджетами
/// MainAxisAlignment.spaceEvenly: свободное пространство Row равным образом распределяется между вложенными виджетами, а также перед первым и после последнего виджета
/// MainAxisAlignment.spaceAround: свободное пространство Row равным образом распределяется между вложенными виджетами, кроме того, перед первым и после последнего виджета добавляются половинные отступы (половина от отступа между виджетами)

getRowWithSpaceEvenly() => Container(
    padding: const EdgeInsets.all(30),
    color: Colors.teal,
    child: Row(
      textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Text('Tom', textDirection: TextDirection.ltr),
        Text('Bob', textDirection: TextDirection.ltr),
        Text('Sam', textDirection: TextDirection.ltr),
        Text('Alice', textDirection: TextDirection.ltr)
      ],
    ));

/// [CrossAxisAlignment]
/// Параметр [crossAxisAlignment] в конструкторе [Row] указывает,
/// как вложенные виджеты будут располагаться по вертикали. Этот параметр
/// представляет класс [CrossAxisAlignment] и может принимать следующие значения:
/// CrossAxisAlignment.center: значение по умолчанию, располагает вложенные элементы по центру по вертикали. Это значение по умолчанию.
/// CrossAxisAlignment.end: располагает вложенные элементы в конце вертикальной оси. Это значение зависит от другого параметра конструктора [Row] - [verticalDirection]. Если он равен [VerticalDirection.down] (сверху вниз), то элементы выравниваются по нижнему краю. А если он равен [VerticalDirection.up] (снизу вверх), то элементы выравниваются по верхнему краю.
/// CrossAxisAlignment.start: располагает вложенные элементы в начале вертикальной оси. Его значение, как и [CrossAxisAlignment.end], зависит от парамета конструктора [verticalDirection]. Если он равен [VerticalDirection.down] (сверху вниз), то элементы выравниваются по верхнему краю. А если он равен [VerticalDirection.up] (снизу вверх), то элементы выравниваются по нижнему краю.
/// CrossAxisAlignment.stretch : растягивает вложенные элементы о всей ширине контейнера [Row].
/// CrossAxisAlignment.baseline: выравнивает вложенные элементы по базовой линии - пересекающей оси. Аналогично значению [CrossAxisAlignment(4)]. Требует установки параметра [textBaseline]

getRowWithCrossAxisAlignment() => Container(
    padding: const EdgeInsets.all(30),
    color: Colors.teal,
    child: Row(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Text('Tom', textDirection: TextDirection.ltr),
        Text('Bob', textDirection: TextDirection.ltr),
        Text('Sam', textDirection: TextDirection.ltr),
        Text('Alice', textDirection: TextDirection.ltr)
      ],
    ));
