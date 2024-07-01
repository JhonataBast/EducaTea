import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user/componentes_users/menu/menu_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'cadaluno_widget.dart' show CadalunoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadalunoModel extends FlutterFlowModel<CadalunoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  String? _ageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for serie widget.
  FocusNode? serieFocusNode;
  TextEditingController? serieTextController;
  String? Function(BuildContext, String?)? serieTextControllerValidator;
  // State field(s) for responsavel widget.
  FocusNode? responsavelFocusNode;
  TextEditingController? responsavelTextController;
  String? Function(BuildContext, String?)? responsavelTextControllerValidator;
  String? _responsavelTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Nome-Escola widget.
  FocusNode? nomeEscolaFocusNode;
  TextEditingController? nomeEscolaTextController;
  String? Function(BuildContext, String?)? nomeEscolaTextControllerValidator;
  String? _nomeEscolaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nomeTextControllerValidator = _nomeTextControllerValidator;
    ageTextControllerValidator = _ageTextControllerValidator;
    responsavelTextControllerValidator = _responsavelTextControllerValidator;
    nomeEscolaTextControllerValidator = _nomeEscolaTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    serieFocusNode?.dispose();
    serieTextController?.dispose();

    responsavelFocusNode?.dispose();
    responsavelTextController?.dispose();

    nomeEscolaFocusNode?.dispose();
    nomeEscolaTextController?.dispose();
  }
}
