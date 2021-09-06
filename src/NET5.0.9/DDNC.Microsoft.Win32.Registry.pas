//----------------------------------------------------------------------------
//  Microsoft.Win32.Registry.dll: Microsoft.Win32.Registry, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.Microsoft.Win32.Registry
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCMICROSOFTWIN32REGISTRY}
unit DDNC.Microsoft.Win32.Registry;
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
  DDNC.System.Security.AccessControl,
  DDNC.System.Security.Principal.Windows;

type

{ enums }

  //-------------namespace: Microsoft.Win32----------------
  [DNTypeName('Microsoft.Win32.RegistryHive')]
  DNRegistryHive = type Integer;
  DNRegistryHiveHelper = record helper for DNRegistryHive
  public const
    ClassesRoot = -2147483648;
    CurrentUser = -2147483647;
    LocalMachine = -2147483646;
    Users = -2147483645;
    PerformanceData = -2147483644;
    CurrentConfig = -2147483643;
  end;


  //-------------namespace: Microsoft.Win32----------------
  [DNTypeName('Microsoft.Win32.RegistryKeyPermissionCheck')]
  DNRegistryKeyPermissionCheck = type Integer;
  DNRegistryKeyPermissionCheckHelper = record helper for DNRegistryKeyPermissionCheck
  public const
    Default_ = 0;
    ReadSubTree = 1;
    ReadWriteSubTree = 2;
  end;


  //-------------namespace: Microsoft.Win32----------------
  [DNTypeName('Microsoft.Win32.RegistryOptions')]
  DNRegistryOptions = type Integer;
  DNRegistryOptionsHelper = record helper for DNRegistryOptions
  public const
    None = 0;
    Volatile = 1;
  end;


  //-------------namespace: Microsoft.Win32----------------
  [DNTypeName('Microsoft.Win32.RegistryValueKind')]
  DNRegistryValueKind = type Integer;
  DNRegistryValueKindHelper = record helper for DNRegistryValueKind
  public const
    Unknown = 0;
    String_ = 1;
    ExpandString = 2;
    Binary = 3;
    DWord = 4;
    MultiString = 7;
    QWord = 11;
    None = -1;
  end;


  //-------------namespace: Microsoft.Win32----------------
  [DNTypeName('Microsoft.Win32.RegistryValueOptions')]
  DNRegistryValueOptions = type Integer;
  DNRegistryValueOptionsHelper = record helper for DNRegistryValueOptions
  public const
    None = 0;
    DoNotExpandEnvironmentNames = 1;
  end;


  //-------------namespace: Microsoft.Win32----------------
  [DNTypeName('Microsoft.Win32.RegistryView')]
  DNRegistryView = type Integer;
  DNRegistryViewHelper = record helper for DNRegistryView
  public const
    Default_ = 0;
    Registry64 = 256;
    Registry32 = 512;
  end;


  //-------------namespace: System.Security.AccessControl----------------
  [DNTypeName('System.Security.AccessControl.RegistryRights')]
  DNRegistryRights = type Integer;
  DNRegistryRightsHelper = record helper for DNRegistryRights
  public const
    QueryValues = 1;
    SetValue = 2;
    CreateSubKey = 4;
    EnumerateSubKeys = 8;
    Notify = 16;
    CreateLink = 32;
    Delete = 65536;
    ReadPermissions = 131072;
    WriteKey = 131078;
    ExecuteKey = 131097;
    ReadKey = 131097;
    ChangePermissions = 262144;
    TakeOwnership = 524288;
    FullControl = 983103;
  end;




type


{ declares }

  DNRegistry = interface; // type: Microsoft.Win32.Registry, namespace: Microsoft.Win32
  DNRegistryKey = interface; // type: Microsoft.Win32.RegistryKey, namespace: Microsoft.Win32
  DNSafeRegistryHandle = interface; // type: Microsoft.Win32.SafeHandles.SafeRegistryHandle, namespace: Microsoft.Win32.SafeHandles
  DNRegistryAccessRule = interface; // type: System.Security.AccessControl.RegistryAccessRule, namespace: System.Security.AccessControl
  DNRegistryAuditRule = interface; // type: System.Security.AccessControl.RegistryAuditRule, namespace: System.Security.AccessControl
  DNRegistrySecurity = interface; // type: System.Security.AccessControl.RegistrySecurity, namespace: System.Security.AccessControl


{ objects }

  //-------------namespace: Microsoft.Win32----------------
  DNRegistryClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{B2FB9C26-21D7-590B-A5BB-F7A73D16345B}']
  { static fields getter & setter } 

   function __fakeFieldGet_CurrentUser: DNRegistryKey;
   function __fakeFieldGet_LocalMachine: DNRegistryKey;
   function __fakeFieldGet_ClassesRoot: DNRegistryKey;
   function __fakeFieldGet_Users: DNRegistryKey;
   function __fakeFieldGet_PerformanceData: DNRegistryKey;
   function __fakeFieldGet_CurrentConfig: DNRegistryKey;

  { static fields } 

    {class} property CurrentUser: DNRegistryKey read __fakeFieldGet_CurrentUser;
    {class} property LocalMachine: DNRegistryKey read __fakeFieldGet_LocalMachine;
    {class} property ClassesRoot: DNRegistryKey read __fakeFieldGet_ClassesRoot;
    {class} property Users: DNRegistryKey read __fakeFieldGet_Users;
    {class} property PerformanceData: DNRegistryKey read __fakeFieldGet_PerformanceData;
    {class} property CurrentConfig: DNRegistryKey read __fakeFieldGet_CurrentConfig;

  { static methods } 

    {class} function GetValue(keyName: string; valueName: string; defaultValue: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNObject;
    {class} procedure SetValue(keyName: string; valueName: string; value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure SetValue(keyName: string; valueName: string; value: DDNC.System.Private.CoreLib.DNObject; valueKind: DNRegistryValueKind); overload;

  end;

  [DNTypeName('Microsoft.Win32.Registry')]
  DNRegistry = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{3374F105-7EA1-3D77-B233-AC6A5E97E438}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNRegistry = class(TDNGenericImport<DNRegistryClass, DNRegistry>) end;

  //-------------namespace: Microsoft.Win32----------------
  DNRegistryKeyClass = interface(DDNC.System.Private.CoreLib.DNMarshalByRefObjectClass)
  ['{21D97238-61B5-5654-A22F-E2DF72F06FA2}']
  { static methods } 

    {class} function OpenBaseKey(hKey: DNRegistryHive; view: DNRegistryView): DNRegistryKey;
    {class} function OpenRemoteBaseKey(hKey: DNRegistryHive; machineName: string): DNRegistryKey; overload;
    {class} function OpenRemoteBaseKey(hKey: DNRegistryHive; machineName: string; view: DNRegistryView): DNRegistryKey; overload;
    {class} function FromHandle(handle: DNSafeRegistryHandle): DNRegistryKey; overload;
    {class} function FromHandle(handle: DNSafeRegistryHandle; view: DNRegistryView): DNRegistryKey; overload;

  end;

  [DNTypeName('Microsoft.Win32.RegistryKey')]
  DNRegistryKey = interface(DDNC.System.Private.CoreLib.DNMarshalByRefObject)
  ['{897AE9B8-5F51-3F9A-9A69-5DACA1813FAF}']
  { getters & setters } 

    function get_SubKeyCount: Int32;
    function get_View: DNRegistryView;
    function get_Handle: DNSafeRegistryHandle;
    function get_ValueCount: Int32;
    function get_Name: string;

  { methods } 

    procedure Flush;
    procedure Close;
    procedure Dispose;
    function CreateSubKey(subkey: string): DNRegistryKey; overload;
    function CreateSubKey(subkey: string; writable: Boolean): DNRegistryKey; overload;
    function CreateSubKey(subkey: string; writable: Boolean; options: DNRegistryOptions): DNRegistryKey; overload;
    function CreateSubKey(subkey: string; permissionCheck: DNRegistryKeyPermissionCheck): DNRegistryKey; overload;
    function CreateSubKey(subkey: string; permissionCheck: DNRegistryKeyPermissionCheck; registryOptions: DNRegistryOptions; registrySecurity: DNRegistrySecurity): DNRegistryKey; overload;
    function CreateSubKey(subkey: string; permissionCheck: DNRegistryKeyPermissionCheck; registrySecurity: DNRegistrySecurity): DNRegistryKey; overload;
    function CreateSubKey(subkey: string; permissionCheck: DNRegistryKeyPermissionCheck; registryOptions: DNRegistryOptions): DNRegistryKey; overload;
    procedure DeleteSubKey(subkey: string); overload;
    procedure DeleteSubKey(subkey: string; throwOnMissingSubKey: Boolean); overload;
    procedure DeleteSubKeyTree(subkey: string); overload;
    procedure DeleteSubKeyTree(subkey: string; throwOnMissingSubKey: Boolean); overload;
    procedure DeleteValue(name: string); overload;
    procedure DeleteValue(name: string; throwOnMissingValue: Boolean); overload;
    function OpenSubKey(name: string): DNRegistryKey; overload;
    function OpenSubKey(name: string; writable: Boolean): DNRegistryKey; overload;
    function OpenSubKey(name: string; permissionCheck: DNRegistryKeyPermissionCheck): DNRegistryKey; overload;
    function OpenSubKey(name: string; rights: DNRegistryRights): DNRegistryKey; overload;
    function OpenSubKey(name: string; permissionCheck: DNRegistryKeyPermissionCheck; rights: DNRegistryRights): DNRegistryKey; overload;
    function GetAccessControl: DNRegistrySecurity; overload;
    function GetAccessControl(includeSections: DDNC.System.Security.AccessControl.DNAccessControlSections): DNRegistrySecurity; overload;
    procedure SetAccessControl(registrySecurity: DNRegistrySecurity);
    function GetSubKeyNames: TArray<string>;
    function GetValueNames: TArray<string>;
    function GetValue(name: string): DDNC.System.Private.CoreLib.DNObject; overload;
    function GetValue(name: string; defaultValue: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNObject; overload;
    function GetValue(name: string; defaultValue: DDNC.System.Private.CoreLib.DNObject; options: DNRegistryValueOptions): DDNC.System.Private.CoreLib.DNObject; overload;
    function GetValueKind(name: string): DNRegistryValueKind;
    procedure SetValue(name: string; value: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure SetValue(name: string; value: DDNC.System.Private.CoreLib.DNObject; valueKind: DNRegistryValueKind); overload;
    function ToString: string;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property SubKeyCount: Int32 read get_SubKeyCount;
    property View: DNRegistryView read get_View;
    property Handle: DNSafeRegistryHandle read get_Handle;
    property ValueCount: Int32 read get_ValueCount;
    property Name: string read get_Name;
  end;

  TDNRegistryKey = class(TDNGenericImport<DNRegistryKeyClass, DNRegistryKey>) end;

  //-------------namespace: Microsoft.Win32.SafeHandles----------------
  DNSafeRegistryHandleClass = interface(DDNC.System.Private.CoreLib.DNSafeHandleZeroOrMinusOneIsInvalidClass)
  ['{8FD410F9-C41B-5C81-965A-A15EC68F54A8}']
  { constructors } 

    {class} function init(preexistingHandle: IntPtr; ownsHandle: Boolean): DNSafeRegistryHandle;

  end;

  [DNTypeName('Microsoft.Win32.SafeHandles.SafeRegistryHandle')]
  DNSafeRegistryHandle = interface(DDNC.System.Private.CoreLib.DNSafeHandleZeroOrMinusOneIsInvalid)
  ['{9BFA9975-9CCE-3009-A7F7-014CAC1C39ED}']
  { getters & setters } 

    function get_IsInvalid: Boolean;
    function get_IsClosed: Boolean;

  { methods } 

    function DangerousGetHandle: IntPtr;
    procedure Close;
    procedure Dispose;
    procedure SetHandleAsInvalid;
    procedure DangerousAddRef(out success: Boolean);
    procedure DangerousRelease;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property IsInvalid: Boolean read get_IsInvalid;
    property IsClosed: Boolean read get_IsClosed;
  end;

  TDNSafeRegistryHandle = class(TDNGenericImport<DNSafeRegistryHandleClass, DNSafeRegistryHandle>) end;

  //-------------namespace: System.Security.AccessControl----------------
  DNRegistryAccessRuleClass = interface(DNObjectClass)
  ['{A37AC701-3518-562A-9F2C-43F5F52B9E97}']
  { constructors } 

    {class} function init(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference; registryRights: DNRegistryRights; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DNRegistryAccessRule; overload;
    {class} function init(identity: string; registryRights: DNRegistryRights; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DNRegistryAccessRule; overload;
    {class} function init(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference; registryRights: DNRegistryRights; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DNRegistryAccessRule; overload;
    {class} function init(identity: string; registryRights: DNRegistryRights; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DNRegistryAccessRule; overload;

  end;

  [DNTypeName('System.Security.AccessControl.RegistryAccessRule')]
  DNRegistryAccessRule = interface(DNObject)
  ['{3705E902-2514-3407-A596-42B571B9EEE2}']
  { getters & setters } 

    function get_RegistryRights: DNRegistryRights;
    function get_AccessControlType: DDNC.System.Security.AccessControl.DNAccessControlType;
    function get_IdentityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference;
    function get_IsInherited: Boolean;
    function get_InheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags;
    function get_PropagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property RegistryRights: DNRegistryRights read get_RegistryRights;
    property AccessControlType: DDNC.System.Security.AccessControl.DNAccessControlType read get_AccessControlType;
    property IdentityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference read get_IdentityReference;
    property IsInherited: Boolean read get_IsInherited;
    property InheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags read get_InheritanceFlags;
    property PropagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags read get_PropagationFlags;
  end;

  TDNRegistryAccessRule = class(TDNGenericImport<DNRegistryAccessRuleClass, DNRegistryAccessRule>) end;

  //-------------namespace: System.Security.AccessControl----------------
  DNRegistryAuditRuleClass = interface(DNObjectClass)
  ['{D83942E6-A5A6-5877-BBE9-D497EF3410A9}']
  { constructors } 

    {class} function init(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference; registryRights: DNRegistryRights; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; flags: DDNC.System.Security.AccessControl.DNAuditFlags): DNRegistryAuditRule; overload;
    {class} function init(identity: string; registryRights: DNRegistryRights; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; flags: DDNC.System.Security.AccessControl.DNAuditFlags): DNRegistryAuditRule; overload;

  end;

  [DNTypeName('System.Security.AccessControl.RegistryAuditRule')]
  DNRegistryAuditRule = interface(DNObject)
  ['{2C5CA73F-6551-3359-8518-7AEB61A18BDC}']
  { getters & setters } 

    function get_RegistryRights: DNRegistryRights;
    function get_AuditFlags: DDNC.System.Security.AccessControl.DNAuditFlags;
    function get_IdentityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference;
    function get_IsInherited: Boolean;
    function get_InheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags;
    function get_PropagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property RegistryRights: DNRegistryRights read get_RegistryRights;
    property AuditFlags: DDNC.System.Security.AccessControl.DNAuditFlags read get_AuditFlags;
    property IdentityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference read get_IdentityReference;
    property IsInherited: Boolean read get_IsInherited;
    property InheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags read get_InheritanceFlags;
    property PropagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags read get_PropagationFlags;
  end;

  TDNRegistryAuditRule = class(TDNGenericImport<DNRegistryAuditRuleClass, DNRegistryAuditRule>) end;

  //-------------namespace: System.Security.AccessControl----------------
  DNRegistrySecurityClass = interface(DNObjectClass)
  ['{03041639-57CB-5017-9A19-985449288861}']
  { constructors } 

    {class} function init: DNRegistrySecurity;

  end;

  [DNTypeName('System.Security.AccessControl.RegistrySecurity')]
  DNRegistrySecurity = interface(DNObject)
  ['{3D2F9D84-794E-32FC-914D-988F04F982EF}']
  { getters & setters } 

    function get_AccessRightType: DDNC.System.Private.CoreLib.DNType;
    function get_AccessRuleType: DDNC.System.Private.CoreLib.DNType;
    function get_AuditRuleType: DDNC.System.Private.CoreLib.DNType;
    function get_AreAccessRulesProtected: Boolean;
    function get_AreAuditRulesProtected: Boolean;
    function get_AreAccessRulesCanonical: Boolean;
    function get_AreAuditRulesCanonical: Boolean;

  { methods } 

    function AccessRuleFactory(identityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference; accessMask: Int32; isInherited: Boolean; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DDNC.System.Security.AccessControl.DNAccessRule;
    function AuditRuleFactory(identityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference; accessMask: Int32; isInherited: Boolean; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; flags: DDNC.System.Security.AccessControl.DNAuditFlags): DDNC.System.Security.AccessControl.DNAuditRule;
    procedure AddAccessRule(rule: DNRegistryAccessRule);
    procedure SetAccessRule(rule: DNRegistryAccessRule);
    procedure ResetAccessRule(rule: DNRegistryAccessRule);
    function RemoveAccessRule(rule: DNRegistryAccessRule): Boolean;
    procedure RemoveAccessRuleAll(rule: DNRegistryAccessRule);
    procedure RemoveAccessRuleSpecific(rule: DNRegistryAccessRule);
    procedure AddAuditRule(rule: DNRegistryAuditRule);
    procedure SetAuditRule(rule: DNRegistryAuditRule);
    function RemoveAuditRule(rule: DNRegistryAuditRule): Boolean;
    procedure RemoveAuditRuleAll(rule: DNRegistryAuditRule);
    procedure RemoveAuditRuleSpecific(rule: DNRegistryAuditRule);
    function GetAccessRules(includeExplicit: Boolean; includeInherited: Boolean; targetType: DDNC.System.Private.CoreLib.DNType): DDNC.System.Security.AccessControl.DNAuthorizationRuleCollection;
    function GetAuditRules(includeExplicit: Boolean; includeInherited: Boolean; targetType: DDNC.System.Private.CoreLib.DNType): DDNC.System.Security.AccessControl.DNAuthorizationRuleCollection;
    function GetOwner(targetType: DDNC.System.Private.CoreLib.DNType): DDNC.System.Security.Principal.Windows.DNIdentityReference;
    procedure SetOwner(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference);
    function GetGroup(targetType: DDNC.System.Private.CoreLib.DNType): DDNC.System.Security.Principal.Windows.DNIdentityReference;
    procedure SetGroup(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference);
    procedure PurgeAccessRules(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference);
    procedure PurgeAuditRules(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference);
    procedure SetAccessRuleProtection(isProtected: Boolean; preserveInheritance: Boolean);
    procedure SetAuditRuleProtection(isProtected: Boolean; preserveInheritance: Boolean);
    function GetSecurityDescriptorSddlForm(includeSections: DDNC.System.Security.AccessControl.DNAccessControlSections): string;
    procedure SetSecurityDescriptorSddlForm(sddlForm: string); overload;
    procedure SetSecurityDescriptorSddlForm(sddlForm: string; includeSections: DDNC.System.Security.AccessControl.DNAccessControlSections); overload;
    function GetSecurityDescriptorBinaryForm: TArray<Byte>;
    procedure SetSecurityDescriptorBinaryForm(binaryForm: TArray<Byte>); overload;
    procedure SetSecurityDescriptorBinaryForm(binaryForm: TArray<Byte>; includeSections: DDNC.System.Security.AccessControl.DNAccessControlSections); overload;
    function ModifyAccessRule(modification: DDNC.System.Security.AccessControl.DNAccessControlModification; rule: DDNC.System.Security.AccessControl.DNAccessRule; out modified: Boolean): Boolean;
    function ModifyAuditRule(modification: DDNC.System.Security.AccessControl.DNAccessControlModification; rule: DDNC.System.Security.AccessControl.DNAuditRule; out modified: Boolean): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property AccessRightType: DDNC.System.Private.CoreLib.DNType read get_AccessRightType;
    property AccessRuleType: DDNC.System.Private.CoreLib.DNType read get_AccessRuleType;
    property AuditRuleType: DDNC.System.Private.CoreLib.DNType read get_AuditRuleType;
    property AreAccessRulesProtected: Boolean read get_AreAccessRulesProtected;
    property AreAuditRulesProtected: Boolean read get_AreAuditRulesProtected;
    property AreAccessRulesCanonical: Boolean read get_AreAccessRulesCanonical;
    property AreAuditRulesCanonical: Boolean read get_AreAuditRulesCanonical;
  end;

  TDNRegistrySecurity = class(TDNGenericImport<DNRegistrySecurityClass, DNRegistrySecurity>) end;


implementation


initialization
  LoadAssemblyModule('Microsoft.Win32.Registry.dll', True);

finalization

end.