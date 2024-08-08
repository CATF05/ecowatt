import 'package:flutter/material.dart';

class NotifConfirmationDemandeWidget extends StatefulWidget {
  const NotifConfirmationDemandeWidget({super.key});

  @override
  State<NotifConfirmationDemandeWidget> createState() =>
      _NotifConfirmationDemandeWidgetState();
}

class _NotifConfirmationDemandeWidgetState
    extends State<NotifConfirmationDemandeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 12, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Color(0xFA5805),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: IconButton(
                            style: ButtonStyle(
                              fixedSize: WidgetStatePropertyAll(
                                Size(50, 50),
                              ),
                            ),
                            splashRadius: 30,
                            color: Color(0xFFEDEDF6),
                            icon: Icon(
                              Icons.description_rounded,
                              color: Color(0xFA5805),
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Confirmation de demande',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFA5805),
                              fontSize: 17,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              'Votre demande de réclamation a été bien prise en compte, nous vous mettrons en contacte avec un de nos agents techniques dans les meilleuers délai',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0x14181B),
                                fontSize: 15,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '01/01/2024',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 11,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Icon(
                                    Icons.timer_outlined,
                                    color: Color(0x14181B),
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1.5,
              indent: 40,
              endIndent: 20,
              color: Color(0xE0E3E7),
            ),
          ],
        ),
      ),
    );
  }
}
