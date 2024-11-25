import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 168, 222, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 51, 130, 241),
        title: const Text('BI Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sales Overview',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: true),
                  borderData: FlBorderData(show: true),
                  titlesData: const FlTitlesData(show: true),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 1000),
                        const FlSpot(1, 3000),
                        const FlSpot(2, 2000),
                        const FlSpot(3, 4000),
                        const FlSpot(4, 3500),
                      ],
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 3,
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Sales by Category',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: PieChart(
                      PieChartData(
                        sections: [
                          PieChartSectionData(
                            color: Colors.blue,
                            value: 40,
                            title: '40%',
                          ),
                          PieChartSectionData(
                            color: Colors.green,
                            value: 30,
                            title: '30%',
                          ),
                          PieChartSectionData(
                            color: Colors.orange,
                            value: 20,
                            title: '20%',
                          ),
                          PieChartSectionData(
                            color: Colors.red,
                            value: 10,
                            title: '10%',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
