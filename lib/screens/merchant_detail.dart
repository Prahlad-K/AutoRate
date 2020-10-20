import 'package:flutter/material.dart';
/*
to install the below two packages follow the instructions on
Swiper: https://pub.dev/packages/flutter_swiper/install
Charts: https://pub.dev/packages/charts_flutter/install
 */
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:merchantname/screens/merchant_list.dart';

////main function to run the app (Home)
//void main() {
//  runApp(MaterialApp(
//    home: Home(),
//  )); //creates a blank app
//}


// making our own widget class, state of the widget cannot change over time
class MerchantDetail extends StatelessWidget {

  //placing the charts as a list so that it can be used in the horizontal scroll bar
  final lineCharts = [
    SimpleLineChart(_createSampleData1(), animate:true),
    SimpleLineChart(_createSampleData2(), animate: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //merchant name
        title: Text('Starbucks', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: CustomScrollView(
        //sliver app bar used so that when user is scrolling up the description panel gets hidden
          slivers: <Widget>[
            SliverAppBar(

              expandedHeight: 300.0,
              pinned: true,
              backgroundColor: Colors.white,
              flexibleSpace:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      // exact location of merchant
                      child: Text("Location: Street 9, Downtown New York", textAlign: TextAlign.left, style: TextStyle(fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      // ratings
                      child: Text("Absolute Popularity Rating : 8.5 ", textAlign: TextAlign.left, style: TextStyle(fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      // ratings
                      child: Text("Relative Popularity Rating : 8.5 ", textAlign: TextAlign.left, style: TextStyle(fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      // ratings
                      child: Text("Distance Factor Rating : 8.5 ", textAlign: TextAlign.left, style: TextStyle(fontSize: 16),),
                    ),
                  ]
              ),
            ),

            SliverFillRemaining(
              //Swiper package used so that when swiping it snaps to next chart
                child: new Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return lineCharts[index];
                  },

                  itemCount: lineCharts.length,
                  // automatically swipes to next chart without user
                  autoplay: false,
                  pagination: new SwiperPagination(),
                  control: new SwiperControl(),
                )
            )

          ]
      ),
    );
  }
}


class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: new charts.LineChart(seriesList, animate: animate),
    );
  }

/// Create one series with sample hard coded data.

}

//hard coded data for now
List<charts.Series<LinearSales, int>> _createSampleData1() {
  final data = [
    new LinearSales(0, 5),
    new LinearSales(1, 25),
    new LinearSales(2, 100),
    new LinearSales(3, 75),
  ];

  return [
    new charts.Series<LinearSales, int>(
      id: 'Sales',
      colorFn: (_, __) => charts.MaterialPalette.indigo.shadeDefault,
      domainFn: (LinearSales sales, _) => sales.day,
      measureFn: (LinearSales sales, _) => sales.sales,
      data: data,
    )
  ];
}

//hard coded data for now
List<charts.Series<LinearSales, int>> _createSampleData2() {
  final data = [
    new LinearSales(0, 90),
    new LinearSales(1, 40),
    new LinearSales(2, 5),
    new LinearSales(3, 75),
  ];

  return [
    new charts.Series<LinearSales, int>(
      id: 'Sales',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (LinearSales sales, _) => sales.day,
      measureFn: (LinearSales sales, _) => sales.sales,
      data: data,
    )
  ];
}


/// Sample linear data type.
class LinearSales {
  final int day;
  final int sales;

  LinearSales(this.day, this.sales);
}