import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatbotWidget extends StatefulWidget {
  const ChatbotWidget({super.key});

  @override
  State<ChatbotWidget> createState() => _ChatbotWidgetState();
}

class _ChatbotWidgetState extends State<ChatbotWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  FocusNode? sendMessageFocusNode;
  TextEditingController? sendMessageTextController;
  String? Function(BuildContext, String?)? sendMessageTextControllerValidator;

  @override
  void initState() {
    super.initState();

    sendMessageTextController ??= TextEditingController();
    sendMessageFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    sendMessageFocusNode?.dispose();
    sendMessageTextController?.dispose();

    super.dispose();
  }

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
          'Assistant virtuel',
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                child: Container(
                  width: 125,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0x2600456B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'Aujourd’hui',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xFF595668),
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.65,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: // Generated code for this ListView Widget...
                  ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 10, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                          child: Icon(
                            Icons.edit_note,
                            color: Color(0x57636C),
                            size: 24,
                          ),
                        ),
                        Container(
                          width: 293,
                          decoration: BoxDecoration(
                            color: Color(0xFA5805),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(11),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(11),
                              topRight: Radius.circular(11),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 8, 5),
                                child: Text(
                                  'Salut, comment puis-je signaler un problème technique avec mon compteur ? ',
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 13,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 8),
                                      child: Text(
                                        '9:41',
                                        style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 11,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 100, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(11),
                          topLeft: Radius.circular(11),
                          topRight: Radius.circular(11),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Text(
                          'Bonjour ! Pour signaler un problème technique avec votre compteur, vous pouvez contacter notre service clientèle au 33 867 66 66 ou se rendre sur l’agence le plus proche de chez vous.',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Color(0x393939),
                            fontSize: 13,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: sendMessageTextController,
                        focusNode: sendMessageFocusNode,
                        autofocus: true,
                        autofillHints: [AutofillHints.name],
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          ),
                          hintText: '    Écrire un message',
                          hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0xFF595668),
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x1AFAFAFA),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xE0E3E7),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5963),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xE0E3E7),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          filled: true,
                          fillColor: Color(0x2600456B),
                          suffixIcon: Icon(
                            Icons.send_outlined,
                            color: Color(0xFF595668),
                            size: 24,
                          ),
                        ),
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          letterSpacing: 0,
                        ),
                        // validator: _model.sendMessageTextControllerValidator
                        //     .asValidator(context),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                  child: IconButton(
                    style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(
                        Size(50, 50),
                      ),
                    ),
                    splashRadius: 30,
                    color: Color(0xFFEDEDF6),
                    icon: FaIcon(
                      FontAwesomeIcons.microphone,
                      color: Colors.white,
                      size: 28,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
