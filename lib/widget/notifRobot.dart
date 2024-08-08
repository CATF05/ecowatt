import 'package:ecowatt/views/chatbot.dart';
import 'package:ecowatt/views/notification.dart';
import 'package:flutter/material.dart';

class NotifRobotWidget extends StatefulWidget {
  const NotifRobotWidget({super.key});

  @override
  State<NotifRobotWidget> createState() => _NotifRobotWidgetState();
}

class _NotifRobotWidgetState extends State<NotifRobotWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationWidget(),
              ),
            );
          },
          child: Icon(
            Icons.notification_add_rounded,
            color: Colors.white,
            size: 34,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatbotWidget(),
                ),
              );
            },
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: Color(0xFFFA5805),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/robot.png',
                    width: 34,
                    height: 34,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
