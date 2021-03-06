//----------------------------------------------------------------------------
//  System.Diagnostics.TraceSource.dll: System.Diagnostics.TraceSource, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Diagnostics.TraceSource
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Diagnostics.TraceSource;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Collections.NonGeneric,
  DDNC.System.Collections.Specialized;

type

{ enums }

  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.SourceLevels')]
  DNSourceLevels = type Integer;
  DNSourceLevelsHelper = record helper for DNSourceLevels
  public const
    Off = 0;
    Critical = 1;
    Error = 3;
    Warning = 7;
    Information = 15;
    Verbose = 31;
    ActivityTracing = 65280;
    All = -1;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.TraceEventType')]
  DNTraceEventType = type Integer;
  DNTraceEventTypeHelper = record helper for DNTraceEventType
  public const
    Critical = 1;
    Error = 2;
    Warning = 4;
    Information = 8;
    Verbose = 16;
    Start = 256;
    Stop = 512;
    Suspend = 1024;
    Resume = 2048;
    Transfer = 4096;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.TraceLevel')]
  DNTraceLevel = type Integer;
  DNTraceLevelHelper = record helper for DNTraceLevel
  public const
    Off = 0;
    Error = 1;
    Warning = 2;
    Info = 3;
    Verbose = 4;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.TraceOptions')]
  DNTraceOptions = type Integer;
  DNTraceOptionsHelper = record helper for DNTraceOptions
  public const
    None = 0;
    LogicalOperationStack = 1;
    DateTime = 2;
    Timestamp = 4;
    ProcessId = 8;
    ThreadId = 16;
    Callstack = 32;
  end;




type


{ declares }

  DNSwitchAttribute = interface; // type: System.Diagnostics.SwitchAttribute, namespace: System.Diagnostics
  DNSwitchLevelAttribute = interface; // type: System.Diagnostics.SwitchLevelAttribute, namespace: System.Diagnostics
  DNCorrelationManager = interface; // type: System.Diagnostics.CorrelationManager, namespace: System.Diagnostics
  DNSwitch = interface; // type: System.Diagnostics.Switch, namespace: System.Diagnostics
  DNBooleanSwitch = interface; // type: System.Diagnostics.BooleanSwitch, namespace: System.Diagnostics
  DNSourceSwitch = interface; // type: System.Diagnostics.SourceSwitch, namespace: System.Diagnostics
  DNTraceSwitch = interface; // type: System.Diagnostics.TraceSwitch, namespace: System.Diagnostics
  DNTrace = interface; // type: System.Diagnostics.Trace, namespace: System.Diagnostics
  DNTraceEventCache = interface; // type: System.Diagnostics.TraceEventCache, namespace: System.Diagnostics
  DNTraceFilter = interface; // type: System.Diagnostics.TraceFilter, namespace: System.Diagnostics
  DNEventTypeFilter = interface; // type: System.Diagnostics.EventTypeFilter, namespace: System.Diagnostics
  DNSourceFilter = interface; // type: System.Diagnostics.SourceFilter, namespace: System.Diagnostics
  DNTraceListenerCollection = interface; // type: System.Diagnostics.TraceListenerCollection, namespace: System.Diagnostics
  DNTraceSource = interface; // type: System.Diagnostics.TraceSource, namespace: System.Diagnostics
  DNTraceListener = interface; // type: System.Diagnostics.TraceListener, namespace: System.Diagnostics
  DNDefaultTraceListener = interface; // type: System.Diagnostics.DefaultTraceListener, namespace: System.Diagnostics


{ objects }

  //-------------namespace: System.Diagnostics----------------
  DNSwitchAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{42D8672B-D76E-5CBD-8D07-46B24FC5FCEB}']
  { constructors } 

    {class} function init(switchName: string; switchType: DDNC.System.Private.CoreLib.DNType): DNSwitchAttribute;

  { static methods } 

    {class} function GetAll(assembly: DDNC.System.Private.CoreLib.DNAssembly): TArray<DNSwitchAttribute>;

  end;

  [DNTypeName('System.Diagnostics.SwitchAttribute')]
  DNSwitchAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{AA2A67FD-92CF-3AA2-908F-A7E620879426}']
  { getters & setters } 

    function get_SwitchName: string;
    procedure set_SwitchName(value: string);
    function get_SwitchType: DDNC.System.Private.CoreLib.DNType;
    procedure set_SwitchType(value: DDNC.System.Private.CoreLib.DNType);
    function get_SwitchDescription: string;
    procedure set_SwitchDescription(value: string);
    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property SwitchName: string read get_SwitchName write set_SwitchName;
    property SwitchType: DDNC.System.Private.CoreLib.DNType read get_SwitchType write set_SwitchType;
    property SwitchDescription: string read get_SwitchDescription write set_SwitchDescription;
    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNSwitchAttribute = class(TDNGenericImport<DNSwitchAttributeClass, DNSwitchAttribute>) end;

  //-------------namespace: System.Diagnostics----------------
  DNSwitchLevelAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{B87254F1-C270-5255-9CAE-372B31BD2295}']
  { constructors } 

    {class} function init(switchLevelType: DDNC.System.Private.CoreLib.DNType): DNSwitchLevelAttribute;

  end;

  [DNTypeName('System.Diagnostics.SwitchLevelAttribute')]
  DNSwitchLevelAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{3031A5CC-236E-324D-9502-C7977057E000}']
  { getters & setters } 

    function get_SwitchLevelType: DDNC.System.Private.CoreLib.DNType;
    procedure set_SwitchLevelType(value: DDNC.System.Private.CoreLib.DNType);
    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property SwitchLevelType: DDNC.System.Private.CoreLib.DNType read get_SwitchLevelType write set_SwitchLevelType;
    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNSwitchLevelAttribute = class(TDNGenericImport<DNSwitchLevelAttributeClass, DNSwitchLevelAttribute>) end;

  //-------------namespace: System.Diagnostics----------------
  DNCorrelationManagerClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{C170FCE1-54FA-51A2-B693-2199D4A10971}']
  end;

  [DNTypeName('System.Diagnostics.CorrelationManager')]
  DNCorrelationManager = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{428FEE29-5C92-3BE3-BF15-1D54B43025FA}']
  { getters & setters } 

    function get_LogicalOperationStack: DDNC.System.Collections.NonGeneric.DNStack;
    function get_ActivityId: DDNC.System.Private.CoreLib.DNGuid;
    procedure set_ActivityId(value: DDNC.System.Private.CoreLib.DNGuid);

  { methods } 

    procedure StartLogicalOperation; overload;
    procedure StopLogicalOperation;
    procedure StartLogicalOperation(operationId: DDNC.System.Private.CoreLib.DNObject); overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property LogicalOperationStack: DDNC.System.Collections.NonGeneric.DNStack read get_LogicalOperationStack;
    property ActivityId: DDNC.System.Private.CoreLib.DNGuid read get_ActivityId write set_ActivityId;
  end;

  TDNCorrelationManager = class(TDNGenericImport<DNCorrelationManagerClass, DNCorrelationManager>) end;

  //-------------namespace: System.Diagnostics----------------
  DNSwitchClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{73561D68-4BBE-5DDE-B36A-3985231694F9}']
  end;

  [DNTypeName('System.Diagnostics.Switch')]
  DNSwitch = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E0CE2312-FCF8-3381-A63A-E1AD2DD6BFF6}']
  { getters & setters } 

    function get_DisplayName: string;
    function get_Description: string;
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property DisplayName: string read get_DisplayName;
    property Description: string read get_Description;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
  end;

  TDNSwitch = class(TDNGenericImport<DNSwitchClass, DNSwitch>) end;

  //-------------namespace: System.Diagnostics----------------
  DNBooleanSwitchClass = interface(DNSwitchClass)
  ['{C2F24C02-420F-54BF-A64B-B599E68D969F}']
  { constructors } 

    {class} function init(displayName: string; description: string): DNBooleanSwitch; overload;
    {class} function init(displayName: string; description: string; defaultSwitchValue: string): DNBooleanSwitch; overload;

  end;

  [DNTypeName('System.Diagnostics.BooleanSwitch')]
  DNBooleanSwitch = interface(DNSwitch)
  ['{B042F9E5-A9C6-364E-BF66-77EB3CAE6CC6}']
  { getters & setters } 

    function get_Enabled: Boolean;
    procedure set_Enabled(value: Boolean);
    function get_DisplayName: string;
    function get_Description: string;
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Enabled: Boolean read get_Enabled write set_Enabled;
    property DisplayName: string read get_DisplayName;
    property Description: string read get_Description;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
  end;

  TDNBooleanSwitch = class(TDNGenericImport<DNBooleanSwitchClass, DNBooleanSwitch>) end;

  //-------------namespace: System.Diagnostics----------------
  DNSourceSwitchClass = interface(DNSwitchClass)
  ['{BB8B9F0A-C66D-539D-89A7-E9022DE7611B}']
  { constructors } 

    {class} function init(name: string): DNSourceSwitch; overload;
    {class} function init(displayName: string; defaultSwitchValue: string): DNSourceSwitch; overload;

  end;

  [DNTypeName('System.Diagnostics.SourceSwitch')]
  DNSourceSwitch = interface(DNSwitch)
  ['{2314F972-9B77-3B85-9385-1D363EB48AD0}']
  { getters & setters } 

    function get_Level: DNSourceLevels;
    procedure set_Level(value: DNSourceLevels);
    function get_DisplayName: string;
    function get_Description: string;
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;

  { methods } 

    function ShouldTrace(eventType: DNTraceEventType): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Level: DNSourceLevels read get_Level write set_Level;
    property DisplayName: string read get_DisplayName;
    property Description: string read get_Description;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
  end;

  TDNSourceSwitch = class(TDNGenericImport<DNSourceSwitchClass, DNSourceSwitch>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceSwitchClass = interface(DNSwitchClass)
  ['{13EC6BD3-563A-5B61-9B76-687EAF772BE4}']
  { constructors } 

    {class} function init(displayName: string; description: string): DNTraceSwitch; overload;
    {class} function init(displayName: string; description: string; defaultSwitchValue: string): DNTraceSwitch; overload;

  end;

  [DNTypeName('System.Diagnostics.TraceSwitch')]
  DNTraceSwitch = interface(DNSwitch)
  ['{D65A2854-2CC2-3B5E-A272-0F8F8D88FD99}']
  { getters & setters } 

    function get_Level: DNTraceLevel;
    procedure set_Level(value: DNTraceLevel);
    function get_TraceError: Boolean;
    function get_TraceWarning: Boolean;
    function get_TraceInfo: Boolean;
    function get_TraceVerbose: Boolean;
    function get_DisplayName: string;
    function get_Description: string;
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Level: DNTraceLevel read get_Level write set_Level;
    property TraceError: Boolean read get_TraceError;
    property TraceWarning: Boolean read get_TraceWarning;
    property TraceInfo: Boolean read get_TraceInfo;
    property TraceVerbose: Boolean read get_TraceVerbose;
    property DisplayName: string read get_DisplayName;
    property Description: string read get_Description;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
  end;

  TDNTraceSwitch = class(TDNGenericImport<DNTraceSwitchClass, DNTraceSwitch>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{A86E97DF-019D-56B4-AFA7-EF5BFE598397}']
  { static getter & setter } 

    {class} function get_CorrelationManager: DNCorrelationManager;
    {class} function get_Listeners: DNTraceListenerCollection;
    {class} function get_AutoFlush: Boolean;
    {class} procedure set_AutoFlush(value: Boolean);
    {class} function get_UseGlobalLock: Boolean;
    {class} procedure set_UseGlobalLock(value: Boolean);
    {class} function get_IndentLevel: Int32;
    {class} procedure set_IndentLevel(value: Int32);
    {class} function get_IndentSize: Int32;
    {class} procedure set_IndentSize(value: Int32);

  { static methods } 

    {class} procedure Flush;
    {class} procedure Close;
    {class} procedure Assert(condition: Boolean); overload;
    {class} procedure Assert(condition: Boolean; message: string); overload;
    {class} procedure Assert(condition: Boolean; message: string; detailMessage: string); overload;
    {class} procedure Fail(message: string); overload;
    {class} procedure Fail(message: string; detailMessage: string); overload;
    {class} procedure Refresh;
    {class} procedure TraceInformation(message: string); overload;
    {class} procedure TraceInformation(format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    {class} procedure TraceWarning(message: string); overload;
    {class} procedure TraceWarning(format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    {class} procedure TraceError(message: string); overload;
    {class} procedure TraceError(format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    {class} procedure Write(message: string); overload;
    {class} procedure Write(value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure Write(message: string; category: string); overload;
    {class} procedure Write(value: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    {class} procedure WriteLine(message: string); overload;
    {class} procedure WriteLine(value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteLine(message: string; category: string); overload;
    {class} procedure WriteLine(value: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    {class} procedure WriteIf(condition: Boolean; message: string); overload;
    {class} procedure WriteIf(condition: Boolean; value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteIf(condition: Boolean; message: string; category: string); overload;
    {class} procedure WriteIf(condition: Boolean; value: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    {class} procedure WriteLineIf(condition: Boolean; message: string); overload;
    {class} procedure WriteLineIf(condition: Boolean; value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteLineIf(condition: Boolean; message: string; category: string); overload;
    {class} procedure WriteLineIf(condition: Boolean; value: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    {class} procedure Indent;
    {class} procedure Unindent;

  { static propertys } 

    {class} property CorrelationManager: DNCorrelationManager read get_CorrelationManager;
    {class} property Listeners: DNTraceListenerCollection read get_Listeners;
    {class} property AutoFlush: Boolean read get_AutoFlush write set_AutoFlush;
    {class} property UseGlobalLock: Boolean read get_UseGlobalLock write set_UseGlobalLock;
    {class} property IndentLevel: Int32 read get_IndentLevel write set_IndentLevel;
    {class} property IndentSize: Int32 read get_IndentSize write set_IndentSize;
  end;

  [DNTypeName('System.Diagnostics.Trace')]
  DNTrace = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{9FEB195B-4662-347A-8A78-EC3A4CEE9E07}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNTrace = class(TDNGenericImport<DNTraceClass, DNTrace>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceEventCacheClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{8D5C1FFA-DF17-5966-B518-52734337F964}']
  { constructors } 

    {class} function init: DNTraceEventCache;

  end;

  [DNTypeName('System.Diagnostics.TraceEventCache')]
  DNTraceEventCache = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{4755747B-D101-3732-90F6-F342369CB9F8}']
  { getters & setters } 

    function get_DateTime: DDNC.System.Private.CoreLib.DNDateTime;
    function get_ProcessId: Int32;
    function get_ThreadId: string;
    function get_Timestamp: Int64;
    function get_Callstack: string;
    function get_LogicalOperationStack: DDNC.System.Collections.NonGeneric.DNStack;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property DateTime: DDNC.System.Private.CoreLib.DNDateTime read get_DateTime;
    property ProcessId: Int32 read get_ProcessId;
    property ThreadId: string read get_ThreadId;
    property Timestamp: Int64 read get_Timestamp;
    property Callstack: string read get_Callstack;
    property LogicalOperationStack: DDNC.System.Collections.NonGeneric.DNStack read get_LogicalOperationStack;
  end;

  TDNTraceEventCache = class(TDNGenericImport<DNTraceEventCacheClass, DNTraceEventCache>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceFilterClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{778E8FBA-84D0-578E-9E50-E11D0E72ED38}']
  end;

  [DNTypeName('System.Diagnostics.TraceFilter')]
  DNTraceFilter = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{92C409D5-43E5-315E-BEC9-E8ED18F129E6}']
  { methods } 

    function ShouldTrace(cache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; formatOrMessage: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>; data1: DDNC.System.Private.CoreLib.DNObject; data: TArray<DDNC.System.Private.CoreLib.DNObject>): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNTraceFilter = class(TDNGenericImport<DNTraceFilterClass, DNTraceFilter>) end;

  //-------------namespace: System.Diagnostics----------------
  DNEventTypeFilterClass = interface(DNTraceFilterClass)
  ['{7AC63BB1-1753-5CBD-861C-ADC0FCC6E42A}']
  { constructors } 

    {class} function init(level: DNSourceLevels): DNEventTypeFilter;

  end;

  [DNTypeName('System.Diagnostics.EventTypeFilter')]
  DNEventTypeFilter = interface(DNTraceFilter)
  ['{EAC8F9DD-6E3D-343E-B833-3AC21A9757B8}']
  { getters & setters } 

    function get_EventType: DNSourceLevels;
    procedure set_EventType(value: DNSourceLevels);

  { methods } 

    function ShouldTrace(cache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; formatOrMessage: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>; data1: DDNC.System.Private.CoreLib.DNObject; data: TArray<DDNC.System.Private.CoreLib.DNObject>): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property EventType: DNSourceLevels read get_EventType write set_EventType;
  end;

  TDNEventTypeFilter = class(TDNGenericImport<DNEventTypeFilterClass, DNEventTypeFilter>) end;

  //-------------namespace: System.Diagnostics----------------
  DNSourceFilterClass = interface(DNTraceFilterClass)
  ['{86F67481-FF59-501B-9CDD-AD3C58A4C13B}']
  { constructors } 

    {class} function init(source: string): DNSourceFilter;

  end;

  [DNTypeName('System.Diagnostics.SourceFilter')]
  DNSourceFilter = interface(DNTraceFilter)
  ['{DBDECE3B-6D96-3FC0-B8C1-1BBA49D69B54}']
  { getters & setters } 

    function get_Source: string;
    procedure set_Source(value: string);

  { methods } 

    function ShouldTrace(cache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; formatOrMessage: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>; data1: DDNC.System.Private.CoreLib.DNObject; data: TArray<DDNC.System.Private.CoreLib.DNObject>): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Source: string read get_Source write set_Source;
  end;

  TDNSourceFilter = class(TDNGenericImport<DNSourceFilterClass, DNSourceFilter>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceListenerCollectionClass = interface(DNObjectClass)
  ['{8201ADD6-7EDD-5312-8DF5-F4A2FC411CD1}']
  end;

  [DNTypeName('System.Diagnostics.TraceListenerCollection')]
  DNTraceListenerCollection = interface(DDNC.System.Private.CoreLib.DNIList)
  ['{990E9615-D053-3BBC-A91D-D613B846832D}']
  { getters & setters } 

    function get_Item(i: Int32): DNTraceListener; overload;
    procedure set_Item(i: Int32; value: DNTraceListener);
    function get_Item(name: string): DNTraceListener; overload;
    function get_Count: Int32;

  { methods } 

    function Add(listener: DNTraceListener): Int32;
    procedure AddRange(value: TArray<DNTraceListener>); overload;
    procedure AddRange(value: DNTraceListenerCollection); overload;
    function &Contains(listener: DNTraceListener): Boolean;
    procedure CopyTo(listeners: TArray<DNTraceListener>; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function IndexOf(listener: DNTraceListener): Int32;
    procedure Insert(index: Int32; listener: DNTraceListener);
    procedure Remove(listener: DNTraceListener); overload;
    procedure Remove(name: string); overload;
    procedure RemoveAt(index: Int32);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Item[i: Int32]: DNTraceListener read get_Item write set_Item; default;
    property Item[name: string]: DNTraceListener read get_Item; default;
    property Count: Int32 read get_Count;
  end;

  TDNTraceListenerCollection = class(TDNGenericImport<DNTraceListenerCollectionClass, DNTraceListenerCollection>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceSourceClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{83543417-A900-547F-97E7-A6B4F317FA5D}']
  { constructors } 

    {class} function init(name: string): DNTraceSource; overload;
    {class} function init(name: string; defaultLevel: DNSourceLevels): DNTraceSource; overload;

  end;

  [DNTypeName('System.Diagnostics.TraceSource')]
  DNTraceSource = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{76BF5F45-2458-3E9C-BDB1-5FD23FF436BE}']
  { getters & setters } 

    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;
    function get_Name: string;
    function get_Listeners: DNTraceListenerCollection;
    function get_Switch: DNSourceSwitch;
    procedure set_Switch(value: DNSourceSwitch);

  { methods } 

    procedure Close;
    procedure Flush;
    procedure TraceEvent(eventType: DNTraceEventType; id: Int32); overload;
    procedure TraceEvent(eventType: DNTraceEventType; id: Int32; message: string); overload;
    procedure TraceEvent(eventType: DNTraceEventType; id: Int32; format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceData(eventType: DNTraceEventType; id: Int32; data: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure TraceData(eventType: DNTraceEventType; id: Int32; data: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceInformation(message: string); overload;
    procedure TraceInformation(format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceTransfer(id: Int32; message: string; relatedActivityId: DDNC.System.Private.CoreLib.DNGuid);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
    property Name: string read get_Name;
    property Listeners: DNTraceListenerCollection read get_Listeners;
    property Switch: DNSourceSwitch read get_Switch write set_Switch;
  end;

  TDNTraceSource = class(TDNGenericImport<DNTraceSourceClass, DNTraceSource>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceListenerClass = interface(DDNC.System.Private.CoreLib.DNMarshalByRefObjectClass)
  ['{CB540DCE-1BFD-5001-B371-439CF83D325E}']
  end;

  [DNTypeName('System.Diagnostics.TraceListener')]
  DNTraceListener = interface(DDNC.System.Private.CoreLib.DNMarshalByRefObject)
  ['{BFEA7071-562A-363B-AF02-C053257BE73F}']
  { getters & setters } 

    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;
    function get_Name: string;
    procedure set_Name(value: string);
    function get_IsThreadSafe: Boolean;
    function get_IndentLevel: Int32;
    procedure set_IndentLevel(value: Int32);
    function get_IndentSize: Int32;
    procedure set_IndentSize(value: Int32);
    function get_Filter: DNTraceFilter;
    procedure set_Filter(value: DNTraceFilter);
    function get_TraceOutputOptions: DNTraceOptions;
    procedure set_TraceOutputOptions(value: DNTraceOptions);

  { methods } 

    procedure Dispose;
    procedure Flush;
    procedure Close;
    procedure TraceTransfer(eventCache: DNTraceEventCache; source: string; id: Int32; message: string; relatedActivityId: DDNC.System.Private.CoreLib.DNGuid);
    procedure Fail(message: string); overload;
    procedure Fail(message: string; detailMessage: string); overload;
    procedure Write(message: string); overload;
    procedure Write(o: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure Write(message: string; category: string); overload;
    procedure Write(o: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    procedure WriteLine(message: string); overload;
    procedure WriteLine(o: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure WriteLine(message: string; category: string); overload;
    procedure WriteLine(o: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    procedure TraceData(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; data: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure TraceData(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; data: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; message: string); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
    property Name: string read get_Name write set_Name;
    property IsThreadSafe: Boolean read get_IsThreadSafe;
    property IndentLevel: Int32 read get_IndentLevel write set_IndentLevel;
    property IndentSize: Int32 read get_IndentSize write set_IndentSize;
    property Filter: DNTraceFilter read get_Filter write set_Filter;
    property TraceOutputOptions: DNTraceOptions read get_TraceOutputOptions write set_TraceOutputOptions;
  end;

  TDNTraceListener = class(TDNGenericImport<DNTraceListenerClass, DNTraceListener>) end;

  //-------------namespace: System.Diagnostics----------------
  DNDefaultTraceListenerClass = interface(DNTraceListenerClass)
  ['{8C86E16D-B494-5795-B03B-69B60B7CBCE7}']
  { constructors } 

    {class} function init: DNDefaultTraceListener;

  end;

  [DNTypeName('System.Diagnostics.DefaultTraceListener')]
  DNDefaultTraceListener = interface(DNTraceListener)
  ['{9E54423A-388F-37BC-979D-2195F0E6961E}']
  { getters & setters } 

    function get_AssertUiEnabled: Boolean;
    procedure set_AssertUiEnabled(value: Boolean);
    function get_LogFileName: string;
    procedure set_LogFileName(value: string);
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;
    function get_Name: string;
    procedure set_Name(value: string);
    function get_IsThreadSafe: Boolean;
    function get_IndentLevel: Int32;
    procedure set_IndentLevel(value: Int32);
    function get_IndentSize: Int32;
    procedure set_IndentSize(value: Int32);
    function get_Filter: DNTraceFilter;
    procedure set_Filter(value: DNTraceFilter);
    function get_TraceOutputOptions: DNTraceOptions;
    procedure set_TraceOutputOptions(value: DNTraceOptions);

  { methods } 

    procedure Fail(message: string); overload;
    procedure Fail(message: string; detailMessage: string); overload;
    procedure Write(message: string); overload;
    procedure WriteLine(message: string); overload;
    procedure Dispose;
    procedure Flush;
    procedure Close;
    procedure TraceTransfer(eventCache: DNTraceEventCache; source: string; id: Int32; message: string; relatedActivityId: DDNC.System.Private.CoreLib.DNGuid);
    procedure Write(o: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure Write(message: string; category: string); overload;
    procedure Write(o: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    procedure WriteLine(o: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure WriteLine(message: string; category: string); overload;
    procedure WriteLine(o: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    procedure TraceData(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; data: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure TraceData(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; data: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; message: string); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property AssertUiEnabled: Boolean read get_AssertUiEnabled write set_AssertUiEnabled;
    property LogFileName: string read get_LogFileName write set_LogFileName;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
    property Name: string read get_Name write set_Name;
    property IsThreadSafe: Boolean read get_IsThreadSafe;
    property IndentLevel: Int32 read get_IndentLevel write set_IndentLevel;
    property IndentSize: Int32 read get_IndentSize write set_IndentSize;
    property Filter: DNTraceFilter read get_Filter write set_Filter;
    property TraceOutputOptions: DNTraceOptions read get_TraceOutputOptions write set_TraceOutputOptions;
  end;

  TDNDefaultTraceListener = class(TDNGenericImport<DNDefaultTraceListenerClass, DNDefaultTraceListener>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Diagnostics.TraceSource, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
