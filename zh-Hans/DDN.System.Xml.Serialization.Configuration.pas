//----------------------------------------------------------------------------
//  System.Xml.dll: System.Xml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Framework: 4.0
//----------------------------------------------------------------------------
//  UnitName: DDN.System.Xml.Serialization.Configuration
//  Author: ying32
//----------------------------------------------------------------------------

unit DDN.System.Xml.Serialization.Configuration;

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

{ enums }

  //-------------namespace: System.Xml.Serialization.Configuration----------------
  ///<summary>
  ///  确定 <see cref="T:System.DateTime" />
  ///  对象的 XML 序列化格式。
  ///</summary>
  [DNTypeName('System.Xml.Serialization.Configuration.DateTimeSerializationSection+DateTimeSerializationMode')]
  DNDateTimeSerializationSection_DateTimeSerializationMode = type Integer;
  DNDateTimeSerializationSection_DateTimeSerializationModeHelper = record helper for DNDateTimeSerializationSection_DateTimeSerializationMode
  public const
    ///<summary>
    ///  与 <see langword="Roundtrip" />
    ///  相同。
    ///</summary>
    Default_ = 0;
    ///<summary>
    ///  序列化程序检查各个 <see cref="T:System.DateTime" />
    ///  实例，确定序列化格式：UTC、本地或未指定。
    ///</summary>
    Roundtrip = 1;
    ///<summary>
    ///  序列化程序将所有 <see cref="T:System.DateTime" />
    ///  对象格式设置为本地时间。
    ///  这是为了版本 1.0 和 1.1 的兼容性。
    ///</summary>
    Local = 2;
  end;




type


{ declares }

  DNSchemaImporterExtensionElementCollection = interface; // type: System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection, namespace: System.Xml.Serialization.Configuration
  DNDateTimeSerializationSection = interface; // type: System.Xml.Serialization.Configuration.DateTimeSerializationSection, namespace: System.Xml.Serialization.Configuration
  DNSchemaImporterExtensionsSection = interface; // type: System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection, namespace: System.Xml.Serialization.Configuration
  DNXmlSerializerSection = interface; // type: System.Xml.Serialization.Configuration.XmlSerializerSection, namespace: System.Xml.Serialization.Configuration
  DNSchemaImporterExtensionElement = interface; // type: System.Xml.Serialization.Configuration.SchemaImporterExtensionElement, namespace: System.Xml.Serialization.Configuration
  DNSerializationSectionGroup = interface; // type: System.Xml.Serialization.Configuration.SerializationSectionGroup, namespace: System.Xml.Serialization.Configuration
  DNRootedPathValidator = interface; // type: System.Xml.Serialization.Configuration.RootedPathValidator, namespace: System.Xml.Serialization.Configuration


{ objects }

  //-------------namespace: System.Xml.Serialization.Configuration----------------
  DNSchemaImporterExtensionElementCollectionClass = interface(DNObjectClass)
  ['{110B1F6B-D2E2-5D82-8175-6B62082D7F9A}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNSchemaImporterExtensionElementCollection;

  end;

  ///<summary>
  ///  处理用于配置的操作的 XML 元素 <see cref="T:System.Xml.Serialization.XmlSchemaImporter" />
  ///  。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection')]
  DNSchemaImporterExtensionElementCollection = interface(DNObject)
  ['{E2B75A98-6D02-32C9-90E0-CD01176AA03F}']
  { getters & setters } 

    function get_Item(index: Int32): DNSchemaImporterExtensionElement; overload;
    procedure set_Item(index: Int32; value: DNSchemaImporterExtensionElement); overload;
    function get_Item(name: string): DNSchemaImporterExtensionElement; overload;
    procedure set_Item(name: string; value: DNSchemaImporterExtensionElement); overload;
    function get_Count: Int32;
    function get_EmitClear: Boolean;
    procedure set_EmitClear(value: Boolean);
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDN.mscorlib.DNObject;
    function get_CollectionType: DDN.System.Configuration.DNConfigurationElementCollectionType;
    function get_LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockElements: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DDN.System.Configuration.DNElementInformation;
    function get_CurrentConfiguration: DDN.System.Configuration.DNConfiguration;

  { methods } 

    ///<summary>
    ///  将项添加到集合的末尾。
    ///</summary>
    ///  <param name="element">
    ///  要添加到集合中的 <see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionElement" />
    ///  。
    ///</param>
    procedure Add(element: DNSchemaImporterExtensionElement);
    ///<summary>
    ///  从集合中移除所有项。
    ///</summary>
    procedure Clear;
    ///<summary>
    ///  返回具有指定的值的集合中的第一个元素的从零开始的索引。
    ///</summary>
    ///  <param name="element">
    ///  要查找的 <see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionElement" />
    ///  。
    ///</param>
    ///<returns>
    ///  所找到元素的索引。
    ///</returns>
    function IndexOf(element: DNSchemaImporterExtensionElement): Int32;
    ///<summary>
    ///  从集合中移除特定项的第一个匹配项。
    ///</summary>
    ///  <param name="element">
    ///  要移除的 <see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionElement" />
    ///  。
    ///</param>
    procedure Remove(element: DNSchemaImporterExtensionElement); overload;
    ///<summary>
    ///  从集合中移除具有指定名称的项。
    ///</summary>
    ///  <param name="name">
    ///  要移除的项的名称。
    ///</param>
    procedure Remove(name: string); overload;
    ///<summary>
    ///  从集合中移除指定索引处的项。
    ///</summary>
    ///  <param name="index">
    ///  要移除的对象的索引。
    ///</param>
    procedure RemoveAt(index: Int32);
    function IsReadOnly: Boolean;
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    procedure CopyTo(&array: TArray<DDN.System.Configuration.DNConfigurationElement>; index: Int32);
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: DNSchemaImporterExtensionElement read get_Item write set_Item; default;
    property Item[name: string]: DNSchemaImporterExtensionElement read get_Item write set_Item; default;
    property Count: Int32 read get_Count;
    property EmitClear: Boolean read get_EmitClear write set_EmitClear;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDN.mscorlib.DNObject read get_SyncRoot;
    property CollectionType: DDN.System.Configuration.DNConfigurationElementCollectionType read get_CollectionType;
    property LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAttributes;
    property LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllAttributesExcept;
    property LockElements: DDN.System.Configuration.DNConfigurationLockCollection read get_LockElements;
    property LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllElementsExcept;
    property LockItem: Boolean read get_LockItem write set_LockItem;
    property ElementInformation: DDN.System.Configuration.DNElementInformation read get_ElementInformation;
    property CurrentConfiguration: DDN.System.Configuration.DNConfiguration read get_CurrentConfiguration;
  end;

  TDNSchemaImporterExtensionElementCollection = class(TDNGenericImport<DNSchemaImporterExtensionElementCollectionClass, DNSchemaImporterExtensionElementCollection>) end;

  //-------------namespace: System.Xml.Serialization.Configuration----------------
  DNDateTimeSerializationSectionClass = interface(DNObjectClass)
  ['{796F86F5-CB76-54E2-B20A-42C047545297}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Serialization.Configuration.DateTimeSerializationSection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNDateTimeSerializationSection;

  end;

  ///<summary>
  ///  处理的 XML 序列化的配置设置 <see cref="T:System.DateTime" />
  ///  实例。
  ///</summary>
  [DNTypeName('System.Xml.Serialization.Configuration.DateTimeSerializationSection')]
  DNDateTimeSerializationSection = interface(DNObject)
  ['{67363D2C-6267-3FBF-8D4F-F8234D512220}']
  { getters & setters } 

    function get_Mode: DNDateTimeSerializationSection_DateTimeSerializationMode;
    procedure set_Mode(value: DNDateTimeSerializationSection_DateTimeSerializationMode);
    function get_SectionInformation: DDN.System.Configuration.DNSectionInformation;
    function get_LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockElements: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DDN.System.Configuration.DNElementInformation;
    function get_CurrentConfiguration: DDN.System.Configuration.DNConfiguration;

  { methods } 

    function IsReadOnly: Boolean;
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置一个值，确定序列化格式。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode" />
    ///  值之一。
    ///</returns>
    property Mode: DNDateTimeSerializationSection_DateTimeSerializationMode read get_Mode write set_Mode;
    property SectionInformation: DDN.System.Configuration.DNSectionInformation read get_SectionInformation;
    property LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAttributes;
    property LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllAttributesExcept;
    property LockElements: DDN.System.Configuration.DNConfigurationLockCollection read get_LockElements;
    property LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllElementsExcept;
    property LockItem: Boolean read get_LockItem write set_LockItem;
    property ElementInformation: DDN.System.Configuration.DNElementInformation read get_ElementInformation;
    property CurrentConfiguration: DDN.System.Configuration.DNConfiguration read get_CurrentConfiguration;
  end;

  TDNDateTimeSerializationSection = class(TDNGenericImport<DNDateTimeSerializationSectionClass, DNDateTimeSerializationSection>) end;

  //-------------namespace: System.Xml.Serialization.Configuration----------------
  DNSchemaImporterExtensionsSectionClass = interface(DNObjectClass)
  ['{86B5D172-4D4F-5D71-B1D6-CC0307916C1E}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNSchemaImporterExtensionsSection;

  end;

  ///<summary>
  ///  处理的配置 <see cref="T:System.Xml.Serialization.XmlSchemaImporter" />
  ///  类。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection')]
  DNSchemaImporterExtensionsSection = interface(DNObject)
  ['{67BECEB9-94EA-3674-A085-2940A30B400F}']
  { getters & setters } 

    function get_SchemaImporterExtensions: DNSchemaImporterExtensionElementCollection;
    function get_SectionInformation: DDN.System.Configuration.DNSectionInformation;
    function get_LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockElements: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DDN.System.Configuration.DNElementInformation;
    function get_CurrentConfiguration: DDN.System.Configuration.DNConfiguration;

  { methods } 

    function IsReadOnly: Boolean;
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取表示扩展的集合的对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection" />
    ///  ，包含表示配置元素的对象。
    ///</returns>
    property SchemaImporterExtensions: DNSchemaImporterExtensionElementCollection read get_SchemaImporterExtensions;
    property SectionInformation: DDN.System.Configuration.DNSectionInformation read get_SectionInformation;
    property LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAttributes;
    property LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllAttributesExcept;
    property LockElements: DDN.System.Configuration.DNConfigurationLockCollection read get_LockElements;
    property LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllElementsExcept;
    property LockItem: Boolean read get_LockItem write set_LockItem;
    property ElementInformation: DDN.System.Configuration.DNElementInformation read get_ElementInformation;
    property CurrentConfiguration: DDN.System.Configuration.DNConfiguration read get_CurrentConfiguration;
  end;

  TDNSchemaImporterExtensionsSection = class(TDNGenericImport<DNSchemaImporterExtensionsSectionClass, DNSchemaImporterExtensionsSection>) end;

  //-------------namespace: System.Xml.Serialization.Configuration----------------
  DNXmlSerializerSectionClass = interface(DNObjectClass)
  ['{273E89BE-C5DB-5016-9D74-778FFF4E25B7}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Serialization.Configuration.XmlSerializerSection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNXmlSerializerSection;

  end;

  ///<summary>
  ///  处理用于配置 XML 序列化的 XML 元素。
  ///</summary>
  [DNTypeName('System.Xml.Serialization.Configuration.XmlSerializerSection')]
  DNXmlSerializerSection = interface(DNObject)
  ['{4F36F333-4341-3E5B-97C3-E99EADAB829E}']
  { getters & setters } 

    function get_CheckDeserializeAdvances: Boolean;
    procedure set_CheckDeserializeAdvances(value: Boolean);
    function get_TempFilesLocation: string;
    procedure set_TempFilesLocation(value: string);
    function get_UseLegacySerializerGeneration: Boolean;
    procedure set_UseLegacySerializerGeneration(value: Boolean);
    function get_SectionInformation: DDN.System.Configuration.DNSectionInformation;
    function get_LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockElements: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DDN.System.Configuration.DNElementInformation;
    function get_CurrentConfiguration: DDN.System.Configuration.DNConfiguration;

  { methods } 

    function IsReadOnly: Boolean;
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置一个值，确定是否将进行附加检查进度的 <see cref="T:System.Xml.Serialization.XmlSerializer" />
    ///  完成。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果在进行检查;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property CheckDeserializeAdvances: Boolean read get_CheckDeserializeAdvances write set_CheckDeserializeAdvances;
    ///<summary>
    ///  返回指定创建的临时文件的位置。
    ///</summary>
    ///<returns>
    ///  指定创建临时文件的位置。
    ///</returns>
    property TempFilesLocation: string read get_TempFilesLocation write set_TempFilesLocation;
    ///<summary>
    ///  获取或设置一个值，该值指示指定的对象是使用旧的序列化程序生成。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果对象使用旧的序列化程序生成;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property UseLegacySerializerGeneration: Boolean read get_UseLegacySerializerGeneration write set_UseLegacySerializerGeneration;
    property SectionInformation: DDN.System.Configuration.DNSectionInformation read get_SectionInformation;
    property LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAttributes;
    property LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllAttributesExcept;
    property LockElements: DDN.System.Configuration.DNConfigurationLockCollection read get_LockElements;
    property LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllElementsExcept;
    property LockItem: Boolean read get_LockItem write set_LockItem;
    property ElementInformation: DDN.System.Configuration.DNElementInformation read get_ElementInformation;
    property CurrentConfiguration: DDN.System.Configuration.DNConfiguration read get_CurrentConfiguration;
  end;

  TDNXmlSerializerSection = class(TDNGenericImport<DNXmlSerializerSectionClass, DNXmlSerializerSection>) end;

  //-------------namespace: System.Xml.Serialization.Configuration----------------
  DNSchemaImporterExtensionElementClass = interface(DNObjectClass)
  ['{C7ACCF49-26E1-544E-BE23-0935BBAEE364}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionElement" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNSchemaImporterExtensionElement; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionElement" />
    ///  类并指定名称和类型的扩展。
    ///</summary>
    ///  <param name="name">
    ///  新的扩展的名称。
    ///  名称必须是唯一的。
    ///</param>
    ///  <param name="type">
    ///  新的扩展，以字符串形式指定的类型。
    ///</param>
    {class} function init(name: string; &type: string): DNSchemaImporterExtensionElement; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionElement" />
    ///  类使用指定的名称和类型。
    ///</summary>
    ///  <param name="name">
    ///  新的扩展的名称。
    ///  名称必须是唯一的。
    ///</param>
    ///  <param name="type"><see cref="T:System.Type" />
    ///  新扩展。
    ///</param>
    {class} function init(name: string; &type: DDN.mscorlib.DNType): DNSchemaImporterExtensionElement; overload;

  end;

  ///<summary>
  ///  处理的配置 <see cref="T:System.Xml.Serialization.XmlSchemaImporter" />
  ///  类。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Xml.Serialization.Configuration.SchemaImporterExtensionElement')]
  DNSchemaImporterExtensionElement = interface(DNObject)
  ['{AD1B0AF4-0B28-3D88-AE92-989DEDBCACF8}']
  { getters & setters } 

    function get_Name: string;
    procedure set_Name(value: string);
    function get_Type: DDN.mscorlib.DNType;
    procedure set_Type(value: DDN.mscorlib.DNType);
    function get_LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockElements: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DDN.System.Configuration.DNElementInformation;
    function get_CurrentConfiguration: DDN.System.Configuration.DNConfiguration;

  { methods } 

    function IsReadOnly: Boolean;
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置扩展插件的名称。
    ///</summary>
    ///<returns>
    ///  扩展插件的名称。
    ///</returns>
    property Name: string read get_Name write set_Name;
    ///<summary>
    ///  获取或设置的扩展类型。
    ///</summary>
    ///<returns>
    ///  一种扩展类型。
    ///</returns>
    property &Type: DDN.mscorlib.DNType read get_Type write set_Type;
    property LockAttributes: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAttributes;
    property LockAllAttributesExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllAttributesExcept;
    property LockElements: DDN.System.Configuration.DNConfigurationLockCollection read get_LockElements;
    property LockAllElementsExcept: DDN.System.Configuration.DNConfigurationLockCollection read get_LockAllElementsExcept;
    property LockItem: Boolean read get_LockItem write set_LockItem;
    property ElementInformation: DDN.System.Configuration.DNElementInformation read get_ElementInformation;
    property CurrentConfiguration: DDN.System.Configuration.DNConfiguration read get_CurrentConfiguration;
  end;

  TDNSchemaImporterExtensionElement = class(TDNGenericImport<DNSchemaImporterExtensionElementClass, DNSchemaImporterExtensionElement>) end;

  //-------------namespace: System.Xml.Serialization.Configuration----------------
  DNSerializationSectionGroupClass = interface(DNObjectClass)
  ['{EC5EBDC1-E595-5BD8-A897-5A2260CAF41C}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Serialization.Configuration.SerializationSectionGroup" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNSerializationSectionGroup;

  end;

  ///<summary>
  ///  处理用于配置 XML 序列化的 XML 元素。
  ///</summary>
  [DNTypeName('System.Xml.Serialization.Configuration.SerializationSectionGroup')]
  DNSerializationSectionGroup = interface(DNObject)
  ['{F62E01F9-355F-3CAC-8D6F-BCCF033573FF}']
  { getters & setters } 

    function get_SchemaImporterExtensions: DNSchemaImporterExtensionsSection;
    function get_DateTimeSerialization: DNDateTimeSerializationSection;
    function get_XmlSerializer: DNXmlSerializerSection;
    function get_IsDeclared: Boolean;
    function get_IsDeclarationRequired: Boolean;
    function get_SectionGroupName: string;
    function get_Name: string;
    function get_Type: string;
    procedure set_Type(value: string);
    function get_Sections: DDN.System.Configuration.DNConfigurationSectionCollection;
    function get_SectionGroups: DDN.System.Configuration.DNConfigurationSectionGroupCollection;

  { methods } 

    procedure ForceDeclaration; overload;
    procedure ForceDeclaration(force: Boolean); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取的对象，表示包含配置元素节 <see cref="T:System.Xml.Serialization.XmlSchemaImporter" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection" />
    ///  表示 <see langword="schemaImporterExtenstion" />
    ///  配置文件中的元素。
    ///</returns>
    property SchemaImporterExtensions: DNSchemaImporterExtensionsSection read get_SchemaImporterExtensions;
    ///<summary>
    ///  获取该对象表示 <see cref="T:System.DateTime" />
    ///  序列化配置元素。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Serialization.Configuration.DateTimeSerializationSection" />
    ///  对象，表示配置元素。
    ///</returns>
    property DateTimeSerialization: DNDateTimeSerializationSection read get_DateTimeSerialization;
    ///<summary>
    ///  获取表示的配置组的对象 <see cref="T:System.Xml.Serialization.XmlSerializer" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Serialization.Configuration.XmlSerializerSection" />
    ///  表示 <see cref="T:System.Xml.Serialization.XmlSerializer" />
    ///  。
    ///</returns>
    property XmlSerializer: DNXmlSerializerSection read get_XmlSerializer;
    property IsDeclared: Boolean read get_IsDeclared;
    property IsDeclarationRequired: Boolean read get_IsDeclarationRequired;
    property SectionGroupName: string read get_SectionGroupName;
    property Name: string read get_Name;
    property &Type: string read get_Type write set_Type;
    property Sections: DDN.System.Configuration.DNConfigurationSectionCollection read get_Sections;
    property SectionGroups: DDN.System.Configuration.DNConfigurationSectionGroupCollection read get_SectionGroups;
  end;

  TDNSerializationSectionGroup = class(TDNGenericImport<DNSerializationSectionGroupClass, DNSerializationSectionGroup>) end;

  //-------------namespace: System.Xml.Serialization.Configuration----------------
  DNRootedPathValidatorClass = interface(DNObjectClass)
  ['{5850549E-2A8A-55F8-B8BD-5635916D114E}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Serialization.Configuration.RootedPathValidator" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNRootedPathValidator;

  end;

  ///<summary>
  ///  验证这些规则控制的使用 tempFilesLocation 配置开关。
  ///</summary>
  [DNTypeName('System.Xml.Serialization.Configuration.RootedPathValidator')]
  DNRootedPathValidator = interface(DNObject)
  ['{CCD7A295-38B9-3662-B614-E4C4CCC9BC38}']
  { methods } 

    ///<summary>
    ///  确定是否可以验证的对象类型。
    ///</summary>
    ///  <param name="type">
    ///  对象的类型。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="type" />
    ///  参数与匹配的有效 <see langword="XMLSerializer" />
    ///  对象; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanValidate(&type: DDN.mscorlib.DNType): Boolean;
    ///<summary>
    ///  确定某个对象的值是否有效。
    ///</summary>
    ///  <param name="value">
    ///  对象的值。
    ///</param>
    procedure Validate(value: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNRootedPathValidator = class(TDNGenericImport<DNRootedPathValidatorClass, DNRootedPathValidator>) end;


implementation

end.
