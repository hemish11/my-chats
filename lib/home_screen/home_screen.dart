import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              'MyChats',
              style: GoogleFonts.manrope(
                fontSize: 34,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF2A3C44),
              ),
            ),
            const SizedBox(height: 60),
            BaseCard(
              children: [
                Text(
                  'Number of messages',
                  style: GoogleFonts.manrope(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2A3C44),
                  ),
                ),
                const SizedBox(height: 20),
                const MessagesCount(
                  name: 'Hemish',
                  value: 0.7,
                  color: Color(0xFFFFC542),
                  count: 24,
                ),
                const SizedBox(height: 20),
                const MessagesCount(
                  name: 'Kaushik',
                  value: 0.8,
                  color: Color(0xFFFFC542),
                  count: 32,
                ),
              ],
            ),
            const SizedBox(height: 20),
            BaseCard(
              children: [
                Text(
                  'Avg. Response time',
                  style: GoogleFonts.manrope(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2A3C44),
                  ),
                ),
                const SizedBox(height: 20),
                SfCircularChart(
                  series: <CircularSeries>[
                    RadialBarSeries(
                      dataSource: [12, 24],
                      xValueMapper: (data, _) => data,
                      yValueMapper: (data, _) => data,
                      enableTooltip: true,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            BaseCard(
              children: [
                Text(
                  'Number of messages',
                  style: GoogleFonts.manrope(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2A3C44),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '5',
                      style: GoogleFonts.manrope(
                        fontSize: 38,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF3DD598),
                      ),
                    ),
                    Image.asset('images/duck.png'),
                  ],
                )
              ],
            ),
            const Spacer(),
            Image.asset('images/duck_family.png'),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
