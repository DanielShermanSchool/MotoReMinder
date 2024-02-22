//import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class EditPageModel{
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? carName;
  String? Function(BuildContext, String?)? carNameValidator;
  // State field(s) for TextField widget.
  TextEditingController? carTrim;
  String? Function(BuildContext, String?)? carTrimValidator;
  // State field(s) for TextField widget.
  TextEditingController? carMileage;
  String? Function(BuildContext, String?)? carMileageValidator;
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
  TextEditingController? transFilterChanged;
  String? Function(BuildContext, String?)? transFilterChangedValidator;
  //State field(s) for tansFilterChange
  TextEditingController? transFilterInterval;
  String? Function(BuildContext, String?)? transFilterIntervalValidator;
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
  // State field(s) for TextField widget.
  TextEditingController? tireRotationInterval;
  String? Function(BuildContext, String?)? tireRotationIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? coolantInterval;
  String? Function(BuildContext, String?)? coolantIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? timingBeltInterval;
  String? Function(BuildContext, String?)? timingBeltIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? waterPumpInterval;
  String? Function(BuildContext, String?)? waterPumpIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? driveBeltInterval;
  String? Function(BuildContext, String?)? driveBeltIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? brakeFluidInterval;
  String? Function(BuildContext, String?)? brakeFluidIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? cabinAirFilterInterval;
  String? Function(BuildContext, String?)? cabinAirFilterIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? fuelPumpInterval;
  String? Function(BuildContext, String?)? fuelPumpIntervalValidator;
  // State field(s) for TextField widget.
  TextEditingController? tireRotationChanged;
  String? Function(BuildContext, String?)? tireRotationChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? coolantChanged;
  String? Function(BuildContext, String?)? coolantChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? timingBeltChanged;
  String? Function(BuildContext, String?)? timingBeltChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? waterPumpChanged;
  String? Function(BuildContext, String?)? waterPumpChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? driveBeltChanged;
  String? Function(BuildContext, String?)? driveBeltChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? brakeFluidChanged;
  String? Function(BuildContext, String?)? brakeFluidChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? cabinAirFilterChanged;
  String? Function(BuildContext, String?)? cabinAirFilterChangedValidator;
  // State field(s) for TextField widget.
  TextEditingController? fuelPumpChanged;
  String? Function(BuildContext, String?)? fuelPumpChangedValidator;
  TextEditingController? lastSuspensionInspection;
  String? Function(BuildContext, String?)? lastSuspensionInspectionValidator;
  TextEditingController? suspensionInspectionInterval;
  String? Function(BuildContext, String?)? suspensionInspectionIntervalValidator;

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
    transFilterChanged?.dispose();
    transFilterInterval?.dispose();
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
    suspensionInspectionInterval?.dispose();
    lastSuspensionInspection?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
