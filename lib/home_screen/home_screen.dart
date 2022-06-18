import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/messages.dart';
import 'components/components.dart';

String message = '''
[11/06/22, 11:17:47 AM] Hemish: Hey, hows you doing?
[11/06/22, 11:37:26 AM] Kaushik Asp: I’m doing great
[11/06/22, 11:37:29 AM] Kaushik Asp: How are you?
[11/06/22, 11:39:49 AM] Hemish: All good, btw, what will you be doing today?
[11/06/22, 11:39:53 AM] Hemish: Like when will you be free?
[11/06/22, 3:06:58 PM] Hemish: image omitted
[11/06/22, 3:07:09 PM] Hemish: And heres my address, that you asked earlier
[11/06/22, 3:07:24 PM] Hemish: Address line 1
Address line 2
City
State
[11/06/22, 3:07:43 PM] Hemish: You can also refer to the location for address
[11/06/22, 3:08:16 PM] Hemish: Vyara: https://foursquare.com/v/4f90f7e6e4b07f1dec450161
''';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Messages messages = Messages();

  @override
  void initState() {
    print(messages.formatMessages(message));

    super.initState();
  }

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
                  legend: Legend(
                    isVisible: true,
                    iconHeight: 20,
                    iconWidth: 20,
                    overflowMode: LegendItemOverflowMode.wrap,
                  ),
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
