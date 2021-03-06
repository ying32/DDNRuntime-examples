//----------------------------------------------------------------------------
//  System.ComponentModel.EventBasedAsync.dll: System.ComponentModel.EventBasedAsync, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.ComponentModel.EventBasedAsync
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.ComponentModel.EventBasedAsync;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.ComponentModel,
  DDNC.System.ComponentModel.Primitives;

type


{ declares }

  DNAsyncOperation = interface; // type: System.ComponentModel.AsyncOperation, namespace: System.ComponentModel
  DNAsyncOperationManager = interface; // type: System.ComponentModel.AsyncOperationManager, namespace: System.ComponentModel
  DNAsyncCompletedEventArgs = interface; // type: System.ComponentModel.AsyncCompletedEventArgs, namespace: System.ComponentModel
  DNRunWorkerCompletedEventArgs = interface; // type: System.ComponentModel.RunWorkerCompletedEventArgs, namespace: System.ComponentModel
  DNDoWorkEventArgs = interface; // type: System.ComponentModel.DoWorkEventArgs, namespace: System.ComponentModel
  DNProgressChangedEventArgs = interface; // type: System.ComponentModel.ProgressChangedEventArgs, namespace: System.ComponentModel
  DNBackgroundWorker = interface; // type: System.ComponentModel.BackgroundWorker, namespace: System.ComponentModel

{ delegates }

  [DNTypeName('System.ComponentModel.AsyncCompletedEventHandler')]
  DNAsyncCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNAsyncCompletedEventArgs) of object;

  [DNTypeName('System.ComponentModel.DoWorkEventHandler')]
  DNDoWorkEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNDoWorkEventArgs) of object;

  [DNTypeName('System.ComponentModel.ProgressChangedEventHandler')]
  DNProgressChangedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNProgressChangedEventArgs) of object;

  [DNTypeName('System.ComponentModel.RunWorkerCompletedEventHandler')]
  DNRunWorkerCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNRunWorkerCompletedEventArgs) of object;




{ objects }

  //-------------namespace: System.ComponentModel----------------
  DNAsyncOperationClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{AFB1310B-B86B-56AE-B8E2-431FD3F76913}']
  end;

  [DNTypeName('System.ComponentModel.AsyncOperation')]
  DNAsyncOperation = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{7CCAADA9-A1C1-3CC4-8322-7251C037DE19}']
  { getters & setters } 

    function get_UserSuppliedState: DDNC.System.Private.CoreLib.DNObject;
    function get_SynchronizationContext: DDNC.System.Private.CoreLib.DNSynchronizationContext;

  { methods } 

    procedure Post(d: DDNC.System.Private.CoreLib.DNSendOrPostCallback; arg: DDNC.System.Private.CoreLib.DNObject);
    procedure PostOperationCompleted(d: DDNC.System.Private.CoreLib.DNSendOrPostCallback; arg: DDNC.System.Private.CoreLib.DNObject);
    procedure OperationCompleted;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property UserSuppliedState: DDNC.System.Private.CoreLib.DNObject read get_UserSuppliedState;
    property SynchronizationContext: DDNC.System.Private.CoreLib.DNSynchronizationContext read get_SynchronizationContext;
  end;

  TDNAsyncOperation = class(TDNGenericImport<DNAsyncOperationClass, DNAsyncOperation>) end;

  //-------------namespace: System.ComponentModel----------------
  DNAsyncOperationManagerClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{EB3456A8-47D1-5E9B-9F86-6DB6856BE790}']
  { static getter & setter } 

    {class} function get_SynchronizationContext: DDNC.System.Private.CoreLib.DNSynchronizationContext;
    {class} procedure set_SynchronizationContext(value: DDNC.System.Private.CoreLib.DNSynchronizationContext);

  { static methods } 

    {class} function CreateOperation(userSuppliedState: DDNC.System.Private.CoreLib.DNObject): DNAsyncOperation;

  { static propertys } 

    {class} property SynchronizationContext: DDNC.System.Private.CoreLib.DNSynchronizationContext read get_SynchronizationContext write set_SynchronizationContext;
  end;

  [DNTypeName('System.ComponentModel.AsyncOperationManager')]
  DNAsyncOperationManager = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{FC8A7EE2-452F-3522-AF0C-A099CFA559E1}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNAsyncOperationManager = class(TDNGenericImport<DNAsyncOperationManagerClass, DNAsyncOperationManager>) end;

  //-------------namespace: System.ComponentModel----------------
  DNAsyncCompletedEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{5D7C8134-22F1-5CF0-A024-54207A0BCE9E}']
  { constructors } 

    {class} function init(error: DDNC.System.Private.CoreLib.DNException; cancelled: Boolean; userState: DDNC.System.Private.CoreLib.DNObject): DNAsyncCompletedEventArgs;

  end;

  [DNTypeName('System.ComponentModel.AsyncCompletedEventArgs')]
  DNAsyncCompletedEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{458EC906-1470-3B33-85D4-EFADBAD64748}']
  { getters & setters } 

    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNAsyncCompletedEventArgs = class(TDNGenericImport<DNAsyncCompletedEventArgsClass, DNAsyncCompletedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNRunWorkerCompletedEventArgsClass = interface(DNAsyncCompletedEventArgsClass)
  ['{6FF8A182-0F05-5669-96A4-4CFDC942B8FA}']
  { constructors } 

    {class} function init(result: DDNC.System.Private.CoreLib.DNObject; error: DDNC.System.Private.CoreLib.DNException; cancelled: Boolean): DNRunWorkerCompletedEventArgs;

  end;

  [DNTypeName('System.ComponentModel.RunWorkerCompletedEventArgs')]
  DNRunWorkerCompletedEventArgs = interface(DNAsyncCompletedEventArgs)
  ['{EE10FD14-BD8F-308B-A529-01797CA9E79E}']
  { getters & setters } 

    function get_Result: DDNC.System.Private.CoreLib.DNObject;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Result: DDNC.System.Private.CoreLib.DNObject read get_Result;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
  end;

  TDNRunWorkerCompletedEventArgs = class(TDNGenericImport<DNRunWorkerCompletedEventArgsClass, DNRunWorkerCompletedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNDoWorkEventArgsClass = interface(DNObjectClass)
  ['{8987B3D4-2EE5-57F6-A9F4-61FE4FC0357C}']
  { constructors } 

    {class} function init(argument: DDNC.System.Private.CoreLib.DNObject): DNDoWorkEventArgs;

  end;

  [DNTypeName('System.ComponentModel.DoWorkEventArgs')]
  DNDoWorkEventArgs = interface(DNObject)
  ['{4B05E6CE-3E89-37AF-8B7D-689829FD592C}']
  { getters & setters } 

    function get_Argument: DDNC.System.Private.CoreLib.DNObject;
    function get_Result: DDNC.System.Private.CoreLib.DNObject;
    procedure set_Result(value: DDNC.System.Private.CoreLib.DNObject);
    function get_Cancel: Boolean;
    procedure set_Cancel(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Argument: DDNC.System.Private.CoreLib.DNObject read get_Argument;
    property Result: DDNC.System.Private.CoreLib.DNObject read get_Result write set_Result;
    property Cancel: Boolean read get_Cancel write set_Cancel;
  end;

  TDNDoWorkEventArgs = class(TDNGenericImport<DNDoWorkEventArgsClass, DNDoWorkEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNProgressChangedEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{784BDDDE-36D3-5822-87B2-CAB39373D172}']
  { constructors } 

    {class} function init(progressPercentage: Int32; userState: DDNC.System.Private.CoreLib.DNObject): DNProgressChangedEventArgs;

  end;

  [DNTypeName('System.ComponentModel.ProgressChangedEventArgs')]
  DNProgressChangedEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{BFA8F2CC-FBA5-315A-B581-299FBEA15B52}']
  { getters & setters } 

    function get_ProgressPercentage: Int32;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property ProgressPercentage: Int32 read get_ProgressPercentage;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNProgressChangedEventArgs = class(TDNGenericImport<DNProgressChangedEventArgsClass, DNProgressChangedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNBackgroundWorkerClass = interface(DNObjectClass)
  ['{B4E4E140-4E9D-5570-977E-D27F841FD20F}']
  { constructors } 

    {class} function init: DNBackgroundWorker;

  end;

  [DNTypeName('System.ComponentModel.BackgroundWorker')]
  DNBackgroundWorker = interface(DNObject)
  ['{3019DE50-02FA-3884-8730-C5AF843F9172}']
  { getters & setters } 

    function get_CancellationPending: Boolean;
    function get_IsBusy: Boolean;
    function get_WorkerReportsProgress: Boolean;
    procedure set_WorkerReportsProgress(value: Boolean);
    function get_WorkerSupportsCancellation: Boolean;
    procedure set_WorkerSupportsCancellation(value: Boolean);
    function get_Site: DDNC.System.ComponentModel.Primitives.DNISite;
    procedure set_Site(value: DDNC.System.ComponentModel.Primitives.DNISite);
    function get_Container: DDNC.System.ComponentModel.Primitives.DNIContainer;

  { events } 

    procedure add_DoWork(value: DNDoWorkEventHandler);
    procedure remove_DoWork(value: DNDoWorkEventHandler);
    procedure add_ProgressChanged(value: DNProgressChangedEventHandler);
    procedure remove_ProgressChanged(value: DNProgressChangedEventHandler);
    procedure add_RunWorkerCompleted(value: DNRunWorkerCompletedEventHandler);
    procedure remove_RunWorkerCompleted(value: DNRunWorkerCompletedEventHandler);
    procedure add_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);

  { methods } 

    procedure CancelAsync;
    procedure ReportProgress(percentProgress: Int32); overload;
    procedure ReportProgress(percentProgress: Int32; userState: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure RunWorkerAsync; overload;
    procedure RunWorkerAsync(argument: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure Dispose;
    function ToString: string;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property CancellationPending: Boolean read get_CancellationPending;
    property IsBusy: Boolean read get_IsBusy;
    property WorkerReportsProgress: Boolean read get_WorkerReportsProgress write set_WorkerReportsProgress;
    property WorkerSupportsCancellation: Boolean read get_WorkerSupportsCancellation write set_WorkerSupportsCancellation;
    property Site: DDNC.System.ComponentModel.Primitives.DNISite read get_Site write set_Site;
    property Container: DDNC.System.ComponentModel.Primitives.DNIContainer read get_Container;
  end;

  TDNBackgroundWorker = class(TDNGenericImport<DNBackgroundWorkerClass, DNBackgroundWorker>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.ComponentModel.EventBasedAsync, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
