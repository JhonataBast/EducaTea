import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'acertou_l4_model.dart';
export 'acertou_l4_model.dart';

class AcertouL4Widget extends StatefulWidget {
  const AcertouL4Widget({super.key});

  @override
  State<AcertouL4Widget> createState() => _AcertouL4WidgetState();
}

class _AcertouL4WidgetState extends State<AcertouL4Widget> {
  late AcertouL4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcertouL4Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ACERTOU_L4_COMP_AcertouL4_ON_INIT_STATE');
      FFAppState().tempoFinal = dateTimeFormat('jms', getCurrentTimestamp);
      setState(() {});
      await actions.updatePlanetaLetra(
        FFAppState().alunoId,
        FFAppState().planetaLetra,
        FFAppState().tempoInicial,
        FFAppState().tempoFinal,
      );
      FFAppState().planetaLetra = 0;
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 350.0,
        height: 250.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).customColor3,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            logFirebaseEvent('ACERTOU_L4_COMP_Stack_x6x9uw9i_ON_TAP');

            context.pushNamed(
              'centrodeatividade',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                  duration: Duration(milliseconds: 150),
                ),
              },
            );
          },
          child: Stack(
            children: [
              Opacity(
                opacity: 0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/181_1_(1).png',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('ACERTOU_L4_COMP_Column_bltpxow0_ON_TAP');

                    context.pushNamed('relatoriosalunos');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.asset(
                              'assets/images/TCC_(1).png',
                              width: 119.0,
                              height: 109.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.903,
                        height: MediaQuery.sizeOf(context).height * 0.136,
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Parabéns vamos para outro Planeta!',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Alfa Slab One',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 26.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.2,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
