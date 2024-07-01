import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/user/componentes_users/bemvindo/bemvindo_widget.dart';
import 'cad_user_widget.dart' show CadUserWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadUserModel extends FlutterFlowModel<CadUserWidget> {
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

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  String? _senhaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (val.length < 6) {
      return 'Minimo de Carcteres não atingido';
    }

    return null;
  }

  // State field(s) for confrimarsenha widget.
  FocusNode? confrimarsenhaFocusNode;
  TextEditingController? confrimarsenhaTextController;
  late bool confrimarsenhaVisibility;
  String? Function(BuildContext, String?)?
      confrimarsenhaTextControllerValidator;
  String? _confrimarsenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Senhas Diferentes';
    }

    return null;
  }

  // State field(s) for instEnsino widget.
  FocusNode? instEnsinoFocusNode;
  TextEditingController? instEnsinoTextController;
  String? Function(BuildContext, String?)? instEnsinoTextControllerValidator;
  String? _instEnsinoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    nomeTextControllerValidator = _nomeTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    senhaVisibility = false;
    senhaTextControllerValidator = _senhaTextControllerValidator;
    confrimarsenhaVisibility = false;
    confrimarsenhaTextControllerValidator =
        _confrimarsenhaTextControllerValidator;
    instEnsinoTextControllerValidator = _instEnsinoTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confrimarsenhaFocusNode?.dispose();
    confrimarsenhaTextController?.dispose();

    instEnsinoFocusNode?.dispose();
    instEnsinoTextController?.dispose();
  }
}
