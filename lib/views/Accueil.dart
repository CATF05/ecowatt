import 'package:ecowatt/widget/conso.dart';
import 'package:ecowatt/widget/notifRobot.dart';
import 'package:ecowatt/widget/transaction.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AccueilWidget extends StatefulWidget {
  const AccueilWidget({
    super.key,
  });

  @override
  State<AccueilWidget> createState() => _AccueilWidgetState();
}

class _AccueilWidgetState extends State<AccueilWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF00456B),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/logo_01_carre.png',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: NotifRobotWidget(),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Unités restantes',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFF00456B),
                          fontSize: 22,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: FaIcon(
                          FontAwesomeIcons.solidEyeSlash,
                          color: Color(0xFF00456B),
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 193,
                    height: 193,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional(0, 0),
                      children: [
                        CircularPercentIndicator(
                          percent: 0.8,
                          radius: 70,
                          lineWidth: 10,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: Color(0xFFFA5805),
                          backgroundColor: Color(0xF1F4F8),
                          startAngle: 180,
                        ),
                        CircularPercentIndicator(
                          percent: 0.4,
                          radius: 82.5,
                          lineWidth: 5,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: Color(0x60FA5805),
                          backgroundColor: Colors.white,
                          startAngle: 120,
                        ),
                        CircularPercentIndicator(
                          percent: 0.9,
                          radius: 95,
                          lineWidth: 5,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: Color(0xA1FA5805),
                          backgroundColor: Colors.white,
                          startAngle: 50,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '21.59',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xFF00456B),
                                fontSize: 24,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'kWh',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xFF00456B),
                                letterSpacing: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                                fixedSize:
                                    WidgetStatePropertyAll(Size(60, 60))),
                            splashRadius: 30,
                            color: Color(0xededf6),
                            icon: Icon(
                              Icons.monitor_heart_outlined,
                              color: Color(0xFF00456B),
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                            child: Text(
                              'Monitoring',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xFF00456B),
                                fontSize: 15,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                                fixedSize:
                                    WidgetStatePropertyAll(Size(60, 60))),
                            splashRadius: 30,
                            color: Color(0xededf6),
                            icon: Icon(
                              Icons.description_outlined,
                              color: Color(0xFF00456B),
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                            child: Text(
                              'Demandes',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xFF00456B),
                                fontSize: 15,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                                fixedSize:
                                    WidgetStatePropertyAll(Size(60, 60))),
                            splashRadius: 30,
                            color: Color(0xededf6),
                            icon: Icon(
                              Icons.history_rounded,
                              color: Color(0xFF00456B),
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                            child: Text(
                              'Historiques',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xFF00456B),
                                fontSize: 15,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                                fixedSize:
                                    WidgetStatePropertyAll(Size(60, 60))),
                            splashRadius: 30,
                            color: Color(0xededf6),
                            icon: Icon(
                              Icons.support_agent_rounded,
                              color: Color(0xFF00456B),
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                            child: Text(
                              'Suppports',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xFF00456B),
                                fontSize: 15,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xededf6),
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(
                        color: Color(0xEDEDF6),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {},
                              child: Container(
                                width: 115,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Color(0xfa5805)
                                      : Color(0xFFF1F1FA),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Text(
                                    'Consommation',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Colors.white
                                          : Color(0xFF00456B),
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {},
                              child: Container(
                                width: 115,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Color(0xfa5805)
                                      : Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Color(0xFFE0E3E7)
                                        : Color(0xFFF1F4F8),
                                    width: 1,
                                  ),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Text(
                                    'Transaction',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Color(0xFF00456B),
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      if (Theme.of(context).brightness == Brightness.light) {
                        return ConsoWidget();
                      } else {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TransactionWidget(),
                            TransactionWidget(),
                            TransactionWidget()
                          ],
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: 60)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
