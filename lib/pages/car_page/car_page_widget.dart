import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'car_page_model.dart';
export 'car_page_model.dart';

class CarPageWidget extends StatefulWidget {
  const CarPageWidget({Key? key}) : super(key: key);

  @override
  _CarPageWidgetState createState() => _CarPageWidgetState();
}

class _CarPageWidgetState extends State<CarPageWidget> {
  late CarPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarPageModel());
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
            'My cars',
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
                color: Color(0xFFEAEEF0),
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
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.04, -0.68),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onDoubleTap: () async {
                    context.pushNamed('HomePage');
                  },
                  onLongPress: () async {
                    context.pushNamed('EditPage');
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          'https://images.unsplash.com/photo-1584936684506-c3a7086e8212?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxjYXIlMjBibGFjayUyMGFuZCUyMHdoaXRlfGVufDB8fHx8MTY5NTY1NjE3NXww&ixlib=rb-4.0.3&q=80&w=1080',
                        ).image,
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.00, -0.69),
                child: Text(
                  '<Car NickName>',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFFF60E0E),
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.01, -0.61),
                child: Text(
                  'Make, Model, Year, Engine',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFFF60E0E),
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
