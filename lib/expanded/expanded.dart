import 'package:flutter/material.dart';

/// Контейнер [Expanded] позволяет своему вложенному виджету [child] заполнить
/// доступное пространство (или его часть) других контейнеров - [Row] и [Column].
/// Параметр child представляет вложенный виджет, а параметр [flex] задает
/// флекс-фактор - величину, в соответствии с которой виджету [Expanded] будет
/// отводиться определенное пространство контейнера.
///
/// Сначала рассмотрим проблему, с которой мы можем столкнуться.
/// Допустим, в контейнере [Row] мы хотим вывести относительно длинный текст:

getRowWithoutExpanded() => Container(
    padding: const EdgeInsets.all(30),
    color: Colors.teal,
    child: Row(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.down,
      children: const <Widget>[
        Text(
            'Чрез несколько дней после отъезда Анатоля, Пьер получил записку от князя Андрея, извещавшего '
            'его о своем приезде и просившего Пьера заехать к нему.',
            textDirection: TextDirection.ltr)
      ],
    ));

/// Поскольку ширина контейнера [Row] недостаточна, чтобы вместить строку текста,
/// то мы увидим желто-черную полоску и сообщение о превышении размера
/// на столько пикселей. Тем не менее все остальное пространство [Row] под
/// строкой текста у нас пусто. И было бы неплохо, чтобы вместо этой полоски мы
/// видели бы перенос текста ниже, чтобы он заполнял все пространство [Row].
/// Для этого воспользуемся виджетом [Expanded]:

getExpandedRow() => Container(
    padding: const EdgeInsets.all(30),
    color: Colors.teal,
    child: Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: const <Widget>[
          Expanded(
              child: Text(
                  'Чрез несколько дней после отъезда Анатоля, Пьер получил записку от князя Андрея, извещавшего '
                  'его о своем приезде и просившего Пьера заехать к нему.',
                  textDirection: TextDirection.ltr))
        ]));

/// Флекс-фактор
///
/// Флекс-фактор указывает на часть пространства контейнера,
/// которая буде отдаваться виджету [Expanded]. При вычислении данной части
/// пространства флекс-фактор данного виджета Expanded делиться на сумму
/// флекс-факторов всех элементов. Полученное значение умножается на общее
/// доступное простанство контейнера.
/// Если [flex] явным образом не указан, то по умолчанию он равен 1.
///
/// Например: у нас три виджета [Expanded], каждый из которых содержит
/// виджет [Container] с определенной цветовой окраской.
/// Первый виджет [Expanded] имеет флекс-фактор 3, второй - 1, третий - 2.
/// Сумма всех флекс-факторов равна 3 + 1 + 2 = 6.
/// Поэтому первый виджет [Expanded] получить 3/6 или 1/2 пространства [Row],
/// второй виджет [Expanded] - 1/6 пространства [Row],
/// а третий виджет [Expanded] - 2/6 или 1/3 пространства [Row].

getExpandedRowWithFlex() => Container(
    padding: const EdgeInsets.only(top: 25),
    color: Colors.white,
    child: Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(color: Colors.teal),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.red),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.blue),
          )
        ]));

/// Флекс-фактор и [Column]

getExpandedColumnWithFlex() => Container(
    padding: const EdgeInsets.only(top: 25),
    color: Colors.white,
    child: Column(children: <Widget>[
      Expanded(
        flex: 2,
        child: Container(color: Colors.teal),
      ),
      Expanded(
        flex: 1,
        child: Container(color: Colors.red),
      ),
      Expanded(
        flex: 2,
        child: Container(color: Colors.blue),
      )
    ]));
