unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  Buttons, StdCtrls, Menus, SynHighlighterXML, SynEdit, SynEditWrappedView,
  Clipbrd, Spin, BGRASpeedButton, BCTrackbarUpdown;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    FindDialog1: TFindDialog;
    Label1: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    Separator10: TMenuItem;
    Separator9: TMenuItem;
    Separator8: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Separator7: TMenuItem;
    Separator6: TMenuItem;
    Separator5: TMenuItem;
    Separator4: TMenuItem;
    Separator3: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Separator2: TMenuItem;
    Separator1: TMenuItem;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    StatusBar1: TStatusBar;
    SynEdit1: TSynEdit;
    SynXMLSyn1: TSynXMLSyn;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    procedure Button1Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem30Click(Sender: TObject);
    procedure MenuItem31Click(Sender: TObject);
    procedure MenuItem32Click(Sender: TObject);
    procedure MenuItem37Click(Sender: TObject);
    procedure MenuItem38Click(Sender: TObject);
    procedure MenuItem39Click(Sender: TObject);
    procedure MenuItem40Click(Sender: TObject);
    procedure MenuItem41Click(Sender: TObject);
    procedure MenuItem42Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SynEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure SynEdit1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private

  public

  end;

var
  Form1: TForm1;

  filename : string;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var i:Integer;
  line : string;
  stelle : string;
begin
      TLazSynEditLineWrapPlugin.Create(SynEdit1);
      SynEdit1.TabWidth := 4;
      SynEdit1.WantTabs := True;
     // filename := '/home/jens/tmp/GermanSwordModules/alpha/comments/deuMacDonaldKommentar/deuMacDonaldKommentar.xml' ;
 // SynEdit1.Lines.LoadFromFile( filename);
     filename := 'unnamed'   ;

  // Build LIne index
      for i := 0 to SynEdit1.Lines.Count-1 do
      begin
          line := SynEdit1.Lines[i] ;
           if pos('annotateRef',line) > 0 then
           begin
                stelle := copy (line,  pos('annotateRef',line), Length(line));
                stelle := copy (stelle,  pos('"',stelle)+1, Length(stelle))     ;
                stelle := copy (stelle,  0, pos('"',stelle)-1)     ;
                ListBox1.Items.Add(stelle);
                ListBox2.Items.Add(IntToStr(i));


           end;


           if pos('osisID',line) > 0 then
           begin
                stelle := copy (line,  pos('osisID',line), Length(line));
                stelle := copy (stelle,  pos('"',stelle)+1, Length(stelle))     ;
                stelle := copy (stelle,  0, pos('"',stelle)-1)     ;
                ListBox1.Items.Add(stelle);
                ListBox2.Items.Add(IntToStr(i));
           end;
      end;

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  SynEdit1.CaretY := StrToInt(ListBox2.Items[ListBox1.ItemIndex]);
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
    FindDialog1.Execute;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
        if SynEdit1.SearchReplace(FindDialog1.FindText, '', [])=0 then MessageDlg('Kein Treffer','Der Suchtext wurde nicht gefunden.',mtInformation,[mbOK],0);
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
   
       SynEdit1.Lines.SaveToFile(filename );
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
    if SaveDialog1.Execute then
       begin
       SynEdit1.Lines.SaveToFile( SaveDialog1.Filename );
                 filename := SaveDialog1.Filename ;
       end;
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
    SynEdit1.SelText := '<hi type="bold">'+SynEdit1.SelText+'</hi>'    ;
   // SynEdit1.CaretY := SynEdit1.CaretY-5;
 // SynEdit1.SetFocus;
end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
  SynEdit1.SelText := '<hi type="italic">'+SynEdit1.SelText+'</hi>'       ;
   // SynEdit1.CaretY := SynEdit1.CaretY-5;
 // SynEdit1.SetFocus;
end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin
  SynEdit1.SelText := '<p>'+SynEdit1.SelText+'</p>'                      ;
  //  SynEdit1.CaretY := SynEdit1.CaretY-4;
 // SynEdit1.SetFocus;
end;

procedure TForm1.MenuItem28Click(Sender: TObject);
begin
  SynEdit1.InsertTextAtCaret( '</p>'+#13#10+'<p>');
end;

procedure TForm1.MenuItem29Click(Sender: TObject);
begin  
  SynEdit1.SelText := '<figure src="'+SynEdit1.SelText+'"/>'

end;

procedure TForm1.MenuItem2Click(Sender: TObject);   
      var i:integer;
        line:string;
        stelle:string;
begin

   if OpenDialog1.Execute then
   begin
     filename := OpenDialog1.Filename;
     SynEdit1.Lines.LoadFromFile( filename);
     Form1.Caption := 'OSIS Editor '+filename  ;
    ListBox1.clear;
    ListBox2.clear;
  // Build LIne index
      for i := 0 to SynEdit1.Lines.Count-1 do
      begin
          line := SynEdit1.Lines[i] ;
           if pos('annotateRef',line) > 0 then
           begin
                stelle := copy (line,  pos('annotateRef',line), Length(line));
                stelle := copy (stelle,  pos('"',stelle)+1, Length(stelle))     ;
                stelle := copy (stelle,  0, pos('"',stelle)-1)     ;
                ListBox1.Items.Add(stelle);
                ListBox2.Items.Add(IntToStr(i));
           end;


           if pos('osisID',line) > 0 then
           begin
                stelle := copy (line,  pos('osisID',line), Length(line));
                stelle := copy (stelle,  pos('"',stelle)+1, Length(stelle))     ;
                stelle := copy (stelle,  0, pos('"',stelle)-1)     ;
                ListBox1.Items.Add(stelle);
                ListBox2.Items.Add(IntToStr(i));
           end;
      end;
   end;

end;

procedure TForm1.MenuItem30Click(Sender: TObject);
begin
  
  SynEdit1.SelText := '<note placement="foot">'+SynEdit1.SelText+'"</note>'
end;

procedure TForm1.MenuItem31Click(Sender: TObject);

var   strPuffer: string;
begin
     If Clipboard.HasFormat(CF_TEXT) then
     begin
        strPuffer := Clipboard.AsText;
        strPuffer := StringReplace(strPuffer, '-'#13#10, '', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, ''#13#10, ' ', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, '-'#10, '', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, ''#10, ' ', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, '-'#13, '', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, ''#13, ' ', [rfReplaceAll]);

             // Label1.caption := Screen.ActiveForm.Name;

              Memo1.SelText := strPuffer;


     end;
end;

procedure TForm1.MenuItem32Click(Sender: TObject);
begin
  SynEdit1.InsertTextAtCaret( '</p></div>'+#13#10+'<div type="section" annotateType="commentary" annotateRef=""><p>');
end;

procedure TForm1.MenuItem37Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem38Click(Sender: TObject);
begin
  
     SynEdit1.SelText := '<div type="majorSection" osisID="'+StringReplace(SynEdit1.SelText, '.','', [rfReplaceAll]) +'">'+#13#10+'<title>'+SynEdit1.SelText+'</title>'+#13#10+'</div>' ;
end;

procedure TForm1.MenuItem39Click(Sender: TObject);
begin
  
     SynEdit1.SelText := '<div type="chapter" osisID="'+StringReplace(SynEdit1.SelText, '.','', [rfReplaceAll]) +'">'+#13#10+'<title>'+SynEdit1.SelText+'</title>'+#13#10+'</div>'  ;
end;

procedure TForm1.MenuItem40Click(Sender: TObject);
begin
  

     SynEdit1.SelText := '<div type="section" osisID="'+StringReplace(SynEdit1.SelText, '.','', [rfReplaceAll]) +'">'+#13#10+'<title>'+SynEdit1.SelText+'</title>'+#13#10+'</div>'   ;
end;

procedure TForm1.MenuItem41Click(Sender: TObject);
begin
  
     SynEdit1.SelText := '<div type="subSection" osisID="'+StringReplace(SynEdit1.SelText, '.','', [rfReplaceAll]) +'">'+#13#10+'<title>'+SynEdit1.SelText+'</title>'+#13#10+'</div>';
end;

procedure TForm1.MenuItem42Click(Sender: TObject);
var   strPuffer: string;
begin
     If Clipboard.HasFormat(CF_TEXT) then
     begin
        strPuffer := Clipboard.AsText;     
        strPuffer := StringReplace(strPuffer, #13#10#13#10, '</p><p>', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, #13#13, '</p><p>', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, #10#10, '</p><p>', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, '-'#13#10, '', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, ''#13#10, ' ', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, '-'#10, '', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, ''#10, ' ', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, '-'#13, '', [rfReplaceAll]);
        strPuffer := StringReplace(strPuffer, ''#13, ' ', [rfReplaceAll]);

        strPuffer := StringReplace(strPuffer, '</p><p>', '</p>'+#13#10+'<p>', [rfReplaceAll]);
             // Label1.caption := Screen.ActiveForm.Name;

              SynEdit1.SelText := '<p>'+strPuffer+'</p>';


     end;
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
var text2 : String;
begin
  text2 := SynEdit1.SelText;
  text2 := StringReplace(text2, '0.','</p>'+#13#10+'<p>0.', [rfReplaceAll]);
  text2 := StringReplace(text2, '1.','</p>'+#13#10+'<p>1.', [rfReplaceAll]);
  text2 := StringReplace(text2, '2.','</p>'+#13#10+'<p>2.', [rfReplaceAll]);
  text2 := StringReplace(text2, '3.','</p>'+#13#10+'<p>3.', [rfReplaceAll]);
  text2 := StringReplace(text2, '4.','</p>'+#13#10+'<p>4.', [rfReplaceAll]);
  text2 := StringReplace(text2, '5.','</p>'+#13#10+'<p>5.', [rfReplaceAll]);
  text2 := StringReplace(text2, '6.','</p>'+#13#10+'<p>6.', [rfReplaceAll]);
  text2 := StringReplace(text2, '7.','</p>'+#13#10+'<p>7.', [rfReplaceAll]);
  text2 := StringReplace(text2, '8.','</p>'+#13#10+'<p>8.', [rfReplaceAll]);
  text2 := StringReplace(text2, '9.','</p>'+#13#10+'<p>9.', [rfReplaceAll]);
  SynEdit1.SelText := text2;

end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
var i,j:integer;
  table:String;
begin
   table := '<table>'+#13#10    ;
   for j := 0 to SpinEdit4.value do
   begin
     // Teilen
        
   table := table+'<row>'+#13#10    ;

     for i := 0 to  SpinEdit3.value do
     begin
        // Spalten    
           table := table+ '<cell></cell>'+#13#10      ;
     end;

   table:= table+ '</row>'+#13#10  ;
   end;

   table := table+ '</table>' ;
   SynEdit1.SelText :=  #13#10+table+#13#10;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     Label1.caption := SynEdit1.SelText;
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
begin
      if SynEdit1.SearchReplace(FindDialog1.FindText, '', [])=0 then MessageDlg('Kein Treffer','Der Suchtext wurde nicht gefunden.',mtInformation,[mbOK],0);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
     SynEdit1.SelText := '<div type="book" osisID="'+ComboBox1.Items[ComboBox1.ItemIndex]+'">'+SynEdit1.SelText+'</div>'
    // SynEdit1.SelText := '<hi type="bold">'+SynEdit1.SelText+'</hi>'
   //SynEdit1.InsertTextAtCaret( );
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
   // SynEdit1.InsertTextAtCaret( '<hi type="italic"></hi>');
   // SynEdit1.SelText := '<hi type="italic">'+SynEdit1.SelText+'</hi>'
     SynEdit1.SelText := '<div type="section" annotateType="commentary" annotateRef="'+ComboBox1.Items[ComboBox1.ItemIndex]+'.'+IntToStr(SpinEdit1.Value)+'.'+IntToStr(SpinEdit2.Value)+'">'+SynEdit1.SelText+'</div>'
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  
     SynEdit1.SelText := '<div type="section" annotateType="commentary" annotateRef="'+ComboBox1.Items[ComboBox1.ItemIndex]+'.'+IntToStr(SpinEdit1.Value)+'">'+SynEdit1.SelText+'</div>'
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
var  i:integer;
begin
     if SynEdit1.BlockEnd.y > SynEdit1.BlockBegin.y    then
     begin
        for i := SynEdit1.BlockBegin.y+1 downto   SynEdit1.BlockEnd.y-1 do
        begin

        SynEdit1.Lines[i-1] :=  StringReplace(TrimRIght(SynEdit1.Lines[i-1]), '</p>', '', [rfIgnoreCase, rfReplaceAll])+ ' ' + StringReplace(TrimLeft(SynEdit1.Lines[i]), '<p>', '', [rfIgnoreCase, rfReplaceAll]);
        SynEdit1.Lines.Delete(i);
        end;
     end;
     //SynEdit1.BlockEnd.y := SynEdit1.BlockBegin.y  ;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
var i:integer;
  line, stelle:String;
begin
  ListBox1.clear;
    ListBox2.clear;
  // Build LIne index
      for i := 0 to SynEdit1.Lines.Count-1 do
      begin
          line := SynEdit1.Lines[i] ;
           if pos('annotateRef',line) > 0 then
           begin
                stelle := copy (line,  pos('annotateRef',line), Length(line));
                stelle := copy (stelle,  pos('"',stelle)+1, Length(stelle))     ;
                stelle := copy (stelle,  0, pos('"',stelle)-1)     ;
                ListBox1.Items.Add(stelle);
                ListBox2.Items.Add(IntToStr(i));
           end;

           if pos('osisID',line) > 0 then
           begin
                stelle := copy (line,  pos('osisID',line), Length(line));
                stelle := copy (stelle,  pos('"',stelle)+1, Length(stelle))     ;
                stelle := copy (stelle,  0, pos('"',stelle)-1)     ;
                ListBox1.Items.Add(stelle);
                ListBox2.Items.Add(IntToStr(i));
           end;
      end;
end;

procedure TForm1.SynEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Statusbar1.simpletext := IntToStr(SynEdit1.BlockBegin.y)+' '+IntToStr(SynEdit1.BlockEnd.y);
end;

procedure TForm1.SynEdit1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Statusbar1.simpletext := IntToStr(SynEdit1.BlockBegin.y)+' '+IntToStr(SynEdit1.BlockEnd.y);
end;

end.

