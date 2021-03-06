//----------------------------------------------------------------------------
//  System.Resources.Writer.dll: System.Resources.Writer, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Resources.Writer
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Resources.Writer;

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

  DNIResourceWriter = interface; // type: System.Resources.IResourceWriter, namespace: System.Resources
  DNResourceWriter = interface; // type: System.Resources.ResourceWriter, namespace: System.Resources


{ objects }

  //-------------namespace: System.Resources----------------
  [DNTypeName('System.Resources.IResourceWriter')]
  DNIResourceWriter = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{E97AA6E5-595E-31C3-82F0-688FB91954C6}']
  { methods } 

    procedure AddResource(name: string; value: string); overload;
    procedure AddResource(name: string; value: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure AddResource(name: string; value: TArray<Byte>); overload;
    procedure Close;
    procedure Generate;

  end;

  //-------------namespace: System.Resources----------------
  DNResourceWriterClass = interface(DNObjectClass)
  ['{B37EB0B1-C71F-5A69-AA96-F56BA5D160F1}']
  { constructors } 

    {class} function init(fileName: string): DNResourceWriter; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream): DNResourceWriter; overload;

  end;

  [DNTypeName('System.Resources.ResourceWriter')]
  DNResourceWriter = interface(DNIResourceWriter)
  ['{2338A3E7-F3C8-3F80-99EA-1DFAB57B528D}']
  { getters & setters } 

    function get_TypeNameConverter: DDNC.System.Private.CoreLib.DNFunc<DDNC.System.Private.CoreLib.DNType, string>;
    procedure set_TypeNameConverter(value: DDNC.System.Private.CoreLib.DNFunc<DDNC.System.Private.CoreLib.DNType, string>);

  { methods } 

    procedure AddResource(name: string; value: DDNC.System.Private.CoreLib.DNStream); overload;
    procedure AddResourceData(name: string; typeName: string; serializedData: TArray<Byte>);
    procedure AddResource(name: string; value: string); overload;
    procedure AddResource(name: string; value: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure AddResource(name: string; value: DDNC.System.Private.CoreLib.DNStream; closeAfterWrite: Boolean); overload;
    procedure AddResource(name: string; value: TArray<Byte>); overload;
    procedure Close;
    procedure Dispose;
    procedure Generate;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property TypeNameConverter: DDNC.System.Private.CoreLib.DNFunc<DDNC.System.Private.CoreLib.DNType, string> read get_TypeNameConverter write set_TypeNameConverter;
  end;

  TDNResourceWriter = class(TDNGenericImport<DNResourceWriterClass, DNResourceWriter>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Resources.Writer, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
