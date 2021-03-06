//----------------------------------------------------------------------------
//  System.Threading.Tasks.Parallel.dll: System.Threading.Tasks.Parallel, Version=4.0.4.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Threading.Tasks.Parallel
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Threading.Tasks.Parallel;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib;

type


{ declares }

  DNParallel = interface; // type: System.Threading.Tasks.Parallel, namespace: System.Threading.Tasks
  DNParallelLoopState = interface; // type: System.Threading.Tasks.ParallelLoopState, namespace: System.Threading.Tasks
  DNParallelOptions = interface; // type: System.Threading.Tasks.ParallelOptions, namespace: System.Threading.Tasks
  DNParallelLoopResult = interface; // type: System.Threading.Tasks.ParallelLoopResult, namespace: System.Threading.Tasks


{ objects }

  //-------------namespace: System.Threading.Tasks----------------
  DNParallelClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{D56A8311-8A24-552D-BB0B-EC69AC4399FD}']
  { static methods } 

    {class} procedure Invoke(actions: TArray<DDNC.System.Private.CoreLib.DNAction>); overload;
    {class} procedure Invoke(parallelOptions: DNParallelOptions; actions: TArray<DDNC.System.Private.CoreLib.DNAction>); overload;
    {class} function &For(fromInclusive: Int32; toExclusive: Int32; body: DDNC.System.Private.CoreLib.DNAction<Int32>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int64; toExclusive: Int64; body: DDNC.System.Private.CoreLib.DNAction<Int64>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int32; toExclusive: Int32; parallelOptions: DNParallelOptions; body: DDNC.System.Private.CoreLib.DNAction<Int32>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int64; toExclusive: Int64; parallelOptions: DNParallelOptions; body: DDNC.System.Private.CoreLib.DNAction<Int64>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int32; toExclusive: Int32; body: DDNC.System.Private.CoreLib.DNAction<Int32, DNParallelLoopState>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int64; toExclusive: Int64; body: DDNC.System.Private.CoreLib.DNAction<Int64, DNParallelLoopState>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int32; toExclusive: Int32; parallelOptions: DNParallelOptions; body: DDNC.System.Private.CoreLib.DNAction<Int32, DNParallelLoopState>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int64; toExclusive: Int64; parallelOptions: DNParallelOptions; body: DDNC.System.Private.CoreLib.DNAction<Int64, DNParallelLoopState>): DNParallelLoopResult; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Parallel')]
  DNParallel = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{414E5EA9-DCFA-3D94-8D71-46E11EE56393}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNParallel = class(TDNGenericImport<DNParallelClass, DNParallel>) end;

  //-------------namespace: System.Threading.Tasks----------------
  DNParallelLoopStateClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{A21C5FA3-CB2A-56D5-9F0C-3D19B3F52640}']
  end;

  [DNTypeName('System.Threading.Tasks.ParallelLoopState')]
  DNParallelLoopState = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{02B1D466-448B-3BB3-BED1-64391A37C4A0}']
  { getters & setters } 

    function get_ShouldExitCurrentIteration: Boolean;
    function get_IsStopped: Boolean;
    function get_IsExceptional: Boolean;
    function get_LowestBreakIteration: DDNC.System.Private.CoreLib.DNNullable<Int64>;

  { methods } 

    procedure Stop;
    procedure Break;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property ShouldExitCurrentIteration: Boolean read get_ShouldExitCurrentIteration;
    property IsStopped: Boolean read get_IsStopped;
    property IsExceptional: Boolean read get_IsExceptional;
    property LowestBreakIteration: DDNC.System.Private.CoreLib.DNNullable<Int64> read get_LowestBreakIteration;
  end;

  TDNParallelLoopState = class(TDNGenericImport<DNParallelLoopStateClass, DNParallelLoopState>) end;

  //-------------namespace: System.Threading.Tasks----------------
  DNParallelOptionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{D4C16B2A-4232-5C5B-897B-D601D671E441}']
  { constructors } 

    {class} function init: DNParallelOptions;

  end;

  [DNTypeName('System.Threading.Tasks.ParallelOptions')]
  DNParallelOptions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{DDA70FF3-3785-3861-A10B-BCDBDED1B07E}']
  { getters & setters } 

    function get_TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler;
    procedure set_TaskScheduler(value: DDNC.System.Private.CoreLib.DNTaskScheduler);
    function get_MaxDegreeOfParallelism: Int32;
    procedure set_MaxDegreeOfParallelism(value: Int32);
    function get_CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken;
    procedure set_CancellationToken(value: DDNC.System.Private.CoreLib.DNCancellationToken);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler read get_TaskScheduler write set_TaskScheduler;
    property MaxDegreeOfParallelism: Int32 read get_MaxDegreeOfParallelism write set_MaxDegreeOfParallelism;
    property CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken read get_CancellationToken write set_CancellationToken;
  end;

  TDNParallelOptions = class(TDNGenericImport<DNParallelOptionsClass, DNParallelOptions>) end;

  //-------------namespace: System.Threading.Tasks----------------
  DNParallelLoopResultClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{21857534-0C89-5BA5-800F-28896BE5D632}']
  end;

  [DNTypeName('System.Threading.Tasks.ParallelLoopResult')]
  DNParallelLoopResult = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{86ADB4FE-5B2E-34FB-AA15-76A7EDAC11B7}']
  { getters & setters } 

    function get_IsCompleted: Boolean;
    function get_LowestBreakIteration: DDNC.System.Private.CoreLib.DNNullable<Int64>;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property IsCompleted: Boolean read get_IsCompleted;
    property LowestBreakIteration: DDNC.System.Private.CoreLib.DNNullable<Int64> read get_LowestBreakIteration;
  end;

  TDNParallelLoopResult = class(TDNGenericImport<DNParallelLoopResultClass, DNParallelLoopResult>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Threading.Tasks.Parallel, Version=4.0.4.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
