import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ConsoWidget extends StatefulWidget {
  const ConsoWidget({super.key});

  @override
  State<ConsoWidget> createState() => _ConsoWidgetState();
}

class _ConsoWidgetState extends State<ConsoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 20),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 245,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 8),
                  child: Text(
                    'Usage journalier',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xFF00456B),
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 6, 6, 0),
                  child: Container(
                    width: 360,
                    height: 190,
                    child: LineChart(LineChartData(lineBarsData: [
                      LineChartBarData(
                        color: Color(0xFFFA5805),
                        barWidth: 3,
                        isCurved: true,
                      ),
                    ])
                        // data: [
                        //   FFLineChartData(
                        //     xData: [],
                        //     yData: [],
                        //     settings: LineChartBarData(
                        //       color: Color(0xFFFA5805),
                        //       barWidth: 3,
                        //       isCurved: true,
                        //     ),
                        //   )
                        // ],
                        // chartStylingInfo: ChartStylingInfo(
                        //   enableTooltip: true,
                        //   backgroundColor:
                        //       FlutterFlowTheme.of(context).secondaryBackground,
                        //   showGrid: true,
                        //   borderColor: FlutterFlowTheme.of(context).secondaryText,
                        //   borderWidth: 1,
                        // ),
                        // axisBounds: AxisBounds(
                        //   minX: 0,
                        //   minY: 0,
                        //   maxX: 24,
                        //   maxY: 200,
                        // ),
                        // xAxisLabelInfo: AxisLabelInfo(
                        //   showLabels: true,
                        //   labelTextStyle: GoogleFonts.getFont(
                        //     'Roboto',
                        //     color: Color(0xFF00456B),
                        //     fontSize: 12,
                        //   ),
                        //   labelInterval: 5,
                        //   labelFormatter: LabelFormatter(
                        //     numberFormat: (val) => val.toString(),
                        //   ),
                        //   reservedSize: 24,
                        // ),
                        // yAxisLabelInfo: AxisLabelInfo(
                        //   showLabels: true,
                        //   labelTextStyle: GoogleFonts.getFont(
                        //     'Roboto',
                        //     color: Color(0xFF00456B),
                        //     fontSize: 12,
                        //   ),
                        //   labelInterval: 50,
                        //   labelFormatter: LabelFormatter(
                        //     numberFormat: (val) => val.toString(),
                        //   ),
                        //   reservedSize: 24,
                        // ),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
