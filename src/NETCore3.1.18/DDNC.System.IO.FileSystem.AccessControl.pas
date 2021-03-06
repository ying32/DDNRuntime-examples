//----------------------------------------------------------------------------
//  System.IO.FileSystem.AccessControl.dll: System.IO.FileSystem.AccessControl, Version=4.0.5.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.IO.FileSystem.AccessControl
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.IO.FileSystem.AccessControl;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.IO.FileSystem,
  DDNC.System.Security.AccessControl,
  DDNC.System.Security.Principal.Windows;

type

{ enums }

  //-------------namespace: System.Security.AccessControl----------------
  [DNTypeName('System.Security.AccessControl.FileSystemRights')]
  DNFileSystemRights = type Integer;
  DNFileSystemRightsHelper = record helper for DNFileSystemRights
  public const
    ListDirectory = 1;
    ReadData = 1;
    WriteData = 2;
    CreateFiles = 2;
    CreateDirectories = 4;
    AppendData = 4;
    ReadExtendedAttributes = 8;
    WriteExtendedAttributes = 16;
    Traverse = 32;
    ExecuteFile = 32;
    DeleteSubdirectoriesAndFiles = 64;
    ReadAttributes = 128;
    WriteAttributes = 256;
    Write = 278;
    Delete = 65536;
    ReadPermissions = 131072;
    Read = 131209;
    ReadAndExecute = 131241;
    Modify = 197055;
    ChangePermissions = 262144;
    TakeOwnership = 524288;
    Synchronize = 1048576;
    FullControl = 2032127;
  end;




type


{ declares }

  DNFileSystemAclExtensions = interface; // type: System.IO.FileSystemAclExtensions, namespace: System.IO
  DNFileSystemAccessRule = interface; // type: System.Security.AccessControl.FileSystemAccessRule, namespace: System.Security.AccessControl
  DNFileSystemAuditRule = interface; // type: System.Security.AccessControl.FileSystemAuditRule, namespace: System.Security.AccessControl
  DNFileSystemSecurity = interface; // type: System.Security.AccessControl.FileSystemSecurity, namespace: System.Security.AccessControl
  DNDirectorySecurity = interface; // type: System.Security.AccessControl.DirectorySecurity, namespace: System.Security.AccessControl
  DNFileSecurity = interface; // type: System.Security.AccessControl.FileSecurity, namespace: System.Security.AccessControl
  DNDirectoryObjectSecurity = interface; // type: System.Security.AccessControl.DirectoryObjectSecurity, namespace: System.Security.AccessControl


{ objects }

  //-------------namespace: System.IO----------------
  DNFileSystemAclExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{2D1AE2A9-949A-570C-B97F-664A00F10CFB}']
  { static methods } 

    {class} function GetAccessControl(directoryInfo: DDNC.System.IO.FileSystem.DNDirectoryInfo): DNDirectorySecurity; overload;
    {class} function GetAccessControl(directoryInfo: DDNC.System.IO.FileSystem.DNDirectoryInfo; includeSections: DDNC.System.Security.AccessControl.DNAccessControlSections): DNDirectorySecurity; overload;
    {class} procedure SetAccessControl(directoryInfo: DDNC.System.IO.FileSystem.DNDirectoryInfo; directorySecurity: DNDirectorySecurity); overload;
    {class} function GetAccessControl(fileInfo: DDNC.System.IO.FileSystem.DNFileInfo): DNFileSecurity; overload;
    {class} function GetAccessControl(fileInfo: DDNC.System.IO.FileSystem.DNFileInfo; includeSections: DDNC.System.Security.AccessControl.DNAccessControlSections): DNFileSecurity; overload;
    {class} procedure SetAccessControl(fileInfo: DDNC.System.IO.FileSystem.DNFileInfo; fileSecurity: DNFileSecurity); overload;
    {class} function GetAccessControl(fileStream: DDNC.System.Private.CoreLib.DNFileStream): DNFileSecurity; overload;
    {class} procedure SetAccessControl(fileStream: DDNC.System.Private.CoreLib.DNFileStream; fileSecurity: DNFileSecurity); overload;
    {class} procedure Create(directoryInfo: DDNC.System.IO.FileSystem.DNDirectoryInfo; directorySecurity: DNDirectorySecurity); overload;
    {class} function Create(fileInfo: DDNC.System.IO.FileSystem.DNFileInfo; mode: DDNC.System.Private.CoreLib.DNFileMode; rights: DNFileSystemRights; share: DDNC.System.Private.CoreLib.DNFileShare; bufferSize: Int32; options: DDNC.System.Private.CoreLib.DNFileOptions; fileSecurity: DNFileSecurity): DDNC.System.Private.CoreLib.DNFileStream; overload;

  end;

  [DNTypeName('System.IO.FileSystemAclExtensions')]
  DNFileSystemAclExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{312C0770-170C-39F8-818B-6B864D6AEFE9}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNFileSystemAclExtensions = class(TDNGenericImport<DNFileSystemAclExtensionsClass, DNFileSystemAclExtensions>) end;

  //-------------namespace: System.Security.AccessControl----------------
  DNFileSystemAccessRuleClass = interface(DNObjectClass)
  ['{105E8A81-D968-5145-B293-642852D5B740}']
  { constructors } 

    {class} function init(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference; fileSystemRights: DNFileSystemRights; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DNFileSystemAccessRule; overload;
    {class} function init(identity: string; fileSystemRights: DNFileSystemRights; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DNFileSystemAccessRule; overload;
    {class} function init(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference; fileSystemRights: DNFileSystemRights; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DNFileSystemAccessRule; overload;
    {class} function init(identity: string; fileSystemRights: DNFileSystemRights; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DNFileSystemAccessRule; overload;

  end;

  [DNTypeName('System.Security.AccessControl.FileSystemAccessRule')]
  DNFileSystemAccessRule = interface(DNObject)
  ['{26E393D4-7894-3C54-A5F7-DF411B83E0E3}']
  { getters & setters } 

    function get_FileSystemRights: DNFileSystemRights;
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

    property FileSystemRights: DNFileSystemRights read get_FileSystemRights;
    property AccessControlType: DDNC.System.Security.AccessControl.DNAccessControlType read get_AccessControlType;
    property IdentityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference read get_IdentityReference;
    property IsInherited: Boolean read get_IsInherited;
    property InheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags read get_InheritanceFlags;
    property PropagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags read get_PropagationFlags;
  end;

  TDNFileSystemAccessRule = class(TDNGenericImport<DNFileSystemAccessRuleClass, DNFileSystemAccessRule>) end;

  //-------------namespace: System.Security.AccessControl----------------
  DNFileSystemAuditRuleClass = interface(DNObjectClass)
  ['{7BC180E3-2760-5CAD-B5BA-009F05DA54DE}']
  { constructors } 

    {class} function init(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference; fileSystemRights: DNFileSystemRights; flags: DDNC.System.Security.AccessControl.DNAuditFlags): DNFileSystemAuditRule; overload;
    {class} function init(identity: DDNC.System.Security.Principal.Windows.DNIdentityReference; fileSystemRights: DNFileSystemRights; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; flags: DDNC.System.Security.AccessControl.DNAuditFlags): DNFileSystemAuditRule; overload;
    {class} function init(identity: string; fileSystemRights: DNFileSystemRights; flags: DDNC.System.Security.AccessControl.DNAuditFlags): DNFileSystemAuditRule; overload;
    {class} function init(identity: string; fileSystemRights: DNFileSystemRights; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; flags: DDNC.System.Security.AccessControl.DNAuditFlags): DNFileSystemAuditRule; overload;

  end;

  [DNTypeName('System.Security.AccessControl.FileSystemAuditRule')]
  DNFileSystemAuditRule = interface(DNObject)
  ['{AFA07092-6FDC-347A-9103-4AA0FCE354A0}']
  { getters & setters } 

    function get_FileSystemRights: DNFileSystemRights;
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

    property FileSystemRights: DNFileSystemRights read get_FileSystemRights;
    property AuditFlags: DDNC.System.Security.AccessControl.DNAuditFlags read get_AuditFlags;
    property IdentityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference read get_IdentityReference;
    property IsInherited: Boolean read get_IsInherited;
    property InheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags read get_InheritanceFlags;
    property PropagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags read get_PropagationFlags;
  end;

  TDNFileSystemAuditRule = class(TDNGenericImport<DNFileSystemAuditRuleClass, DNFileSystemAuditRule>) end;

  //-------------namespace: System.Security.AccessControl----------------
  DNFileSystemSecurityClass = interface(DNObjectClass)
  ['{37BF0908-C57B-565B-BC18-DBBA5C0E38EE}']
  end;

  [DNTypeName('System.Security.AccessControl.FileSystemSecurity')]
  DNFileSystemSecurity = interface(DNObject)
  ['{12457608-BFE5-35E8-BFB6-585ECB39593B}']
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
    procedure AddAccessRule(rule: DNFileSystemAccessRule);
    procedure SetAccessRule(rule: DNFileSystemAccessRule);
    procedure ResetAccessRule(rule: DNFileSystemAccessRule);
    function RemoveAccessRule(rule: DNFileSystemAccessRule): Boolean;
    procedure RemoveAccessRuleAll(rule: DNFileSystemAccessRule);
    procedure RemoveAccessRuleSpecific(rule: DNFileSystemAccessRule);
    procedure AddAuditRule(rule: DNFileSystemAuditRule);
    procedure SetAuditRule(rule: DNFileSystemAuditRule);
    function RemoveAuditRule(rule: DNFileSystemAuditRule): Boolean;
    procedure RemoveAuditRuleAll(rule: DNFileSystemAuditRule);
    procedure RemoveAuditRuleSpecific(rule: DNFileSystemAuditRule);
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

  TDNFileSystemSecurity = class(TDNGenericImport<DNFileSystemSecurityClass, DNFileSystemSecurity>) end;

  //-------------namespace: System.Security.AccessControl----------------
  DNDirectorySecurityClass = interface(DNFileSystemSecurityClass)
  ['{E9BA0BC9-0954-5784-90EA-82E081B5DD01}']
  { constructors } 

    {class} function init: DNDirectorySecurity; overload;
    {class} function init(name: string; includeSections: DDNC.System.Security.AccessControl.DNAccessControlSections): DNDirectorySecurity; overload;

  end;

  [DNTypeName('System.Security.AccessControl.DirectorySecurity')]
  DNDirectorySecurity = interface(DNFileSystemSecurity)
  ['{F0E553A8-217E-3F97-AF71-87667AC7417D}']
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
    procedure AddAccessRule(rule: DNFileSystemAccessRule);
    procedure SetAccessRule(rule: DNFileSystemAccessRule);
    procedure ResetAccessRule(rule: DNFileSystemAccessRule);
    function RemoveAccessRule(rule: DNFileSystemAccessRule): Boolean;
    procedure RemoveAccessRuleAll(rule: DNFileSystemAccessRule);
    procedure RemoveAccessRuleSpecific(rule: DNFileSystemAccessRule);
    procedure AddAuditRule(rule: DNFileSystemAuditRule);
    procedure SetAuditRule(rule: DNFileSystemAuditRule);
    function RemoveAuditRule(rule: DNFileSystemAuditRule): Boolean;
    procedure RemoveAuditRuleAll(rule: DNFileSystemAuditRule);
    procedure RemoveAuditRuleSpecific(rule: DNFileSystemAuditRule);
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

  TDNDirectorySecurity = class(TDNGenericImport<DNDirectorySecurityClass, DNDirectorySecurity>) end;

  //-------------namespace: System.Security.AccessControl----------------
  DNFileSecurityClass = interface(DNFileSystemSecurityClass)
  ['{0CC9AB03-5122-5FFE-9918-4455FBD5FB9D}']
  { constructors } 

    {class} function init: DNFileSecurity; overload;
    {class} function init(fileName: string; includeSections: DDNC.System.Security.AccessControl.DNAccessControlSections): DNFileSecurity; overload;

  end;

  [DNTypeName('System.Security.AccessControl.FileSecurity')]
  DNFileSecurity = interface(DNFileSystemSecurity)
  ['{AA582E67-9843-311B-9F00-298504672BA3}']
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
    procedure AddAccessRule(rule: DNFileSystemAccessRule);
    procedure SetAccessRule(rule: DNFileSystemAccessRule);
    procedure ResetAccessRule(rule: DNFileSystemAccessRule);
    function RemoveAccessRule(rule: DNFileSystemAccessRule): Boolean;
    procedure RemoveAccessRuleAll(rule: DNFileSystemAccessRule);
    procedure RemoveAccessRuleSpecific(rule: DNFileSystemAccessRule);
    procedure AddAuditRule(rule: DNFileSystemAuditRule);
    procedure SetAuditRule(rule: DNFileSystemAuditRule);
    function RemoveAuditRule(rule: DNFileSystemAuditRule): Boolean;
    procedure RemoveAuditRuleAll(rule: DNFileSystemAuditRule);
    procedure RemoveAuditRuleSpecific(rule: DNFileSystemAuditRule);
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

  TDNFileSecurity = class(TDNGenericImport<DNFileSecurityClass, DNFileSecurity>) end;

  //-------------namespace: System.Security.AccessControl----------------
  DNDirectoryObjectSecurityClass = interface(DNObjectClass)
  ['{9C78F612-31B4-5E9F-AFC2-15659D9CF630}']
  end;

  [DNTypeName('System.Security.AccessControl.DirectoryObjectSecurity')]
  DNDirectoryObjectSecurity = interface(DNObject)
  ['{9C2CAFB7-326B-33ED-87C5-06C1F6166EB8}']
  { getters & setters } 

    function get_AreAccessRulesProtected: Boolean;
    function get_AreAuditRulesProtected: Boolean;
    function get_AreAccessRulesCanonical: Boolean;
    function get_AreAuditRulesCanonical: Boolean;
    function get_AccessRightType: DDNC.System.Private.CoreLib.DNType;
    function get_AccessRuleType: DDNC.System.Private.CoreLib.DNType;
    function get_AuditRuleType: DDNC.System.Private.CoreLib.DNType;

  { methods } 

    function AccessRuleFactory(identityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference; accessMask: Int32; isInherited: Boolean; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; &type: DDNC.System.Security.AccessControl.DNAccessControlType; objectType: DDNC.System.Private.CoreLib.DNGuid; inheritedObjectType: DDNC.System.Private.CoreLib.DNGuid): DDNC.System.Security.AccessControl.DNAccessRule; overload;
    function AuditRuleFactory(identityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference; accessMask: Int32; isInherited: Boolean; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; flags: DDNC.System.Security.AccessControl.DNAuditFlags; objectType: DDNC.System.Private.CoreLib.DNGuid; inheritedObjectType: DDNC.System.Private.CoreLib.DNGuid): DDNC.System.Security.AccessControl.DNAuditRule; overload;
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
    function AccessRuleFactory(identityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference; accessMask: Int32; isInherited: Boolean; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; &type: DDNC.System.Security.AccessControl.DNAccessControlType): DDNC.System.Security.AccessControl.DNAccessRule; overload;
    function AuditRuleFactory(identityReference: DDNC.System.Security.Principal.Windows.DNIdentityReference; accessMask: Int32; isInherited: Boolean; inheritanceFlags: DDNC.System.Security.AccessControl.DNInheritanceFlags; propagationFlags: DDNC.System.Security.AccessControl.DNPropagationFlags; flags: DDNC.System.Security.AccessControl.DNAuditFlags): DDNC.System.Security.AccessControl.DNAuditRule; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property AreAccessRulesProtected: Boolean read get_AreAccessRulesProtected;
    property AreAuditRulesProtected: Boolean read get_AreAuditRulesProtected;
    property AreAccessRulesCanonical: Boolean read get_AreAccessRulesCanonical;
    property AreAuditRulesCanonical: Boolean read get_AreAuditRulesCanonical;
    property AccessRightType: DDNC.System.Private.CoreLib.DNType read get_AccessRightType;
    property AccessRuleType: DDNC.System.Private.CoreLib.DNType read get_AccessRuleType;
    property AuditRuleType: DDNC.System.Private.CoreLib.DNType read get_AuditRuleType;
  end;

  TDNDirectoryObjectSecurity = class(TDNGenericImport<DNDirectoryObjectSecurityClass, DNDirectoryObjectSecurity>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.IO.FileSystem.AccessControl, Version=4.0.5.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
