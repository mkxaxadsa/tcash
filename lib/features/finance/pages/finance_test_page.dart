import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../money/models/money.dart';
import '../widgets/bar_chart_card.dart';

class PageSet extends StatelessWidget {
  final String data;

  const PageSet({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(data)),
      ),
    );
  }
}

class FinanceTestPage extends StatefulWidget {
  const FinanceTestPage({super.key});

  @override
  State<FinanceTestPage> createState() => _FinanceTestPageState();
}

class _FinanceTestPageState extends State<FinanceTestPage> {
  List<Money> mymoneys = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 10),
                BarChartCard(
                  title: 'Mo',
                  profitHeight: 40,
                  lossHeight: 50,
                ),
                BarChartCard(
                  title: 'Tu',
                  profitHeight: 50,
                  lossHeight: 60,
                ),
                // BarChartCard(
                //   title: 'We',
                //   profitHeight: getHeight(w1Loss, w1Profit),
                //   lossHeight: getHeight(w1Profit, w1Loss),
                // ),
                // BarChartCard(
                //   title: 'Th',
                //   profitHeight: getHeight(w1Profit, w1Loss),
                //   lossHeight: getHeight(w1Loss, w1Profit),
                // ),
                // BarChartCard(
                //   title: 'Fr',
                //   profitHeight: getHeight(w1Profit, w1Loss),
                //   lossHeight: getHeight(w1Loss, w1Profit),
                // ),
                // BarChartCard(
                //   title: 'Sa',
                //   profitHeight: getHeight(w1Profit, w1Loss),
                //   lossHeight: getHeight(w1Loss, w1Profit),
                // ),
                // BarChartCard(
                //   title: 'Su',
                //   profitHeight: getHeight(w1Profit, w1Loss),
                //   lossHeight: getHeight(w1Loss, w1Profit),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
