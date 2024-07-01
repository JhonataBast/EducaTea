import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selecionar_aluno_model.dart';
export 'selecionar_aluno_model.dart';

class SelecionarAlunoWidget extends StatefulWidget {
  const SelecionarAlunoWidget({super.key});

  @override
  State<SelecionarAlunoWidget> createState() => _SelecionarAlunoWidgetState();
}

class _SelecionarAlunoWidgetState extends State<SelecionarAlunoWidget> {
  late SelecionarAlunoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelecionarAlunoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SelecionarAluno'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SELECIONAR_ALUNO_SelecionarAluno_ON_INIT');
      FFAppState().userID = currentUserUid;
      FFAppState().email = currentUserEmail;
      FFAppState().alunoIdSelect = '';
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<CadRecord>>(
      stream: queryCadRecord(
        queryBuilder: (cadRecord) => cadRecord.where(
          'Email',
          isEqualTo: currentUserEmail,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white,
                  ),
                ),
              ),
            ),
          );
        }
        List<CadRecord> selecionarAlunoCadRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final selecionarAlunoCadRecord = selecionarAlunoCadRecordList.isNotEmpty
            ? selecionarAlunoCadRecordList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'SELECIONAR_ALUNO_Image_9sxnlbfm_ON_TAP');
                            await queryCadRecordOnce(
                              queryBuilder: (cadRecord) => cadRecord.where(
                                'Email',
                                isEqualTo: FFAppState().email,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/181_1_(1).png',
                              width: double.infinity,
                              height: 852.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.07, 0.66),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 750.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 102.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).success,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.2, 0.78),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 550.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/19.png',
                              width: 300.0,
                              height: 264.0,
                              fit: BoxFit.cover,
                              alignment: Alignment(0.0, -1.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.89, 4.59),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 740.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/TCC_(6).png',
                              width: 149.0,
                              height: 109.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 80.0, 0.0, 0.0),
                          child: Container(
                            width: 225.0,
                            height: 192.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.asset(
                                  'assets/images/Frame_1.png',
                                ).image,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 300.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 284.0,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Selecione o Aluno ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Alfa Slab One',
                                      color: Color(0xFF030303),
                                      fontSize: 18.0,
                                      letterSpacing: 1.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Text(
                                  'Vamos começar, selecione o aluno(a) que \nirá realizar as atividades prospotas !',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF080909),
                                        letterSpacing: 1.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Container(
                                    width: 307.0,
                                    height: 61.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child:
                                          StreamBuilder<List<CadAlunoRecord>>(
                                        stream: queryCadAlunoRecord(
                                          queryBuilder: (cadAlunoRecord) =>
                                              cadAlunoRecord.where(
                                            'userId',
                                            isEqualTo: selecionarAlunoCadRecord
                                                ?.reference,
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    Colors.white,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<CadAlunoRecord>
                                              dropDownCadAlunoRecordList =
                                              snapshot.data!;
                                          return FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController ??=
                                                FormFieldController<String>(
                                              _model.dropDownValue ??= '',
                                            ),
                                            options: List<String>.from(
                                                dropDownCadAlunoRecordList
                                                    .map((e) => e.reference.id)
                                                    .toList()),
                                            optionLabels:
                                                dropDownCadAlunoRecordList
                                                    .map((e) => e.nome)
                                                    .toList(),
                                            onChanged: (val) async {
                                              setState(() =>
                                                  _model.dropDownValue = val);
                                              logFirebaseEvent(
                                                  'SELECIONAR_ALUNO_DropDown_o8p4yix8_ON_FO');
                                              await queryCadAlunoRecordOnce(
                                                queryBuilder:
                                                    (cadAlunoRecord) =>
                                                        cadAlunoRecord.where(
                                                  'Nome',
                                                  isEqualTo:
                                                      _model.dropDownValue,
                                                ),
                                              );
                                            },
                                            width: 278.0,
                                            height: 24.0,
                                            searchHintTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Alfa Slab One',
                                                      color: Colors.black,
                                                      letterSpacing: 0.0,
                                                    ),
                                            searchTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      letterSpacing: 0.0,
                                                    ),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            hintText: 'Selecione o Aluno',
                                            searchHintText:
                                                'Digite o nome do aluno aqui',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor: Colors.transparent,
                                            borderWidth: 2.0,
                                            borderRadius: 12.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: true,
                                            isMultiSelect: false,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 155.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'SELECIONAR_ALUNO_PAGE_COMEÇAR_BTN_ON_TAP');
                                      FFAppState().alunoId =
                                          _model.dropDownValue!;
                                      setState(() {});
                                      await actions.checkAlunoId(
                                        FFAppState().alunoId,
                                      );

                                      context.pushNamed(
                                        'centrodeatividade',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 100),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Começar',
                                    options: FFButtonOptions(
                                      height: 10.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .customColor3,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Alfa Slab One',
                                            color: Colors.white,
                                            letterSpacing: 1.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'SELECIONAR_ALUNO_Text_xrb56bra_ON_TAP');

                                    context.pushNamed(
                                      'cadaluno',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 50),
                                        ),
                                      },
                                    );
                                  },
                                  child: Text(
                                    'Cadastrar novo Aluno',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          fontSize: 12.0,
                                          letterSpacing: 1.0,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.71, -0.99),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 740.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/TCC_(5).png',
                              width: 82.0,
                              height: 99.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
