import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planetados_objetos/componentes_objeto/acertou_o/acertou_o_widget.dart';
import '/planetados_objetos/componentes_objeto/errou_o/errou_o_widget.dart';
import '/user/componentes_users/menu/menu_widget.dart';
import 'testeobj1_widget.dart' show Testeobj1Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class Testeobj1Model extends FlutterFlowModel<Testeobj1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}