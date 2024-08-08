// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:ecowatt/register/mdp.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TelPageWidget extends StatefulWidget {
  const TelPageWidget({super.key});

  @override
  State<TelPageWidget> createState() => _TelPageWidgetState();
}

class _TelPageWidgetState extends State<TelPageWidget> {
  FocusNode? numerotelFocusNode;
  TextEditingController? numerotelTextController;
  TextEditingController numerotelTextControllerValidator =
      TextEditingController();
  FocusNode? numerocompteurFocusNode;
  TextEditingController? numerocompteurTextController;
  TextEditingController numerocompteurTextControllerValidator =
      TextEditingController();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();


    numerotelTextController ??= TextEditingController();
    numerotelFocusNode ??= FocusNode();

    numerocompteurTextController ??= TextEditingController();
    numerocompteurFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    super.dispose();

    numerotelFocusNode?.dispose();
    numerotelTextController?.dispose();

    numerocompteurFocusNode?.dispose();
    numerocompteurTextController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width);
    print(MediaQuery.sizeOf(context).height);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF00456B),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/logo_01.png',
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
                padding: EdgeInsetsDirectional.fromSTEB(32, 100, 32, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                      child: Text(
                        'Numero Telephone',
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
                          controller: numerotelTextController,
                          focusNode: numerotelFocusNode,
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
                          keyboardType: TextInputType.emailAddress,
                          // validator: emailAddressTextControllerValidator
                          //     .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                      child: Text(
                        'Numero de Compteur',
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
                          controller: numerocompteurTextController,
                          focusNode: numerocompteurFocusNode,
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
                          keyboardType: TextInputType.emailAddress,
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
                              builder: (context) => RegisterPasswordWidget(),
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
