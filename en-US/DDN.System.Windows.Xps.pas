//----------------------------------------------------------------------------
//  System.Printing.dll: System.Printing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Framework: 4.0
//----------------------------------------------------------------------------
//  UnitName: DDN.System.Windows.Xps
//  Author: ying32
//----------------------------------------------------------------------------

unit DDN.System.Windows.Xps;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDN.mscorlib,
  DDN.PresentationFramework,
  DDN.ReachFramework,
  DDN.PresentationCore;

type

{ enums }

  //-------------namespace: System.Windows.Xps----------------
  ///<summary>Indicates whether a write operation to an XML Paper Specification (XPS) document or a print queue sends back page-by-page and document-by-document progress notifications.</summary>
  [DNTypeName('System.Windows.Xps.XpsDocumentNotificationLevel')]
  DNXpsDocumentNotificationLevel = type Integer;
  DNXpsDocumentNotificationLevelHelper = record helper for DNXpsDocumentNotificationLevel
  public const
    ///<summary>The notification status is not indicated.</summary>
    None = 0;
    ///<summary>Progress notifications are enabled.</summary>
    ReceiveNotificationEnabled = 1;
    ///<summary>Progress notifications are disabled.</summary>
    ReceiveNotificationDisabled = 2;
  end;




type


{ declares }

  DNXpsWriterException = interface; // type: System.Windows.Xps.XpsWriterException, namespace: System.Windows.Xps
  DNXpsDocumentWriter = interface; // type: System.Windows.Xps.XpsDocumentWriter, namespace: System.Windows.Xps
  DNVisualsToXpsDocument = interface; // type: System.Windows.Xps.VisualsToXpsDocument, namespace: System.Windows.Xps


{ objects }

  //-------------namespace: System.Windows.Xps----------------
  DNXpsWriterExceptionClass = interface(DDN.mscorlib.DNExceptionClass)
  ['{9E00F93A-6967-59FD-AC51-4932C1B32B9D}']
  { constructors } 

    ///<summary>Initializes a new instance of the <see cref="T:System.Windows.Xps.XpsWriterException" />
    ///  class that provides a specific error condition and includes the cause of the exception. </summary>
    ///  <param name="message">A <see cref="T:System.String" />
    ///  that describes the error condition.</param>
    ///  <param name="innerException">The underlying error that caused the <see cref="T:System.Windows.Xps.XpsWriterException" />
    ///  .</param>
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXpsWriterException; overload;
    ///<summary>Initializes a new instance of the <see cref="T:System.Windows.Xps.XpsWriterException" />
    ///  class that provides a specific error condition.</summary>
    ///  <param name="message">A <see cref="T:System.String" />
    ///  that describes the error condition.</param>
    {class} function init(message: string): DNXpsWriterException; overload;
    ///<summary>Initializes a new instance of the <see cref="T:System.Windows.Xps.XpsWriterException" />
    ///  class. </summary>
    {class} function init: DNXpsWriterException; overload;

  end;

  ///<summary>The exception that is thrown when a method of either an <see cref="T:System.Windows.Xps.XpsDocumentWriter" />
  ///  or a <see cref="T:System.Windows.Xps.VisualsToXpsDocument" />
  ///  object is called that is incompatible with the current state of the object. </summary>
  [DNTypeName('System.Windows.Xps.XpsWriterException')]
  DNXpsWriterException = interface(DDN.mscorlib.DNException)
  ['{71331F4C-A5DA-392B-A607-37027A22CF73}']
  { getters & setters } 

    function get_Message: string;
    function get_Data: DDN.mscorlib.DNIDictionary;
    function get_InnerException: DDN.mscorlib.DNException;
    function get_TargetSite: DDN.mscorlib.DNMethodBase;
    function get_StackTrace: string;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;

  { methods } 

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Message: string read get_Message;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNXpsWriterException = class(TDNGenericImport<DNXpsWriterExceptionClass, DNXpsWriterException>) end;

  //-------------namespace: System.Windows.Xps----------------
  DNXpsDocumentWriterClass = interface(DNObjectClass)
  ['{EDA04938-441E-501B-AB5F-1AF36C5233A3}']
  end;

  ///<summary>Provides methods to write to an XPS document or print queue.  </summary>
  [DNTypeName('System.Windows.Xps.XpsDocumentWriter')]
  DNXpsDocumentWriter = interface(DNObject)
  ['{F398D7C3-13B0-3A47-90DD-C739F949136B}']
  { events } 


  { methods } 

    ///<summary>Writes synchronously a specified <see cref="T:System.Windows.Documents.FixedPage" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedPage">The page that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the page.</param>
    procedure Write(fixedPage: DDN.PresentationFramework.DNFixedPage; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes synchronously a specified <see cref="T:System.Windows.Documents.FixedPage" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedPage">A page that is written to the <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  .</param>
    procedure Write(fixedPage: DDN.PresentationFramework.DNFixedPage); overload;
    ///<summary>Writes synchronously a <see cref="T:System.Windows.Documents.FixedDocument" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocument">The document that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the document.</param>
    procedure Write(fixedDocument: DDN.PresentationFramework.DNFixedDocument; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes synchronously a specified <see cref="T:System.Windows.Documents.FixedDocument" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocument">A document that is written to the <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  .</param>
    procedure Write(fixedDocument: DDN.PresentationFramework.DNFixedDocument); overload;
    ///<summary>Writes synchronously a specified <see cref="T:System.Windows.Documents.FixedDocumentSequence" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocumentSequence">The set of documents that are written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the set of documents.</param>
    procedure Write(fixedDocumentSequence: DDN.PresentationFramework.DNFixedDocumentSequence; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes synchronously a specified <see cref="T:System.Windows.Documents.FixedDocumentSequence" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocumentSequence">A set of documents that is written to the <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  .</param>
    procedure Write(fixedDocumentSequence: DDN.PresentationFramework.DNFixedDocumentSequence); overload;
    ///<summary>Writes synchronously a specified <see cref="T:System.Windows.Media.Visual" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the document.</param>
    procedure Write(visual: DDN.PresentationCore.DNVisual; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes synchronously a specified <see cref="T:System.Windows.Media.Visual" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    procedure Write(visual: DDN.PresentationCore.DNVisual); overload;
    ///<summary>Writes synchronously paginated content from a specified <see cref="T:System.Windows.Documents.DocumentPaginator" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPaginator">An object that contains a pointer to unpaginated source material and also contains methods for paginating the material.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for material.</param>
    procedure Write(documentPaginator: DDN.PresentationCore.DNDocumentPaginator; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes synchronously paginated content from a specified <see cref="T:System.Windows.Documents.DocumentPaginator" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPaginator">An object that contains a pointer to unpaginated source material and also contains methods for paginating the material.</param>
    procedure Write(documentPaginator: DDN.PresentationCore.DNDocumentPaginator); overload;
    ///<summary>Writes synchronously a specified XPS document to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPath">The path of the source document.</param>
    ///  <param name="notificationLevel">An indication of whether notification is enabled.</param>
    procedure Write(documentPath: string; notificationLevel: DNXpsDocumentNotificationLevel); overload;
    ///<summary>Writes synchronously a specified XPS document to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPath">The path of the source document.</param>
    procedure Write(documentPath: string); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedPage" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedPage">The page that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the page.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(fixedPage: DDN.PresentationFramework.DNFixedPage; printTicket: DDN.ReachFramework.DNPrintTicket; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedPage" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedPage">The page that is written.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(fixedPage: DDN.PresentationFramework.DNFixedPage; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedPage" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedPage">The page that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the page.</param>
    procedure WriteAsync(fixedPage: DDN.PresentationFramework.DNFixedPage; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedPage" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedPage">The page that is written.</param>
    procedure WriteAsync(fixedPage: DDN.PresentationFramework.DNFixedPage); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedDocument" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocument">The document that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the document.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(fixedDocument: DDN.PresentationFramework.DNFixedDocument; printTicket: DDN.ReachFramework.DNPrintTicket; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedDocument" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocument">The document that is written.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(fixedDocument: DDN.PresentationFramework.DNFixedDocument; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedDocument" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocument">The document that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the document.</param>
    procedure WriteAsync(fixedDocument: DDN.PresentationFramework.DNFixedDocument; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedDocument" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocument">The document that is written.</param>
    procedure WriteAsync(fixedDocument: DDN.PresentationFramework.DNFixedDocument); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedDocumentSequence" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocumentSequence">The set of documents to be written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the set of documents.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(fixedDocumentSequence: DDN.PresentationFramework.DNFixedDocumentSequence; printTicket: DDN.ReachFramework.DNPrintTicket; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedDocumentSequence" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocumentSequence">The set of documents that are written.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(fixedDocumentSequence: DDN.PresentationFramework.DNFixedDocumentSequence; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedDocumentSequence" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocumentSequence">The set of documents that are written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the set of documents.</param>
    procedure WriteAsync(fixedDocumentSequence: DDN.PresentationFramework.DNFixedDocumentSequence; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Documents.FixedDocumentSequence" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="fixedDocumentSequence">The set of documents that is written.</param>
    procedure WriteAsync(fixedDocumentSequence: DDN.PresentationFramework.DNFixedDocumentSequence); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Media.Visual" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the document.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(visual: DDN.PresentationCore.DNVisual; printTicket: DDN.ReachFramework.DNPrintTicket; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Media.Visual" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(visual: DDN.PresentationCore.DNVisual; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Media.Visual" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the document.</param>
    procedure WriteAsync(visual: DDN.PresentationCore.DNVisual; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes asynchronously a specified <see cref="T:System.Windows.Media.Visual" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    procedure WriteAsync(visual: DDN.PresentationCore.DNVisual); overload;
    ///<summary>Writes asynchronously paginated content from a specified <see cref="T:System.Windows.Documents.DocumentPaginator" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPaginator">An object that contains a pointer to unpaginated source material; also contains methods for paginating the material.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the material.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(documentPaginator: DDN.PresentationCore.DNDocumentPaginator; printTicket: DDN.ReachFramework.DNPrintTicket; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously paginated content from a specified <see cref="T:System.Windows.Documents.DocumentPaginator" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPaginator">An object that contains a pointer to unpaginated source material; also contains methods for paginating the material.</param>
    ///  <param name="userSuppliedState">A user-specified object to identify and associate with the asynchronous operation.</param>
    procedure WriteAsync(documentPaginator: DDN.PresentationCore.DNDocumentPaginator; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes asynchronously paginated content from a specified <see cref="T:System.Windows.Documents.DocumentPaginator" />
    ///  together with a <see cref="T:System.Printing.PrintTicket" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPaginator">An object that contains a pointer to unpaginated source material and also contains methods for paginating the material.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the material.</param>
    procedure WriteAsync(documentPaginator: DDN.PresentationCore.DNDocumentPaginator; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes asynchronously paginated content from a specified <see cref="T:System.Windows.Documents.DocumentPaginator" />
    ///  to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPaginator">An object that contains a pointer to unpaginated source material and also contains methods for paginating the material.</param>
    procedure WriteAsync(documentPaginator: DDN.PresentationCore.DNDocumentPaginator); overload;
    ///<summary>Writes asynchronously a specified XPS document with notification option to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPath">The path of the source document.</param>
    ///  <param name="notificationLevel">An indication of whether notification is enabled.</param>
    procedure WriteAsync(documentPath: string; notificationLevel: DNXpsDocumentNotificationLevel); overload;
    ///<summary>Writes asynchronously a specified XPS document to the target <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="documentPath">The path of the source document.</param>
    procedure WriteAsync(documentPath: string); overload;
    ///<summary>Cancels the current <see cref="Overload:System.Windows.Xps.XpsDocumentWriter.WriteAsync" />
    ///  operation.</summary>
    ///<exception cref="T:System.Windows.Xps.XpsWriterException">No asynchronous write operation is in progress.</exception>
    procedure CancelAsync;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNXpsDocumentWriter = class(TDNGenericImport<DNXpsDocumentWriterClass, DNXpsDocumentWriter>) end;

  //-------------namespace: System.Windows.Xps----------------
  DNVisualsToXpsDocumentClass = interface(DNObjectClass)
  ['{3EACA6E5-DEB6-5D97-88B0-B253816007B9}']
  end;

  ///<summary>Provides methods for writing <see cref="T:System.Windows.Media.Visual" />
  ///  objects to XML Paper Specification (XPS) documents or to a print queue in batch mode. </summary>
  [DNTypeName('System.Windows.Xps.VisualsToXpsDocument')]
  DNVisualsToXpsDocument = interface(DNObject)
  ['{7A0C58B6-6D57-31EB-AF35-A3FC337B5249}']
  { methods } 

    ///<summary>Indicates that write operations can begin.</summary>
    procedure BeginBatchWrite;
    ///<summary>Indicates that write operations must end.</summary>
    procedure EndBatchWrite;
    ///<summary>Writes a <see cref="T:System.Windows.Media.Visual" />
    ///  synchronously to an <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or a <see cref="T:System.Printing.PrintQueue" />
    ///  and includes a <see cref="T:System.Printing.PrintTicket" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the document.</param>
    procedure Write(visual: DDN.PresentationCore.DNVisual; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes a <see cref="T:System.Windows.Media.Visual" />
    ///  synchronously to an <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or a <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    procedure Write(visual: DDN.PresentationCore.DNVisual); overload;
    ///<summary>Writes a <see cref="T:System.Windows.Media.Visual" />
    ///  asynchronously to an <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or a <see cref="T:System.Printing.PrintQueue" />
    ///  ; also includes a <see cref="T:System.Printing.PrintTicket" />
    ///  and any additional information that the caller wants to pass to an event handler.</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the document.</param>
    ///  <param name="userSuppliedState">An object that contains the data that the caller wants to pass to the <see cref="E:System.Windows.Xps.XpsDocumentWriter.WritingCompleted" />
    ///  event handler. </param>
    procedure WriteAsync(visual: DDN.PresentationCore.DNVisual; printTicket: DDN.ReachFramework.DNPrintTicket; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes a <see cref="T:System.Windows.Media.Visual" />
    ///  asynchronously to an <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or a <see cref="T:System.Printing.PrintQueue" />
    ///  and includes additional information that the caller wants to pass to an event handler. </summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    ///  <param name="userSuppliedState">An object that contains data that the caller wants to pass to the <see cref="E:System.Windows.Xps.XpsDocumentWriter.WritingCompleted" />
    ///  event handler. </param>
    procedure WriteAsync(visual: DDN.PresentationCore.DNVisual; userSuppliedState: DDN.mscorlib.DNObject); overload;
    ///<summary>Writes a <see cref="T:System.Windows.Media.Visual" />
    ///  asynchronously to an <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or a <see cref="T:System.Printing.PrintQueue" />
    ///  and includes a <see cref="T:System.Printing.PrintTicket" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    ///  <param name="printTicket">A <see cref="T:System.Printing.PrintTicket" />
    ///  that represents the default printing preferences for the document.</param>
    procedure WriteAsync(visual: DDN.PresentationCore.DNVisual; printTicket: DDN.ReachFramework.DNPrintTicket); overload;
    ///<summary>Writes a <see cref="T:System.Windows.Media.Visual" />
    ///  asynchronously to an <see cref="T:System.Windows.Xps.Packaging.XpsDocument" />
    ///  or a <see cref="T:System.Printing.PrintQueue" />
    ///  .</summary>
    ///  <param name="visual">The <see cref="T:System.Windows.Media.Visual" />
    ///  that is written.</param>
    procedure WriteAsync(visual: DDN.PresentationCore.DNVisual); overload;
    ///<summary>Cancels an asynchronous writing operation.</summary>
    ///<exception cref="T:System.Windows.Xps.XpsWriterException">The state of the <see cref="T:System.Windows.Xps.VisualsToXpsDocument" />
    ///  is not compatible with a <see cref="M:System.Windows.Xps.VisualsToXpsDocument.CancelAsync" />
    ///  operation.</exception>
    procedure CancelAsync;
    ///<summary>Cancels a synchronous writing operation.</summary>
    ///<exception cref="T:System.Windows.Xps.XpsWriterException">The state of the <see cref="T:System.Windows.Xps.VisualsToXpsDocument" />
    ///  is not compatible with a <see cref="M:System.Windows.Xps.VisualsToXpsDocument.Cancel" />
    ///  operation.</exception>
    procedure Cancel;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNVisualsToXpsDocument = class(TDNGenericImport<DNVisualsToXpsDocumentClass, DNVisualsToXpsDocument>) end;


implementation

end.
