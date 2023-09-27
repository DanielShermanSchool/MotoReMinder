import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            '<CarName> checklist',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).primary,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).accent1,
              icon: const Icon(
                Icons.more_vert,
                color: Color(0xFFEEF1F3),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed('SettingsPage');
              },
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Engine Oil life',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      lineHeight: 30.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        '50%',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Text(
                  '<Last done mileage>',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 12.0,
                      ),
                ),
                Text(
                  'Transmission Oil life',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      lineHeight: 30.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        '50%',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Text(
                  '<Last done mileage>',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 12.0,
                      ),
                ),
                Text(
                  'Belt life',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      lineHeight: 30.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        '50%',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Text(
                  '<Last done mileage>',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 12.0,
                      ),
                ),
                Text(
                  'Brake Fluid life',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      lineHeight: 30.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        '50%',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Text(
                  '<Last done mileage>',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 12.0,
                      ),
                ),
                Text(
                  'Spark Plugs life',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      lineHeight: 30.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        '50%',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Text(
                  '<Last done mileage>',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 12.0,
                      ),
                ),
                Text(
                  'Fuel Filter life',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      lineHeight: 30.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        '50%',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Text(
                  '<Last done mileage>',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 12.0,
                      ),
                ),
                Text(
                  'Air Filter life',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      lineHeight: 30.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        '50%',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Text(
                  '<Last done mileage>',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 12.0,
                      ),
                ),
                Text(
                  'Tire life',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      lineHeight: 30.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        '50%',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Text(
                  '<Last done mileage>',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 12.0,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
