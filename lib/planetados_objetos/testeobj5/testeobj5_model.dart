import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planetados_objetos/componentes_objeto/acertou_o5/acertou_o5_widget.dart';
import '/planetados_objetos/componentes_objeto/errou_o5/errou_o5_widget.dart';
import '/user/componentes_users/menu/menu_widget.dart';
import 'testeobj5_widget.dart' show Testeobj5Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class Testeobj5Model extends FlutterFlowModel<Testeobj5Widget> {
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
