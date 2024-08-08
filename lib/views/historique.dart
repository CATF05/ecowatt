import 'package:ecowatt/widget/transaction.dart';
import 'package:flutter/material.dart';

class HistoriqueWidget extends StatefulWidget {
  const HistoriqueWidget({super.key});

  @override
  State<HistoriqueWidget> createState() => _HistoriqueWidgetState();
}

class _HistoriqueWidgetState extends State<HistoriqueWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0x00456B),
      appBar: AppBar(
        backgroundColor: Color(0x00456B),
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
        title: Text(
          'Historiques',
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontSize: 22,
            letterSpacing: 0,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(43),
            topRight: Radius.circular(43),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                    child: Text(
                      'Historique de vos transactions',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0x00456B),
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 24, 0),
                    child: Icon(
                      Icons.keyboard_control_rounded,
                      color: Color(0x00456B),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.78,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  TransactionWidget(),
                  TransactionWidget(),
                  TransactionWidget(),
                  TransactionWidget(),
                  TransactionWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
