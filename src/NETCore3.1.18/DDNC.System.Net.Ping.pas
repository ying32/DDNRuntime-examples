//----------------------------------------------------------------------------
//  System.Net.Ping.dll: System.Net.Ping, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Net.Ping
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Net.Ping;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.ComponentModel.EventBasedAsync,
  DDNC.System.ComponentModel.Primitives,
  DDNC.System.Net.Primitives;

type

{ enums }

  //-------------namespace: System.Net.NetworkInformation----------------
  [DNTypeName('System.Net.NetworkInformation.IPStatus')]
  DNIPStatus = type Integer;
  DNIPStatusHelper = record helper for DNIPStatus
  public const
    Success = 0;
    DestinationNetworkUnreachable = 11002;
    DestinationHostUnreachable = 11003;
    DestinationProhibited = 11004;
    DestinationProtocolUnreachable = 11004;
    DestinationPortUnreachable = 11005;
    NoResources = 11006;
    BadOption = 11007;
    HardwareError = 11008;
    PacketTooBig = 11009;
    TimedOut = 11010;
    BadRoute = 11012;
    TtlExpired = 11013;
    TtlReassemblyTimeExceeded = 11014;
    ParameterProblem = 11015;
    SourceQuench = 11016;
    BadDestination = 11018;
    DestinationUnreachable = 11040;
    TimeExceeded = 11041;
    BadHeader = 11042;
    UnrecognizedNextHeader = 11043;
    IcmpError = 11044;
    DestinationScopeMismatch = 11045;
    Unknown = -1;
  end;




type


{ declares }

  DNPingCompletedEventArgs = interface; // type: System.Net.NetworkInformation.PingCompletedEventArgs, namespace: System.Net.NetworkInformation
  DNPingException = interface; // type: System.Net.NetworkInformation.PingException, namespace: System.Net.NetworkInformation
  DNPing = interface; // type: System.Net.NetworkInformation.Ping, namespace: System.Net.NetworkInformation
  DNPingOptions = interface; // type: System.Net.NetworkInformation.PingOptions, namespace: System.Net.NetworkInformation
  DNPingReply = interface; // type: System.Net.NetworkInformation.PingReply, namespace: System.Net.NetworkInformation

{ delegates }

  [DNTypeName('System.Net.NetworkInformation.PingCompletedEventHandler')]
  DNPingCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNPingCompletedEventArgs) of object;




{ objects }

  //-------------namespace: System.Net.NetworkInformation----------------
  DNPingCompletedEventArgsClass = interface(DNObjectClass)
  ['{C072052B-30A4-5E5E-A8E0-6F25117534C6}']
  end;

  [DNTypeName('System.Net.NetworkInformation.PingCompletedEventArgs')]
  DNPingCompletedEventArgs = interface(DNObject)
  ['{A62F7C17-E43B-36F4-AFCA-C13E2F560977}']
  { getters & setters } 

    function get_Reply: DNPingReply;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Reply: DNPingReply read get_Reply;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNPingCompletedEventArgs = class(TDNGenericImport<DNPingCompletedEventArgsClass, DNPingCompletedEventArgs>) end;

  //-------------namespace: System.Net.NetworkInformation----------------
  DNPingExceptionClass = interface(DDNC.System.Private.CoreLib.DNInvalidOperationExceptionClass)
  ['{47DF87E4-59BD-5542-BCC7-DC9D99E7982A}']
  { constructors } 

    {class} function init(message: string): DNPingException; overload;
    {class} function init(message: string; innerException: DDNC.System.Private.CoreLib.DNException): DNPingException; overload;

  end;

  [DNTypeName('System.Net.NetworkInformation.PingException')]
  DNPingException = interface(DDNC.System.Private.CoreLib.DNInvalidOperationException)
  ['{D1AC42D2-B213-37F9-84E0-6E3A8DB676D1}']
  { getters & setters } 

    function get_TargetSite: DDNC.System.Private.CoreLib.DNMethodBase;
    function get_StackTrace: string;
    function get_Message: string;
    function get_Data: DDNC.System.Private.CoreLib.DNIDictionary;
    function get_InnerException: DDNC.System.Private.CoreLib.DNException;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;
    procedure set_HResult(value: Int32);

  { methods } 

    function GetBaseException: DDNC.System.Private.CoreLib.DNException;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property TargetSite: DDNC.System.Private.CoreLib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property Message: string read get_Message;
    property Data: DDNC.System.Private.CoreLib.DNIDictionary read get_Data;
    property InnerException: DDNC.System.Private.CoreLib.DNException read get_InnerException;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult write set_HResult;
  end;

  TDNPingException = class(TDNGenericImport<DNPingExceptionClass, DNPingException>) end;

  //-------------namespace: System.Net.NetworkInformation----------------
  DNPingClass = interface(DNObjectClass)
  ['{6CA32860-0691-58C6-9A72-34BE6B0C52D0}']
  { constructors } 

    {class} function init: DNPing;

  end;

  [DNTypeName('System.Net.NetworkInformation.Ping')]
  DNPing = interface(DNObject)
  ['{9BBC645D-A8A6-373A-B94E-EB946300E134}']
  { getters & setters } 

    function get_Site: DDNC.System.ComponentModel.Primitives.DNISite;
    procedure set_Site(value: DDNC.System.ComponentModel.Primitives.DNISite);
    function get_Container: DDNC.System.ComponentModel.Primitives.DNIContainer;

  { events } 

    procedure add_PingCompleted(value: DNPingCompletedEventHandler);
    procedure remove_PingCompleted(value: DNPingCompletedEventHandler);
    procedure add_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);

  { methods } 

    function Send(hostNameOrAddress: string): DNPingReply; overload;
    function Send(hostNameOrAddress: string; timeout: Int32): DNPingReply; overload;
    function Send(address: DDNC.System.Net.Primitives.DNIPAddress): DNPingReply; overload;
    function Send(address: DDNC.System.Net.Primitives.DNIPAddress; timeout: Int32): DNPingReply; overload;
    function Send(hostNameOrAddress: string; timeout: Int32; buffer: TArray<Byte>): DNPingReply; overload;
    function Send(address: DDNC.System.Net.Primitives.DNIPAddress; timeout: Int32; buffer: TArray<Byte>): DNPingReply; overload;
    function Send(hostNameOrAddress: string; timeout: Int32; buffer: TArray<Byte>; options: DNPingOptions): DNPingReply; overload;
    function Send(address: DDNC.System.Net.Primitives.DNIPAddress; timeout: Int32; buffer: TArray<Byte>; options: DNPingOptions): DNPingReply; overload;
    procedure SendAsync(hostNameOrAddress: string; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure SendAsync(hostNameOrAddress: string; timeout: Int32; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure SendAsync(address: DDNC.System.Net.Primitives.DNIPAddress; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure SendAsync(address: DDNC.System.Net.Primitives.DNIPAddress; timeout: Int32; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure SendAsync(hostNameOrAddress: string; timeout: Int32; buffer: TArray<Byte>; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure SendAsync(address: DDNC.System.Net.Primitives.DNIPAddress; timeout: Int32; buffer: TArray<Byte>; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure SendAsync(hostNameOrAddress: string; timeout: Int32; buffer: TArray<Byte>; options: DNPingOptions; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure SendAsync(address: DDNC.System.Net.Primitives.DNIPAddress; timeout: Int32; buffer: TArray<Byte>; options: DNPingOptions; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    function SendPingAsync(address: DDNC.System.Net.Primitives.DNIPAddress): DDNC.System.Private.CoreLib.DNTask<DNPingReply>; overload;
    function SendPingAsync(hostNameOrAddress: string): DDNC.System.Private.CoreLib.DNTask<DNPingReply>; overload;
    function SendPingAsync(address: DDNC.System.Net.Primitives.DNIPAddress; timeout: Int32): DDNC.System.Private.CoreLib.DNTask<DNPingReply>; overload;
    function SendPingAsync(hostNameOrAddress: string; timeout: Int32): DDNC.System.Private.CoreLib.DNTask<DNPingReply>; overload;
    function SendPingAsync(address: DDNC.System.Net.Primitives.DNIPAddress; timeout: Int32; buffer: TArray<Byte>): DDNC.System.Private.CoreLib.DNTask<DNPingReply>; overload;
    function SendPingAsync(hostNameOrAddress: string; timeout: Int32; buffer: TArray<Byte>): DDNC.System.Private.CoreLib.DNTask<DNPingReply>; overload;
    function SendPingAsync(address: DDNC.System.Net.Primitives.DNIPAddress; timeout: Int32; buffer: TArray<Byte>; options: DNPingOptions): DDNC.System.Private.CoreLib.DNTask<DNPingReply>; overload;
    function SendPingAsync(hostNameOrAddress: string; timeout: Int32; buffer: TArray<Byte>; options: DNPingOptions): DDNC.System.Private.CoreLib.DNTask<DNPingReply>; overload;
    procedure SendAsyncCancel;
    procedure Dispose;
    function ToString: string;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Site: DDNC.System.ComponentModel.Primitives.DNISite read get_Site write set_Site;
    property Container: DDNC.System.ComponentModel.Primitives.DNIContainer read get_Container;
  end;

  TDNPing = class(TDNGenericImport<DNPingClass, DNPing>) end;

  //-------------namespace: System.Net.NetworkInformation----------------
  DNPingOptionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{E344CFC4-9B30-5629-870C-B65A4992A2BB}']
  { constructors } 

    {class} function init: DNPingOptions; overload;
    {class} function init(ttl: Int32; dontFragment: Boolean): DNPingOptions; overload;

  end;

  [DNTypeName('System.Net.NetworkInformation.PingOptions')]
  DNPingOptions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{1C110FE5-80BD-3152-92D4-CF8CDFBA9165}']
  { getters & setters } 

    function get_Ttl: Int32;
    procedure set_Ttl(value: Int32);
    function get_DontFragment: Boolean;
    procedure set_DontFragment(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Ttl: Int32 read get_Ttl write set_Ttl;
    property DontFragment: Boolean read get_DontFragment write set_DontFragment;
  end;

  TDNPingOptions = class(TDNGenericImport<DNPingOptionsClass, DNPingOptions>) end;

  //-------------namespace: System.Net.NetworkInformation----------------
  DNPingReplyClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{F2B34A85-D465-5DD5-8D38-B7FB9ACE6F3A}']
  end;

  [DNTypeName('System.Net.NetworkInformation.PingReply')]
  DNPingReply = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{7FBB9D92-299C-3BBB-9B45-AE75C5F9BA07}']
  { getters & setters } 

    function get_Status: DNIPStatus;
    function get_Address: DDNC.System.Net.Primitives.DNIPAddress;
    function get_RoundtripTime: Int64;
    function get_Options: DNPingOptions;
    function get_Buffer: TArray<Byte>;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Status: DNIPStatus read get_Status;
    property Address: DDNC.System.Net.Primitives.DNIPAddress read get_Address;
    property RoundtripTime: Int64 read get_RoundtripTime;
    property Options: DNPingOptions read get_Options;
    property Buffer: TArray<Byte> read get_Buffer;
  end;

  TDNPingReply = class(TDNGenericImport<DNPingReplyClass, DNPingReply>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Net.Ping, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
