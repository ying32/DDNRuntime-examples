//----------------------------------------------------------------------------
//  System.IO.FileSystem.Watcher.dll: System.IO.FileSystem.Watcher, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.IO.FileSystem.Watcher
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMIOFILESYSTEMWATCHER}
unit DDNC.System.IO.FileSystem.Watcher;
{$ENDIF}

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.ComponentModel.Primitives;

type

{ enums }

  //-------------namespace: System.IO----------------
  [DNTypeName('System.IO.NotifyFilters')]
  DNNotifyFilters = type Integer;
  DNNotifyFiltersHelper = record helper for DNNotifyFilters
  public const
    FileName = 1;
    DirectoryName = 2;
    Attributes = 4;
    Size = 8;
    LastWrite = 16;
    LastAccess = 32;
    CreationTime = 64;
    Security = 256;
  end;


  //-------------namespace: System.IO----------------
  [DNTypeName('System.IO.WatcherChangeTypes')]
  DNWatcherChangeTypes = type Integer;
  DNWatcherChangeTypesHelper = record helper for DNWatcherChangeTypes
  public const
    Created = 1;
    Deleted = 2;
    Changed = 4;
    Renamed = 8;
    All = 15;
  end;




type


{ declares }

  DNErrorEventArgs = interface; // type: System.IO.ErrorEventArgs, namespace: System.IO
  DNFileSystemEventArgs = interface; // type: System.IO.FileSystemEventArgs, namespace: System.IO
  DNRenamedEventArgs = interface; // type: System.IO.RenamedEventArgs, namespace: System.IO
  DNInternalBufferOverflowException = interface; // type: System.IO.InternalBufferOverflowException, namespace: System.IO
  DNFileSystemWatcher = interface; // type: System.IO.FileSystemWatcher, namespace: System.IO
  DNWaitForChangedResult = interface; // type: System.IO.WaitForChangedResult, namespace: System.IO

{ delegates }

  [DNTypeName('System.IO.ErrorEventHandler')]
  DNErrorEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNErrorEventArgs) of object;

  [DNTypeName('System.IO.FileSystemEventHandler')]
  DNFileSystemEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNFileSystemEventArgs) of object;

  [DNTypeName('System.IO.RenamedEventHandler')]
  DNRenamedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNRenamedEventArgs) of object;




{ objects }

  //-------------namespace: System.IO----------------
  DNErrorEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{85C51599-740C-5676-B6D8-233212BCFCAB}']
  { constructors } 

    {class} function init(exception: DDNC.System.Private.CoreLib.DNException): DNErrorEventArgs;

  end;

  [DNTypeName('System.IO.ErrorEventArgs')]
  DNErrorEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{49F89977-67AA-3889-BA29-39D5EE51AB5E}']
  { methods } 

    function GetException: DDNC.System.Private.CoreLib.DNException;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNErrorEventArgs = class(TDNGenericImport<DNErrorEventArgsClass, DNErrorEventArgs>) end;

  //-------------namespace: System.IO----------------
  DNFileSystemEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{171E0025-39B2-526C-8CDB-3AD49AD67AE7}']
  { constructors } 

    {class} function init(changeType: DNWatcherChangeTypes; directory: string; name: string): DNFileSystemEventArgs;

  end;

  [DNTypeName('System.IO.FileSystemEventArgs')]
  DNFileSystemEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{A5712B59-E6FD-3EC1-877E-B060858FDB12}']
  { getters & setters } 

    function get_ChangeType: DNWatcherChangeTypes;
    function get_FullPath: string;
    function get_Name: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property ChangeType: DNWatcherChangeTypes read get_ChangeType;
    property FullPath: string read get_FullPath;
    property Name: string read get_Name;
  end;

  TDNFileSystemEventArgs = class(TDNGenericImport<DNFileSystemEventArgsClass, DNFileSystemEventArgs>) end;

  //-------------namespace: System.IO----------------
  DNRenamedEventArgsClass = interface(DNFileSystemEventArgsClass)
  ['{39D9BCAB-CE38-5029-9257-718D35159690}']
  { constructors } 

    {class} function init(changeType: DNWatcherChangeTypes; directory: string; name: string; oldName: string): DNRenamedEventArgs;

  end;

  [DNTypeName('System.IO.RenamedEventArgs')]
  DNRenamedEventArgs = interface(DNFileSystemEventArgs)
  ['{FB85EEA1-1DDA-3274-80B9-68CDE1D2B8EF}']
  { getters & setters } 

    function get_OldFullPath: string;
    function get_OldName: string;
    function get_ChangeType: DNWatcherChangeTypes;
    function get_FullPath: string;
    function get_Name: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property OldFullPath: string read get_OldFullPath;
    property OldName: string read get_OldName;
    property ChangeType: DNWatcherChangeTypes read get_ChangeType;
    property FullPath: string read get_FullPath;
    property Name: string read get_Name;
  end;

  TDNRenamedEventArgs = class(TDNGenericImport<DNRenamedEventArgsClass, DNRenamedEventArgs>) end;

  //-------------namespace: System.IO----------------
  DNInternalBufferOverflowExceptionClass = interface(DDNC.System.Private.CoreLib.DNSystemExceptionClass)
  ['{B804CCF8-380F-5F8A-B15A-898257F6E273}']
  { constructors } 

    {class} function init: DNInternalBufferOverflowException; overload;
    {class} function init(message: string): DNInternalBufferOverflowException; overload;
    {class} function init(message: string; inner: DDNC.System.Private.CoreLib.DNException): DNInternalBufferOverflowException; overload;

  end;

  [DNTypeName('System.IO.InternalBufferOverflowException')]
  DNInternalBufferOverflowException = interface(DDNC.System.Private.CoreLib.DNSystemException)
  ['{CD8B6445-0BAB-3D6C-B1A1-5C8EE2135EA6}']
  { getters & setters } 

    function get_Message: string;
    function get_Data: DDNC.System.Private.CoreLib.DNIDictionary;
    function get_InnerException: DDNC.System.Private.CoreLib.DNException;
    function get_TargetSite: DDNC.System.Private.CoreLib.DNMethodBase;
    function get_StackTrace: string;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;

  { methods } 

    function GetBaseException: DDNC.System.Private.CoreLib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Message: string read get_Message;
    property Data: DDNC.System.Private.CoreLib.DNIDictionary read get_Data;
    property InnerException: DDNC.System.Private.CoreLib.DNException read get_InnerException;
    property TargetSite: DDNC.System.Private.CoreLib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNInternalBufferOverflowException = class(TDNGenericImport<DNInternalBufferOverflowExceptionClass, DNInternalBufferOverflowException>) end;

  //-------------namespace: System.IO----------------
  DNFileSystemWatcherClass = interface(DNObjectClass)
  ['{2E835C9B-3D66-5479-BAB9-074E6531B2E9}']
  { constructors } 

    {class} function init: DNFileSystemWatcher; overload;
    {class} function init(path: string): DNFileSystemWatcher; overload;
    {class} function init(path: string; filter: string): DNFileSystemWatcher; overload;

  end;

  [DNTypeName('System.IO.FileSystemWatcher')]
  DNFileSystemWatcher = interface(DNObject)
  ['{4207FB0B-63E3-33B6-B333-5CA181A43087}']
  { getters & setters } 

    function get_NotifyFilter: DNNotifyFilters;
    procedure set_NotifyFilter(value: DNNotifyFilters);
    function get_EnableRaisingEvents: Boolean;
    procedure set_EnableRaisingEvents(value: Boolean);
    function get_Filter: string;
    procedure set_Filter(value: string);
    function get_IncludeSubdirectories: Boolean;
    procedure set_IncludeSubdirectories(value: Boolean);
    function get_InternalBufferSize: Int32;
    procedure set_InternalBufferSize(value: Int32);
    function get_Path: string;
    procedure set_Path(value: string);
    function get_Site: DDNC.System.ComponentModel.Primitives.DNISite;
    procedure set_Site(value: DDNC.System.ComponentModel.Primitives.DNISite);
    function get_SynchronizingObject: DDNC.System.ComponentModel.Primitives.DNISynchronizeInvoke;
    procedure set_SynchronizingObject(value: DDNC.System.ComponentModel.Primitives.DNISynchronizeInvoke);
    function get_Container: DDNC.System.ComponentModel.Primitives.DNIContainer;

  { events } 

    procedure add_Changed(value: DNFileSystemEventHandler);
    procedure remove_Changed(value: DNFileSystemEventHandler);
    procedure add_Created(value: DNFileSystemEventHandler);
    procedure remove_Created(value: DNFileSystemEventHandler);
    procedure add_Deleted(value: DNFileSystemEventHandler);
    procedure remove_Deleted(value: DNFileSystemEventHandler);
    procedure add_Error(value: DNErrorEventHandler);
    procedure remove_Error(value: DNErrorEventHandler);
    procedure add_Renamed(value: DNRenamedEventHandler);
    procedure remove_Renamed(value: DNRenamedEventHandler);
    procedure add_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);

  { methods } 

    function WaitForChanged(changeType: DNWatcherChangeTypes): DNWaitForChangedResult; overload;
    function WaitForChanged(changeType: DNWatcherChangeTypes; timeout: Int32): DNWaitForChangedResult; overload;
    procedure BeginInit;
    procedure EndInit;
    procedure Dispose;
    function ToString: string;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property NotifyFilter: DNNotifyFilters read get_NotifyFilter write set_NotifyFilter;
    property EnableRaisingEvents: Boolean read get_EnableRaisingEvents write set_EnableRaisingEvents;
    property Filter: string read get_Filter write set_Filter;
    property IncludeSubdirectories: Boolean read get_IncludeSubdirectories write set_IncludeSubdirectories;
    property InternalBufferSize: Int32 read get_InternalBufferSize write set_InternalBufferSize;
    property Path: string read get_Path write set_Path;
    property Site: DDNC.System.ComponentModel.Primitives.DNISite read get_Site write set_Site;
    property SynchronizingObject: DDNC.System.ComponentModel.Primitives.DNISynchronizeInvoke read get_SynchronizingObject write set_SynchronizingObject;
    property Container: DDNC.System.ComponentModel.Primitives.DNIContainer read get_Container;
  end;

  TDNFileSystemWatcher = class(TDNGenericImport<DNFileSystemWatcherClass, DNFileSystemWatcher>) end;

  //-------------namespace: System.IO----------------
  DNWaitForChangedResultClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{9C05A4F6-A32B-5EFB-B27C-D582A7859B88}']
  end;

  [DNTypeName('System.IO.WaitForChangedResult')]
  DNWaitForChangedResult = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{6B14E1DC-49E6-3120-9322-023CF77A1B18}']
  { getters & setters } 

    function get_ChangeType: DNWatcherChangeTypes;
    procedure set_ChangeType(value: DNWatcherChangeTypes);
    function get_Name: string;
    procedure set_Name(value: string);
    function get_OldName: string;
    procedure set_OldName(value: string);
    function get_TimedOut: Boolean;
    procedure set_TimedOut(value: Boolean);

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property ChangeType: DNWatcherChangeTypes read get_ChangeType write set_ChangeType;
    property Name: string read get_Name write set_Name;
    property OldName: string read get_OldName write set_OldName;
    property TimedOut: Boolean read get_TimedOut write set_TimedOut;
  end;

  TDNWaitForChangedResult = class(TDNGenericImport<DNWaitForChangedResultClass, DNWaitForChangedResult>) end;


implementation


initialization
  LoadAssemblyModule('System.IO.FileSystem.Watcher.dll', True);

finalization

end.