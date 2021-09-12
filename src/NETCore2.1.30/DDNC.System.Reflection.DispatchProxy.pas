//----------------------------------------------------------------------------
//  System.Reflection.DispatchProxy.dll: System.Reflection.DispatchProxy, Version=4.0.4.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Reflection.DispatchProxy
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Reflection.DispatchProxy;

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

  DNDispatchProxy = interface; // type: System.Reflection.DispatchProxy, namespace: System.Reflection


{ objects }

  //-------------namespace: System.Reflection----------------
  DNDispatchProxyClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{29C62815-5C90-5833-BC26-DDEDAB4C87BB}']
  end;

  [DNTypeName('System.Reflection.DispatchProxy')]
  DNDispatchProxy = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{C9E874E0-6719-3E07-80D9-7A60273DA5C7}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNDispatchProxy = class(TDNGenericImport<DNDispatchProxyClass, DNDispatchProxy>) end;


implementation


initialization
  LoadAssemblyModule('System.Reflection.DispatchProxy, Version=4.0.4.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.