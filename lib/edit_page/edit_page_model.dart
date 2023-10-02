import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';

class EditPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? carName;
  String? Function(BuildContext, String?)? carNameValidator;
  // State field(s) for TextField widget.
  TextEditingController? carMake;
  String? Function(BuildContext, String?)? carMakeValidator;
  // State field(s) for TextField widget.
  TextEditingController? carModel;
  String? Function(BuildContext, String?)? carModelValidator;
  // State field(s) for TextField widget.
  TextEditingController? carYear;
  String? Function(BuildContext, String?)? carYearValidator;
  // State field(s) for TextField widget.
  TextEditingController? oilChanged;
  String? Function(BuildContext, String?)? oilChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? oilInterval;
  String? Function(BuildContext, String?)? oilIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? transChanged;
  String? Function(BuildContext, String?)? transChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? transInterval;
  String? Function(BuildContext, String?)? transIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? beltsChanged;
  String? Function(BuildContext, String?)? beltsChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? beltsInterval;
  String? Function(BuildContext, String?)? beltsIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? brakesChanged;
  String? Function(BuildContext, String?)? brakesChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? brakesInterval;
  String? Function(BuildContext, String?)? brakesIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? sparksChanged;
  String? Function(BuildContext, String?)? sparksChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? sparksInterval;
  String? Function(BuildContext, String?)? sparksIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? ffilterChanged;
  String? Function(BuildContext, String?)? ffilterChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? ffilterInterval;
  String? Function(BuildContext, String?)? ffilterIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? afilterChanged;
  String? Function(BuildContext, String?)? afilterChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? afilterInterval;
  String? Function(BuildContext, String?)? afilterIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? tiresChanged;
  String? Function(BuildContext, String?)? tiresChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? tiresInterval;
  String? Function(BuildContext, String?)? tiresIntervalValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    carName?.dispose();
    carMake?.dispose();
    carModel?.dispose();
    carYear?.dispose();
    oilChanged?.dispose();
    oilInterval?.dispose();
    transChanged?.dispose();
    transInterval?.dispose();
    beltsChanged?.dispose();
    beltsInterval?.dispose();
    brakesChanged?.dispose();
    brakesInterval?.dispose();
    sparksChanged?.dispose();
    sparksInterval?.dispose();
    ffilterChanged?.dispose();
    ffilterInterval?.dispose();
    afilterChanged?.dispose();
    afilterInterval?.dispose();
    tiresChanged?.dispose();
    tiresInterval?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
