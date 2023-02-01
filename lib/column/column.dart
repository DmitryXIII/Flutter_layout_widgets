import 'package:flutter/material.dart';

/// Контейнер [Column] располагает элементы вертикально, в виде столбика.
///
/// Параметры конструктора:
/// key: ключ виджета
/// mainAxisAlignment: задает выравнивание по вертикали
/// mainAxisSize: задает пространство, занимаемое виджетом по основной оси
/// crossAxisAlignment: задает выравнивание по горизонтали
/// textDirection: определяет порядок расположения вложенных элементов по горизонтали
/// verticalDirection: определяет порядок расположения вложенных элементов по вертикали
/// textBaseline: устанавливает базовую линию для выравнивания элементов
/// children: набор вложенных элементов.
///
/// Стоит учитывать, что виджет Column не поддерживает прокрутку.
/// Поэтому если необходимо обеспечить доступ к виджетам, которые выходят за
/// пределы видимо пространства, то вместо Column лучше использовать другой контейнер, например, [ListView].

getColumn() => Container(
    padding: const EdgeInsets.all(30),
    color: Colors.teal,
    child: Column(
      children: const <Widget>[
        Text('Вот мысль, которой весь я предан,',
            textDirection: TextDirection.ltr),
        Text('Итог всего, что ум скопил.', textDirection: TextDirection.ltr),
        Text('Лишь тот, кем бой за жизнь изведан,',
            textDirection: TextDirection.ltr),
        Text('Жизнь и свободу заслужил.', textDirection: TextDirection.ltr)
      ],
    ));

/// [CrossAxisAlignment]
/// Параметр [crossAxisAlignment] в конструкторе [Column] указывает,
/// как вложенные виджеты будут располагаться по пересекающей оси - в данном
/// случае по горизонтали. Этот параметр может принимать следующие значения:
/// CrossAxisAlignment.center: значение по умолчанию, располагает вложенные элементы по центру по горизонтали. Аналогично значению CrossAxisAlignment(2).
/// CrossAxisAlignment.end: располагает вложенные элементы в конце горизонтальной оси. В Column, если другой параметр конструктора textDirection равен TextDirection.ltr (то есть текст слева направо), то элементы выравниваются по правому краю. А если он равен TextDirection.rtl (то есть текст справа налево), то элементы выравниваются по левому краю. Аналогично значению CrossAxisAlignment(1).
/// CrossAxisAlignment.start: располагает вложенные элементы в начале пересекающей оси. В Column, если другой параметр конструктора textDirection равен TextDirection.ltr (то есть текст слева направо), то элементы выравниваются по левому краю. Аналогично значению CrossAxisAlignment(0).
/// CrossAxisAlignment.stretch: растягивает вложенные элементы по всей ширине контейнера Column. Аналогично значению CrossAxisAlignment(3).
/// CrossAxisAlignment.baseline: выравнивает вложенные элементы по базовой линии - пересекающей оси. Аналогично значению CrossAxisAlignment(4). Для контейнера Column фактически аналогично значению CrossAxisAlignment.start. Требует установки параметра textBaseline

getColumnWithCrossAxis() => Container(
    padding: const EdgeInsets.all(30),
    color: Colors.teal,
    child: Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text('Вот мысль, которой весь я предан,',
            textDirection: TextDirection.ltr),
        Text('Итог всего, что ум скопил.', textDirection: TextDirection.ltr),
        Text('Лишь тот, кем бой за жизнь изведан,',
            textDirection: TextDirection.ltr),
        Text('Жизнь и свободу заслужил.', textDirection: TextDirection.ltr)
      ],
    ));

/// [VerticalDirection]
/// Параметр [verticalDirection] в конструкторе [Column] указывает на направление
/// расположения элементов по вертикали: сверху вниз или снизу вверх.
/// Этот параметр представляет класс [VerticalDirection], который определяет следующие константы:
/// VerticalDirection.down: расположение сверху вниз
/// VerticalDirection.up: расположение снизу вверх

getColumnWithVerticalDirection() => Container(
    padding: const EdgeInsets.all(30),
    color: Colors.teal,
    child: Column(
      textDirection: TextDirection.ltr,
      verticalDirection: VerticalDirection.up,
      children: const <Widget>[
        Text('Вот мысль, которой весь я предан,',
            textDirection: TextDirection.ltr),
        Text('Итог всего, что ум скопил.', textDirection: TextDirection.ltr),
        Text('Лишь тот, кем бой за жизнь изведан,',
            textDirection: TextDirection.ltr),
        Text('Жизнь и свободу заслужил.', textDirection: TextDirection.ltr)
      ],
    ));

/// [MainAxisAlignment]
/// Еще один параметр конструктора [Column] - [mainAxisAlignment] представляет
/// класс [MainAxisAlignment] и управляет выравниванием по вертикали.
/// Он может принимать следующие значения:
/// MainAxisAlignment.center: выравнивание по вертикали по центру
/// MainAxisAlignment.end: выравнивание в конце вертикальной оси. Где находится конец вертикальной оси, зависит от другого параметра конструктора - verticalDirection. Если он равен [VerticalDirection.down] (расположение виджетов сверху вниз), конец вертикальной оси аналогичен низу, а при значении VerticalDirection.up - находится вверху вертикальной оси.
/// MainAxisAlignment.start: выравнивание в начале вертикальной оси. Аналогично MainAxisAlignment.end расположение "начала" вертикальной оси зависит от значения параметра [verticalDirection]
/// MainAxisAlignment.spaceBetween: свободное пространство [Column] равным образом распределяется между вложенными виджетами
/// MainAxisAlignment.spaceEvenly: свободное пространство [Column] равным образом распределяется между вложенными виджетами, а также перед первым и после последнего виджета
/// MainAxisAlignment.spaceAround: свободное пространство [Column] равным образом распределяется между вложенными виджетами, кроме того, перед первым и после последнего виджета добавляются половинные отступы (половина от отступа между виджетами)

getColumnWithMainAxisAlignment() => Container(
    padding: const EdgeInsets.only(top: 30, left: 10),
    color: Colors.teal,
    child: Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Вот мысль, которой весь я предан,',
            textDirection: TextDirection.ltr),
        Text('Итог всего, что ум скопил.', textDirection: TextDirection.ltr),
        Text('Лишь тот, кем бой за жизнь изведан,',
            textDirection: TextDirection.ltr),
        Text('Жизнь и свободу заслужил.', textDirection: TextDirection.ltr)
      ],
    ));

getColumnWithSpaceBetween() => Container(
    padding: const EdgeInsets.only(top: 30, left: 10),
    color: Colors.teal,
    child: Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const <Widget>[
        Text('Вот мысль, которой весь я предан,',
            textDirection: TextDirection.ltr),
        Text('Итог всего, что ум скопил.', textDirection: TextDirection.ltr),
        Text('Лишь тот, кем бой за жизнь изведан,',
            textDirection: TextDirection.ltr),
        Text('Жизнь и свободу заслужил.', textDirection: TextDirection.ltr)
      ],
    ));

getColumnWithSpaceEvenly() => Container(
    padding: const EdgeInsets.only(top: 30, left: 10),
    color: Colors.teal,
    child: Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Text('Вот мысль, которой весь я предан,',
            textDirection: TextDirection.ltr),
        Text('Итог всего, что ум скопил.', textDirection: TextDirection.ltr),
        Text('Лишь тот, кем бой за жизнь изведан,',
            textDirection: TextDirection.ltr),
        Text('Жизнь и свободу заслужил.', textDirection: TextDirection.ltr)
      ],
    ));

getColumnWithSpaceAround() => Container(
    padding: const EdgeInsets.only(top: 30, left: 10),
    color: Colors.teal,
    child: Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const <Widget>[
        Text('Вот мысль, которой весь я предан,',
            textDirection: TextDirection.ltr),
        Text('Итог всего, что ум скопил.', textDirection: TextDirection.ltr),
        Text('Лишь тот, кем бой за жизнь изведан,',
            textDirection: TextDirection.ltr),
        Text('Жизнь и свободу заслужил.', textDirection: TextDirection.ltr)
      ],
    ));
