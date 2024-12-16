import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wrapped/features/home/domain/entities/contributor.dart';
import 'package:url_launcher/url_launcher.dart';

double barWidth = 48;
Color barColor = Color(0XFF6750A4);
BorderRadius barRadius = BorderRadius.circular(4);
final Uri _url = Uri.parse('https://github.com');

class ContributorsGraph extends StatefulWidget {
  const ContributorsGraph({super.key, required this.contributors});

  final List<Contributor> contributors;

  @override
  State<ContributorsGraph> createState() => _ContributorsGraphState();
}

class _ContributorsGraphState extends State<ContributorsGraph> {
  late List<BarChartGroupData> barGroups;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  void didUpdateWidget(covariant ContributorsGraph oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.contributors != widget.contributors) {
      getData();
    }
  }

  void getData() {
    barGroups = widget.contributors.map((contributor) {
      return BarChartGroupData(
        x: contributor.x,
        barRods: [
          BarChartRodData(
            toY: contributor.commits,
            color: barColor,
            width: barWidth,
            borderRadius: barRadius,
          ),
        ],
      );
    }).toList();
  }

  Future<void> launchGitHubUrl(String username) async {
    if (!await launchUrl(Uri.parse('https://github.com/$username'))) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final int numberOfBars = barGroups.length;
    final double spacing = 10;
    final double totalWidth = numberOfBars * (barWidth + spacing);

    if (widget.contributors.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.all(16),
      child: SizedBox(
        width: totalWidth,
        height: 300,
        child: BarChart(
          BarChartData(
            barGroups: barGroups,
            titlesData: FlTitlesData(
              show: true,
              topTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    final contributorIndex = widget.contributors
                        .indexWhere((c) => c.x == value.toInt());

                    if (contributorIndex != -1) {
                      return Text(
                        '${widget.contributors[contributorIndex].commits.toInt()}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }

                    return const SizedBox.shrink();
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: barWidth, // Adjusted to fit the image
                  getTitlesWidget: (double value, TitleMeta meta) {
                    final contributorIndex = widget.contributors
                        .indexWhere((c) => c.x == value.toInt());

                    // If a matching contributor is found and it's not excluded
                    if (contributorIndex != -1) {
                      return GestureDetector(
                        onTap: () {
                          launchGitHubUrl(
                              widget.contributors[contributorIndex].name);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.network(
                            widget.contributors[contributorIndex].imageUrl,
                            width: barWidth,
                            height: barWidth,
                          ),
                        ),
                      );
                    }

                    return const SizedBox.shrink();
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            gridData: FlGridData(
              show: false,
            ),
            borderData: FlBorderData(
              show: false,
            ),
            barTouchData: BarTouchData(
              enabled: false,
            ),
            alignment: BarChartAlignment.spaceBetween,
            groupsSpace: spacing,
          ),
        ),
      ),
    );
  }
}
