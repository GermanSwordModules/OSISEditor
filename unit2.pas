unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type
  TModuleType = (mtBible, mtCommentary, mtGenbook, mtDictionary);

  { TForm2 }

  TForm2 = class(TForm)
    btnCancel: TButton;
    btnInsertTemplate: TButton;
    btnOK: TButton;
    edCreator: TEdit;
    edLanguage: TEdit;
    edRefSystem: TEdit;
    edRefWork: TEdit;
    edTeiLang: TEdit;
    edTeiPublisher: TEdit;
    edTeiSource: TEdit;
    edTeiTitle: TEdit;
    edTitle: TEdit;
    edWorkID: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    rbBible: TRadioButton;
    rbCommentary: TRadioButton;
    rbDictionary: TRadioButton;
    rbGenbook: TRadioButton;
    procedure rbTypeClick(Sender: TObject);
  private
    procedure UpdateGroupBoxVisibility;
    function ExtractAttrVal(const s, attr: string): string;
    function ExtractTagText(const s, xmlTag: string): string;
  public
    procedure LoadMetadata(const xml: string);
    function GetModuleType: TModuleType;
    function GetOSISHeader: string;
    function GetTEIHeader: string;
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.UpdateGroupBoxVisibility;
begin
  GroupBox2.Visible := not rbDictionary.Checked;
  GroupBox3.Visible := rbDictionary.Checked;
  if rbBible.Checked      then edRefWork.Text := 'Bible'
  else if rbCommentary.Checked then edRefWork.Text := 'Commentary'
  else if rbGenbook.Checked    then edRefWork.Text := 'GenBook'
  else                          edRefWork.Text := '';
end;

procedure TForm2.rbTypeClick(Sender: TObject);
begin
  UpdateGroupBoxVisibility;
end;

function TForm2.ExtractAttrVal(const s, attr: string): string;
var p: integer;
begin
  Result := '';
  p := pos(attr + '="', s);
  if p = 0 then exit;
  Result := copy(s, p + length(attr) + 2, length(s));
  p := pos('"', Result);
  if p > 0 then Result := copy(Result, 1, p - 1);
end;

function TForm2.ExtractTagText(const s, xmlTag: string): string;
var p: integer; sub: string;
begin
  Result := '';
  p := pos('<' + xmlTag, s);
  if p = 0 then exit;
  sub := copy(s, p, length(s));
  p := pos('>', sub);
  if p = 0 then exit;
  sub := copy(sub, p + 1, length(sub));
  p := pos('</' + xmlTag + '>', sub);
  if p > 0 then Result := copy(sub, 1, p - 1);
end;

procedure TForm2.LoadMetadata(const xml: string);
begin
  if pos('<TEI', xml) > 0 then
    rbDictionary.Checked := True
  else if pos('osisRefWork="Commentary"', xml) > 0 then
    rbCommentary.Checked := True
  else if pos('osisRefWork="GenBook"', xml) > 0 then
    rbGenbook.Checked := True
  else
    rbBible.Checked := True;
  UpdateGroupBoxVisibility;

  edWorkID.Text    := ExtractAttrVal(xml, 'osisIDWork');
  edLanguage.Text  := ExtractAttrVal(xml, 'xml:lang');
  edTitle.Text     := ExtractTagText(xml, 'title');
  edCreator.Text   := ExtractTagText(xml, 'creator');
  edRefSystem.Text := ExtractTagText(xml, 'refSystem');
  if edRefSystem.Text = '' then edRefSystem.Text := 'Bible';

  edTeiTitle.Text     := ExtractTagText(xml, 'title');
  edTeiLang.Text      := ExtractAttrVal(xml, 'xml:lang');
  edTeiPublisher.Text := ExtractTagText(xml, 'publisher');
  edTeiSource.Text    := ExtractTagText(xml, 'p');
end;

function TForm2.GetModuleType: TModuleType;
begin
  if rbCommentary.Checked then Result := mtCommentary
  else if rbGenbook.Checked    then Result := mtGenbook
  else if rbDictionary.Checked then Result := mtDictionary
  else                              Result := mtBible;
end;

function TForm2.GetOSISHeader: string;
var refWork, workType: string;
begin
  case GetModuleType of
    mtCommentary: begin refWork := 'Commentary'; workType := 'Bible';   end;
    mtGenbook:    begin refWork := 'GenBook';    workType := 'GenBook'; end;
    else          begin refWork := 'Bible';       workType := 'Bible';   end;
  end;
  Result :=
    '<?xml version="1.0" encoding="UTF-8"?>' + #10 +
    '<osis xmlns="http://www.bibletechnologies.net/2003/OSIS/namespace"' + #10 +
    '      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' + #10 +
    '      xsi:schemaLocation="http://www.bibletechnologies.net/2003/OSIS/namespace' + #10 +
    '      http://www.bibletechnologies.net/osisCore.2.1.1.xsd">' + #10 +
    '<osisText osisIDWork="' + edWorkID.Text + '"' + #10 +
    '          osisRefWork="' + refWork + '"' + #10 +
    '          xml:lang="' + edLanguage.Text + '">' + #10 +
    '<header>' + #10 +
    '  <work osisWork="' + edWorkID.Text + '">' + #10 +
    '    <title>' + edTitle.Text + '</title>' + #10 +
    '    <creator role="aut">' + edCreator.Text + '</creator>' + #10 +
    '    <type type="OSIS">' + workType + '</type>' + #10 +
    '    <identifier type="OSIS">' + edWorkID.Text + '</identifier>' + #10 +
    '    <refSystem>' + edRefSystem.Text + '</refSystem>' + #10 +
    '  </work>' + #10 +
    '</header>' + #10 +
    '<div type="book">' + #10;
end;

function TForm2.GetTEIHeader: string;
begin
  Result :=
    '<?xml version="1.0" encoding="UTF-8"?>' + #10 +
    '<TEI xmlns="http://www.crosswire.org/2008/TEIOSIS/namespace">' + #10 +
    '<teiHeader>' + #10 +
    '  <fileDesc>' + #10 +
    '    <titleStmt>' + #10 +
    '      <title>' + edTeiTitle.Text + '</title>' + #10 +
    '    </titleStmt>' + #10 +
    '    <publicationStmt>' + #10 +
    '      <publisher>' + edTeiPublisher.Text + '</publisher>' + #10 +
    '    </publicationStmt>' + #10 +
    '    <sourceDesc>' + #10 +
    '      <p>' + edTeiSource.Text + '</p>' + #10 +
    '    </sourceDesc>' + #10 +
    '  </fileDesc>' + #10 +
    '</teiHeader>' + #10 +
    '<text xml:lang="' + edTeiLang.Text + '">' + #10 +
    '<body>' + #10;
end;

end.
