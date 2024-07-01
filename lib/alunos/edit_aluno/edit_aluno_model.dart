import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user/componentes_users/menu/menu_widget.dart';
import 'edit_aluno_widget.dart' show EditAlunoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditAlunoModel extends FlutterFlowModel<EditAlunoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode1;
  TextEditingController? nomeTextController1;
  String? Function(BuildContext, String?)? nomeTextController1Validator;
  // State field(s) for idade widget.
  FocusNode? idadeFocusNode;
  TextEditingController? idadeTextController;
  String? Function(BuildContext, String?)? idadeTextControllerValidator;
  // State field(s) for escola widget.
  FocusNode? escolaFocusNode;
  TextEditingController? escolaTextController;
  String? Function(BuildContext, String?)? escolaTextControllerValidator;
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode2;
  TextEditingController? nomeTextController2;
  String? Function(BuildContext, String?)? nomeTextController2Validator;
  // State field(s) for serie widget.
  FocusNode? serieFocusNode;
  TextEditingController? serieTextController;
  String? Function(BuildContext, String?)? serieTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode1?.dispose();
    nomeTextController1?.dispose();

    idadeFocusNode?.dispose();
    idadeTextController?.dispose();

    escolaFocusNode?.dispose();
    escolaTextController?.dispose();

    nomeFocusNode2?.dispose();
    nomeTextController2?.dispose();

    serieFocusNode?.dispose();
    serieTextController?.dispose();
  }
}
