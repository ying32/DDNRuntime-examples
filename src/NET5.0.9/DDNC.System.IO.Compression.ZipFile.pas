//----------------------------------------------------------------------------
//  System.IO.Compression.ZipFile.dll: System.IO.Compression.ZipFile, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.IO.Compression.ZipFile
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.IO.Compression.ZipFile;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.IO.Compression;

type


{ declares }

  DNZipFile = interface; // type: System.IO.Compression.ZipFile, namespace: System.IO.Compression
  DNZipFileExtensions = interface; // type: System.IO.Compression.ZipFileExtensions, namespace: System.IO.Compression


{ objects }

  //-------------namespace: System.IO.Compression----------------
  DNZipFileClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{2CF09824-B6CD-5681-A374-5B31B5CB4404}']
  { static methods } 

    {class} function OpenRead(archiveFileName: string): DDNC.System.IO.Compression.DNZipArchive;
    {class} function Open(archiveFileName: string; mode: DDNC.System.IO.Compression.DNZipArchiveMode): DDNC.System.IO.Compression.DNZipArchive; overload;
    {class} function Open(archiveFileName: string; mode: DDNC.System.IO.Compression.DNZipArchiveMode; entryNameEncoding: DDNC.System.Private.CoreLib.DNEncoding): DDNC.System.IO.Compression.DNZipArchive; overload;
    {class} procedure CreateFromDirectory(sourceDirectoryName: string; destinationArchiveFileName: string); overload;
    {class} procedure CreateFromDirectory(sourceDirectoryName: string; destinationArchiveFileName: string; compressionLevel: DDNC.System.IO.Compression.DNCompressionLevel; includeBaseDirectory: Boolean); overload;
    {class} procedure CreateFromDirectory(sourceDirectoryName: string; destinationArchiveFileName: string; compressionLevel: DDNC.System.IO.Compression.DNCompressionLevel; includeBaseDirectory: Boolean; entryNameEncoding: DDNC.System.Private.CoreLib.DNEncoding); overload;
    {class} procedure ExtractToDirectory(sourceArchiveFileName: string; destinationDirectoryName: string); overload;
    {class} procedure ExtractToDirectory(sourceArchiveFileName: string; destinationDirectoryName: string; overwriteFiles: Boolean); overload;
    {class} procedure ExtractToDirectory(sourceArchiveFileName: string; destinationDirectoryName: string; entryNameEncoding: DDNC.System.Private.CoreLib.DNEncoding); overload;
    {class} procedure ExtractToDirectory(sourceArchiveFileName: string; destinationDirectoryName: string; entryNameEncoding: DDNC.System.Private.CoreLib.DNEncoding; overwriteFiles: Boolean); overload;

  end;

  [DNTypeName('System.IO.Compression.ZipFile')]
  DNZipFile = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{A3673210-9FC9-3901-B1E1-79BB250EBF26}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNZipFile = class(TDNGenericImport<DNZipFileClass, DNZipFile>) end;

  //-------------namespace: System.IO.Compression----------------
  DNZipFileExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{541C7E8A-C737-53BD-9CCA-824833431301}']
  { static methods } 

    {class} function CreateEntryFromFile(destination: DDNC.System.IO.Compression.DNZipArchive; sourceFileName: string; entryName: string): DDNC.System.IO.Compression.DNZipArchiveEntry; overload;
    {class} function CreateEntryFromFile(destination: DDNC.System.IO.Compression.DNZipArchive; sourceFileName: string; entryName: string; compressionLevel: DDNC.System.IO.Compression.DNCompressionLevel): DDNC.System.IO.Compression.DNZipArchiveEntry; overload;
    {class} procedure ExtractToDirectory(source: DDNC.System.IO.Compression.DNZipArchive; destinationDirectoryName: string); overload;
    {class} procedure ExtractToDirectory(source: DDNC.System.IO.Compression.DNZipArchive; destinationDirectoryName: string; overwriteFiles: Boolean); overload;
    {class} procedure ExtractToFile(source: DDNC.System.IO.Compression.DNZipArchiveEntry; destinationFileName: string); overload;
    {class} procedure ExtractToFile(source: DDNC.System.IO.Compression.DNZipArchiveEntry; destinationFileName: string; overwrite: Boolean); overload;

  end;

  [DNTypeName('System.IO.Compression.ZipFileExtensions')]
  DNZipFileExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{D1583441-CBAC-3C01-B6D5-5FC3FE5C1406}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNZipFileExtensions = class(TDNGenericImport<DNZipFileExtensionsClass, DNZipFileExtensions>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.IO.Compression.ZipFile, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089');

finalization

end.
