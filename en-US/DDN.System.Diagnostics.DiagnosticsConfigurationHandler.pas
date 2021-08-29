//----------------------------------------------------------------------------
//  System.dll: System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Framework: 4.0
//----------------------------------------------------------------------------
//  UnitName: DDN.System.Diagnostics.DiagnosticsConfigurationHandler
//  Author: ying32
//----------------------------------------------------------------------------

unit DDN.System.Diagnostics.DiagnosticsConfigurationHandler;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDN.mscorlib,
  DDN.System.Xml,
  DDN.System.Configuration;

type


{ declares }

  DNDiagnosticsConfigurationHandler = interface; // type: System.Diagnostics.DiagnosticsConfigurationHandler, namespace: System.Diagnostics


{ objects }

  //-------------namespace: System.Diagnostics----------------
  DNDiagnosticsConfigurationHandlerClass = interface(DNObjectClass)
  ['{5C5F6F38-5C2B-501A-864B-790DBE104E0C}']
  { constructors } 

    ///<summary>Initializes a new instance of the <see cref="T:System.Diagnostics.DiagnosticsConfigurationHandler" />
    ///  class.</summary>
    {class} function init: DNDiagnosticsConfigurationHandler;

  end;

  ///<summary>Handles the diagnostics section of configuration files.</summary>
  [DNTypeName('System.Diagnostics.DiagnosticsConfigurationHandler')]
  DNDiagnosticsConfigurationHandler = interface(DNIConfigurationSectionHandler)
  ['{9C38D18B-1694-3588-B621-F1055E8819F1}']
  { methods } 

    ///<summary>Parses the configuration settings for the &lt;system.diagnostics&gt; Element section of configuration files.</summary>
    ///  <param name="parent">The object inherited from the parent path</param>
    ///  <param name="configContext">Reserved. Used in ASP.NET to convey the virtual path of the configuration being evaluated.</param>
    ///  <param name="section">The root XML node at the section to handle.</param>
    ///<returns>A new configuration object, in the form of a <see cref="T:System.Collections.Hashtable" />
    ///  .</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">Switches could not be found.-or-Assert could not be found.-or-Trace could not be found.-or-Performance counters could not be found.</exception>
    function Create(parent: DDN.mscorlib.DNObject; configContext: DDN.mscorlib.DNObject; section: DDN.System.Xml.DNXmlNode): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNDiagnosticsConfigurationHandler = class(TDNGenericImport<DNDiagnosticsConfigurationHandlerClass, DNDiagnosticsConfigurationHandler>) end;


implementation

end.