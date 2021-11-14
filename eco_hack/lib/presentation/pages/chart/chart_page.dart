/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  ChartPage(this.seriesList, {this.animate=true});

  /// Creates a [BarChart] with sample data and no transition.
  factory ChartPage.weekData() {
    return new ChartPage(
      _createWeekData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  factory ChartPage.monthData() {
    return new ChartPage(
      _createMonthData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  factory ChartPage.yearData() {
    return new ChartPage(
      _createYearData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createWeekData() {
    final data = [
      new OrdinalSales('Пн', 50),
      new OrdinalSales('Вт', 65),
      new OrdinalSales('Ср', 100),
      new OrdinalSales('Чт', 120),
      new OrdinalSales('Пт', 80),
      new OrdinalSales('Сб', 75),
      new OrdinalSales('Вс', 70),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

  static List<charts.Series<OrdinalSales, String>> _createMonthData() {
    final data = [
      new OrdinalSales('1', 50),
      new OrdinalSales('2', 65),
      new OrdinalSales('3', 100),
      new OrdinalSales('4', 120),
      new OrdinalSales('5', 80),
      new OrdinalSales('6', 75),
      new OrdinalSales('7', 70),
      new OrdinalSales('8', 50),
      new OrdinalSales('9', 65),
      new OrdinalSales('10', 70),
      new OrdinalSales('11', 80),
      new OrdinalSales('12', 96),
      new OrdinalSales('13', 75),
      new OrdinalSales('14', 70),
      new OrdinalSales('15', 50),
      new OrdinalSales('16', 55),
      new OrdinalSales('17', 70),
      new OrdinalSales('18', 90),
      new OrdinalSales('19', 80),
      new OrdinalSales('20', 75),
      new OrdinalSales('21', 70),
      new OrdinalSales('22', 50),
      new OrdinalSales('23', 65),
      new OrdinalSales('24', 55),
      new OrdinalSales('25', 65),
      new OrdinalSales('26', 70),
      new OrdinalSales('27', 66),
      new OrdinalSales('28', 60),
      new OrdinalSales('29', 57),
      new OrdinalSales('30', 50),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

  static List<charts.Series<OrdinalSales, String>> _createYearData() {
    final data = [
      new OrdinalSales('Январь', 50),
      new OrdinalSales('Февраль', 65),
      new OrdinalSales('Март', 120),
      new OrdinalSales('Апрель', 80),
      new OrdinalSales('Май', 75),
      new OrdinalSales('Июнь', 70),
      new OrdinalSales('Июль', 50),
      new OrdinalSales('Август', 65),
      new OrdinalSales('Сентябь', 80),
      new OrdinalSales('Октябрь', 75),
      new OrdinalSales('Ноябрь', 70),
      new OrdinalSales('Декабрь', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}