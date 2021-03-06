unit uWords;

interface

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib,
{$IFDEF USE_NETCORE}
  DDNC.Aspose.Words
{$ELSE}
  DDN.Aspose.Words
{$ENDIF};

  procedure TestWords;
implementation

function GetTestFile: string;
begin
  Result := '..\TestFiles\lua_license.docx';
end;

procedure TestWords;
var
  LDoc: DNDocument;
begin
  Writeln('Aspose.Words.dll: ', LoadAssemblyModule(ExtractFilePath(ParamStr(0)) + 'Aspose.Words.dll'));
//  TDNLicense.Create.SetLicense('');

  LDoc := TDNDocument.DNClass.init(GetTestFile);
  Writeln('Count: ', LDoc.PageCount);
  LDoc.Save('docxtopdf.pdf', DNSaveFormat.Pdf);
  Writeln('Done');
end;

end.
