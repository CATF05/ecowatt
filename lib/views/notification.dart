import 'package:ecowatt/widget/notifAlerteIncendi.dart';
import 'package:ecowatt/widget/notifAttention.dart';
import 'package:ecowatt/widget/notifConfirmationDemande.dart';
import 'package:ecowatt/widget/notifRechargeReussi.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
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
          'Notifications',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.white,
            letterSpacing: 0,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StickyHeader(
                overlapHeaders: false,
                header: Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 14, 0, 14),
                    child: Text(
                      'Non lue(s)',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0x00456B),
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                content: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 430,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      NotifAttentionWidget(),
                      NotifRechargeReussiWidget(),
                    ],
                  ),
                ),
              ),
              StickyHeader(
                overlapHeaders: false,
                header: Container(
                  width: double.infinity,
                  height: 50,
                  constraints: BoxConstraints(
                    maxWidth: 430,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  alignment: AlignmentDirectional(-1, 0),
                  child: Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: Text(
                        'Cette semaine',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0x00456B),
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                content: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 430,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      NotifAlerteIncendiWidget(),
                      NotifConfirmationDemandeWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
