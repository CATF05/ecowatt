import 'package:ecowatt/register/numero_tel.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NamePageWidget extends StatefulWidget {
  const NamePageWidget({super.key});

  @override
  State<NamePageWidget> createState() => _NamePageWidgetState();
}

class _NamePageWidgetState extends State<NamePageWidget> {
  FocusNode? prenomFocusNode;
  TextEditingController? prenomTextController;
  TextEditingController prenomTextControllerValidator =
      TextEditingController();

  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;

  TextEditingController nomTextControllerValidator =
      TextEditingController();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    

    prenomTextController ??= TextEditingController();
    prenomFocusNode ??= FocusNode();

    nomTextController ??= TextEditingController();
    nomFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    super.dispose();

    prenomFocusNode?.dispose();
    prenomTextController?.dispose();

    nomFocusNode?.dispose();
    nomTextController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF00456B),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/image/ecowatt.jpeg',
                  width: MediaQuery.sizeOf(context).width,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32, 32, 0, 0),
                  child: Icon(
                    Icons.chevron_left_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                // padding: EdgeInsets.all(32),
                padding: EdgeInsetsDirectional.fromSTEB(32, 100, 32, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                      child: Text(
                        'Prenom',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: 17,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: prenomTextController,
                          focusNode: prenomFocusNode,
                          autofocus: true,
                          autofillHints: [AutofillHints.username],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              letterSpacing: 0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x1AFAFAFA),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Color(0x1AFAFAFA),
                          ),
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            letterSpacing: 0,
                          ),
                          keyboardType: TextInputType.name,
                          // validator: emailAddressTextControllerValidator
                          //     .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                      child: Text(
                        'NOM',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: 17,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: nomTextController,
                          focusNode: nomFocusNode,
                          autofocus: true,
                          autofillHints: [AutofillHints.username],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              letterSpacing: 0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x1AFAFAFA),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Color(0x1AFAFAFA),
                          ),
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            letterSpacing: 0,
                          ),
                          keyboardType: TextInputType.name,
                          // validator: emailAddressTextControllerValidator
                          //     .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TelPageWidget(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Theme.of(context).cardColor,
                          backgroundColor: Color(0xFFFA5805), // couleur de fond
                          textStyle: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                            fontSize: 21,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                          ),
                          padding: EdgeInsets
                              .zero, // équivalent à EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0)
                          minimumSize: Size(double.infinity, 50),
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                        child: Text('Suivant'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
