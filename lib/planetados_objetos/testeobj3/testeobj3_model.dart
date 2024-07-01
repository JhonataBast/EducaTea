import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planetados_objetos/componentes_objeto/acertou_o2/acertou_o2_widget.dart';
import '/planetados_objetos/componentes_objeto/errou_o2/errou_o2_widget.dart';
import '/user/componentes_users/menu/menu_widget.dart';
import 'testeobj3_widget.dart' show Testeobj3Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class Testeobj3Model extends FlutterFlowModel<Testeobj3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
