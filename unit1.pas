unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  Buttons, StdCtrls, Menus, SynHighlighterXML, SynEdit, SynEditWrappedView,
  SynEditTypes, Clipbrd, Spin, BGRASpeedButton, BCTrackbarUpdown,
  ShellCtrls, Unit2, Unit3, Process, IniFiles;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    FindDialog1: TFindDialog;
    Label1: TLabel;
    TreeView1: TTreeView;
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
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItem60: TMenuItem;
    MenuItem61: TMenuItem;
    MenuItem62: TMenuItem;
    MenuItem63: TMenuItem;
    MenuItem64: TMenuItem;
    MenuItem65: TMenuItem;
    MenuItem66: TMenuItem;
    MenuItem67: TMenuItem;
    MenuItem68: TMenuItem;
    MenuItem74: TMenuItem;
    MenuItem75: TMenuItem;
    MenuItem76: TMenuItem;
    MenuItem77: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Separator10: TMenuItem;
    Separator11: TMenuItem;
    Separator12: TMenuItem;
    Separator13: TMenuItem;
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
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
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
    procedure FormDestroy(Sender: TObject);
    procedure TreeView1SelectionChanged(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
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
    procedure MenuItem43Click(Sender: TObject);
    procedure MenuItem44Click(Sender: TObject);
    procedure MenuItem45Click(Sender: TObject);
    procedure MenuItem46Click(Sender: TObject);
    procedure MenuItem47Click(Sender: TObject);
    procedure MenuItem48Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure MenuItem50Click(Sender: TObject);
    procedure MenuItem51Click(Sender: TObject);
    procedure MenuItem52Click(Sender: TObject);
    procedure MenuItem53Click(Sender: TObject);
    procedure MenuItem55Click(Sender: TObject);
    procedure MenuItem56Click(Sender: TObject);
    procedure MenuItem57Click(Sender: TObject);
    procedure MenuItem58Click(Sender: TObject);
    procedure MenuItem59Click(Sender: TObject);
    procedure MenuItem60Click(Sender: TObject);
    procedure MenuItem61Click(Sender: TObject);
    procedure MenuItem63Click(Sender: TObject);
    procedure MenuItem64Click(Sender: TObject);
    procedure MenuItem65Click(Sender: TObject);
    procedure MenuItem66Click(Sender: TObject);
    procedure MenuItem67Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem68Click(Sender: TObject);
    procedure MenuItem75Click(Sender: TObject);
    procedure MenuItem76Click(Sender: TObject);
    procedure HistoryItemClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PageControl1CloseTabClicked(Sender: TObject; APage: TCustomPage);
    procedure BuildIndex;
    procedure UpdateMenuForType;
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SynEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SynEdit1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SynEditStatusChange(Sender: TObject; Changes: TSynStatusChanges);
  private
    { Context popup menu }
    PopupMenu1      : TPopupMenu;
    PopupItemBible  : array[0..2] of TMenuItem;
    PopupItemDict   : array[0..2] of TMenuItem;
    { Mini selection toolbar }
    MiniBar         : TPanel;
    { File browser }
    FileBrowserPanel : TPanel;
    FileTree         : TShellListView;
    FilePreviewImg   : TImage;
    FilePanelMenu    : TPopupMenu;
    FileFilterCombo  : TComboBox;
    HomePath         : string;
    { Right panel toggle }
    RightToggleStrip: TPanel;
    RightToggleBtn  : TSpeedButton;
    { Hover image popup }
    HoverPopup        : TPanel;
    HoverImage        : TImage;
    HoverLastLine     : integer;
    HoverLastSyn      : TSynEdit;
    HoverTimer        : TTimer;
    HoverPendingPath  : string;
    HoverPendingPt    : TPoint;
    procedure ShowMiniBar(const screenPt: TPoint);
    procedure HideMiniBar;
    procedure MiniBarActionClick(Sender: TObject);
    procedure AssignGlyphs;
    { Tab unsaved indicator }
    procedure UpdateTabCaption(idx: integer);
    { Returns the editor of the currently active tab }
    function Ed: TSynEdit;
    { Creates a new editor tab; returns its TSynEdit }
    function NewEditorTab(const tabCaption: string): TSynEdit;
    { Sync per-tab metadata from global vars into TabMeta }
    procedure SaveCurrentTabMeta;
    { Load per-tab metadata from TabMeta into global vars }
    procedure LoadTabMeta(idx: integer);
    { Configure a freshly-created TSynEdit to match SynEdit1 settings }
    procedure ConfigureEditor(e: TSynEdit);
    { Recent files }
    procedure LoadRecentFiles;
    procedure SaveRecentFiles;
    procedure AddRecentFile(const fn: string);
    procedure UpdateRecentMenu;
    procedure RecentFileClick(Sender: TObject);
    { Language }
    procedure LoadLanguage(const code: string);
    procedure ApplyLanguage;
    { Change history }
    procedure RecordChange(const desc: string);
    procedure UpdateHistoryMenu;
    { Unsaved-changes guard }
    function ConfirmDiscardChanges(const tabIdx: integer): boolean;
    { Font size }
    procedure ApplyFontSize(sz: integer);
    { Popup menu }
    procedure PopupMenu1Popup(Sender: TObject);
    procedure PopupCutClick(Sender: TObject);
    procedure PopupCopyClick(Sender: TObject);
    procedure PopupPasteClick(Sender: TObject);
    procedure PopupUndoClick(Sender: TObject);
    procedure PopupRedoClick(Sender: TObject);
    procedure PopupFindClick(Sender: TObject);
    procedure RebuildFileList;
    procedure FileTreeSelChange(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure FileListDblClick(Sender: TObject);
    procedure FileTreeHomeClick(Sender: TObject);
    procedure FileTreeUpClick(Sender: TObject);
    procedure FilterComboChange(Sender: TObject);
    procedure FileInsertWithP(Sender: TObject);
    procedure FileInsertWithoutP(Sender: TObject);
    procedure ToggleRightPanel(Sender: TObject);
    procedure SynEditMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure HoverTimerTick(Sender: TObject);
    procedure SynEditDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SynEditDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TreeExpandAllClick(Sender: TObject);
    procedure TreeCollapseAllClick(Sender: TObject);
    function  IsImageFile(const fn: string): boolean;
    procedure InsertFigureFromFile(const fn: string; withP: boolean);
  public
  end;

  { Per-tab metadata record }
  TTabMeta = record
    Filename  : string;
    IsConfFile: boolean;
    ModType   : TModuleType;
  end;

var
  Form1          : TForm1;
  { Global "current" state (mirrors the active tab) }
  filename       : string;
  confFilename   : string;
  ModuleType     : TModuleType;
  { Per-tab state }
  TabMetas       : array of TTabMeta;
  { i18n }
  LangData       : TStringList;
  CurrentLang    : string;
  { Recent files }
  RecentFiles    : TStringList;
  { Change history }
  ChangeHistory  : TStringList;
  { Font size (pt) }
  EditorFontSize : integer;

implementation

{$R *.lfm}

{ ─── helpers ─────────────────────────────────────────────────────────────── }

function T(const key: string): string;
begin
  Result := LangData.Values[key];
  if Result = '' then Result := key;
end;

function GetCfgDir: string;
begin
  Result := GetAppConfigDir(False);
  if not DirectoryExists(Result) then
    ForceDirectories(Result);
end;

function ExtractAttr(const line, attr: string): string;
var p: integer;
begin
  Result := '';
  p := pos(attr + '="', line);
  if p = 0 then exit;
  Result := copy(line, p + length(attr) + 2, length(line));
  p := pos('"', Result);
  if p > 0 then Result := copy(Result, 1, p - 1);
end;

function DetectModuleType(const content: string): TModuleType;
begin
  if pos('<TEI', content) > 0 then Result := mtDictionary
  else if pos('osisRefWork="Commentary"', content) > 0 then Result := mtCommentary
  else if (pos('osisRefWork="GenBook"', content) > 0) or
          (pos('osisRefWork="book"', content) > 0) then Result := mtGenbook
  else Result := mtBible;
end;

{ ─── Bible reference converter ───────────────────────────────────────────── }

function NormalizeBook(const s: string): string;
var i: integer; b1, b2: byte;
begin
  Result := '';
  i := 1;
  while i <= length(s) do
  begin
    b1 := ord(s[i]);
    if (b1 >= ord('A')) and (b1 <= ord('Z')) then
      begin Result += chr(b1 + 32); inc(i); end
    else if ((b1 >= ord('a')) and (b1 <= ord('z'))) or
            ((b1 >= ord('0')) and (b1 <= ord('9'))) then
      begin Result += chr(b1); inc(i); end
    else if (b1 = $C3) and (i < length(s)) then
    begin
      b2 := ord(s[i+1]);
      case b2 of
        $A4, $84: Result += 'a';
        $B6, $96: Result += 'o';
        $BC, $9C: Result += 'u';
        $9F:      Result += 'ss';
      end;
      inc(i, 2);
    end
    else
      inc(i);
  end;
end;

function BookToOSIS(const norm: string): string;
begin
  case norm of
    'gen','genesis','1mose','1mos': Result := 'Gen';
    'exod','ex','exodus','2mose','2mos': Result := 'Exod';
    'lev','leviticus','levitikus','3mose','3mos': Result := 'Lev';
    'num','numeri','numbers','4mose','4mos': Result := 'Num';
    'deut','deuteronomy','deuteronomium','5mose','5mos': Result := 'Deut';
    'josh','jos','josua','joshua': Result := 'Josh';
    'judg','ri','richter','judges': Result := 'Judg';
    'ruth','rut': Result := 'Ruth';
    '1sam','1samuel': Result := '1Sam';
    '2sam','2samuel': Result := '2Sam';
    '1kgs','1kon','1konige','1kings': Result := '1Kgs';
    '2kgs','2kon','2konige','2kings': Result := '2Kgs';
    '1chr','1chronik','1chronicles': Result := '1Chr';
    '2chr','2chronik','2chronicles': Result := '2Chr';
    'ezra','esra': Result := 'Ezra';
    'neh','nehemia','nehemiah': Result := 'Neh';
    'esth','ester','esther': Result := 'Esth';
    'job','hiob': Result := 'Job';
    'ps','psa','psalm','psalms','psalmen': Result := 'Ps';
    'prov','spr','spruche','proverbs': Result := 'Prov';
    'eccl','prediger','ecclesiastes','kohelet','koh': Result := 'Eccl';
    'song','hld','hoheslied','hohelied': Result := 'Song';
    'isa','jes','jesaja','isaiah': Result := 'Isa';
    'jer','jeremia','jeremiah': Result := 'Jer';
    'lam','kgl','klagelieder','lamentations': Result := 'Lam';
    'ezek','hes','hesekiel','ezechiel','ezekiel': Result := 'Ezek';
    'dan','daniel': Result := 'Dan';
    'hos','hosea': Result := 'Hos';
    'joel': Result := 'Joel';
    'amos','am': Result := 'Amos';
    'obad','obadja','obadiah': Result := 'Obad';
    'jonah','jona': Result := 'Jonah';
    'mic','micha','micah': Result := 'Mic';
    'nah','nahum': Result := 'Nah';
    'hab','habakuk','habakkuk': Result := 'Hab';
    'zeph','zef','zefanja','zephaniah': Result := 'Zeph';
    'hag','haggai': Result := 'Hag';
    'zech','sach','sacharja','zechariah': Result := 'Zech';
    'mal','maleachi','malachi': Result := 'Mal';
    'matt','matth','mt','matthaus','matthew': Result := 'Matt';
    'mark','mk','markus': Result := 'Mark';
    'luke','lk','lukas': Result := 'Luke';
    'john','joh','jn','johannes': Result := 'John';
    'acts','apg','apostelgeschichte': Result := 'Acts';
    'rom','romer','romans': Result := 'Rom';
    '1cor','1kor','1korinther','1corinthians': Result := '1Cor';
    '2cor','2kor','2korinther','2corinthians': Result := '2Cor';
    'gal','galater','galatians': Result := 'Gal';
    'eph','epheser','ephesians': Result := 'Eph';
    'phil','philipper','philippians': Result := 'Phil';
    'col','kol','kolosser','colossians': Result := 'Col';
    '1thess','1th','1thessalonicher','1thessalonians': Result := '1Thess';
    '2thess','2th','2thessalonicher','2thessalonians': Result := '2Thess';
    '1tim','1timotheus','1timothy': Result := '1Tim';
    '2tim','2timotheus','2timothy': Result := '2Tim';
    'titus','tit': Result := 'Titus';
    'phlm','phm','philemon': Result := 'Phlm';
    'heb','hebr','hebraer','hebrews': Result := 'Heb';
    'jas','jak','jakobus','james': Result := 'Jas';
    '1pet','1petrus','1peter': Result := '1Pet';
    '2pet','2petrus','2peter': Result := '2Pet';
    '1john','1joh','1jn','1johannes': Result := '1John';
    '2john','2joh','2jn','2johannes': Result := '2John';
    '3john','3joh','3jn','3johannes': Result := '3John';
    'jude','jud','judas': Result := 'Jude';
    'rev','offb','apk','offenbarung','revelation': Result := 'Rev';
    else Result := '';
  end;
end;

function IsRefLetter(b: byte): boolean; inline;
begin
  Result := ((b >= ord('A')) and (b <= ord('Z'))) or
            ((b >= ord('a')) and (b <= ord('z'))) or
            (b >= $80);
end;

function ConvertBibleRefs(const text: string): string;
var
  i, j, refStart: integer;
  numPart, bookPart, combined, osis: string;
  chapStr, versStr, osisRef, origRef: string;
  b: byte;
  len: integer;
begin
  Result := '';
  i := 1;
  len := length(text);
  while i <= len do
  begin
    b := ord(text[i]);
    refStart := i;
    numPart  := '';
    bookPart := '';
    j := i;

    if (b >= ord('1')) and (b <= ord('3')) then
    begin
      numPart := text[j]; inc(j);
      if (j <= len) and (text[j] = '.') then inc(j);
      if (j <= len) and (text[j] = ' ') then inc(j);
      bookPart := '';
      while (j <= len) and IsRefLetter(ord(text[j])) do
        begin bookPart += text[j]; inc(j); end;
      if bookPart = '' then
        begin Result += text[i]; inc(i); continue; end;
      combined := NormalizeBook(numPart + bookPart);
    end
    else if (b >= ord('A')) and (b <= ord('Z')) then
    begin
      while (j <= len) and IsRefLetter(ord(text[j])) do
        begin bookPart += text[j]; inc(j); end;
      combined := NormalizeBook(bookPart);
    end
    else
    begin
      Result += text[i]; inc(i);
      while (i <= len) and ((ord(text[i]) and $C0) = $80) do
        begin Result += text[i]; inc(i); end;
      continue;
    end;

    osis := BookToOSIS(combined);
    if osis = '' then
      begin Result += text[i]; inc(i); continue; end;

    { skip optional trailing dot after book abbreviation ("Röm." → skip the dot) }
    if (j <= len) and (text[j] = '.') then inc(j);
    while (j <= len) and (text[j] = ' ') do inc(j);

    chapStr := '';
    while (j <= len) and (text[j] in ['0'..'9']) do
      begin chapStr += text[j]; inc(j); end;
    if chapStr = '' then
      begin Result += text[i]; inc(i); continue; end;

    while (j <= len) and (text[j] = ' ') do inc(j);

    if (j > len) or not (text[j] in [':', ',']) then
      begin Result += text[i]; inc(i); continue; end;
    inc(j);

    while (j <= len) and (text[j] = ' ') do inc(j);

    versStr := '';
    while (j <= len) and (text[j] in ['0'..'9']) do
      begin versStr += text[j]; inc(j); end;
    if versStr = '' then
      begin Result += text[i]; inc(i); continue; end;

    if (j <= len) and (text[j] = '-') then
    begin
      inc(j);
      while (j <= len) and (text[j] in ['0'..'9']) do inc(j);
    end;

    origRef := copy(text, refStart, j - refStart);
    osisRef  := osis + '.' + chapStr + '.' + versStr;
    Result += '<reference osisRef="' + osisRef + '">' + origRef + '</reference>';
    i := j;
  end;
end;

{ ─── build tool ─────────────────────────────────────────────────────────── }

procedure RunBuildTool(const exe, arg1, arg2: string; memo: TMemo);
var
  proc: TProcess;
  buf : string;
  nr  : integer;
begin
  proc := TProcess.Create(nil);
  try
    proc.Executable := exe;
    if arg1 <> '' then proc.Parameters.Add(arg1);
    if arg2 <> '' then proc.Parameters.Add(arg2);
    proc.Options := [poUsePipes, poStderrToOutPut, poWaitOnExit];
    try
      proc.Execute;
    except
      on E: Exception do
      begin
        MessageDlg('Fehler', exe + ' konnte nicht gestartet werden:' + LineEnding + E.Message,
                   mtError, [mbOK], 0);
        exit;
      end;
    end;
    SetLength(buf, proc.Output.NumBytesAvailable);
    if length(buf) > 0 then
    begin
      nr := proc.Output.Read(buf[1], length(buf));
      SetLength(buf, nr);
    end;
    if buf = '' then
      buf := '(keine Ausgabe - Exitcode ' + IntToStr(proc.ExitCode) + ')';
    memo.Lines.Text := buf;
  finally
    proc.Free;
  end;
end;

{ ─── TForm1 private ─────────────────────────────────────────────────────── }

function TForm1.Ed: TSynEdit;
var ap: TTabSheet;
begin
  ap := PageControl1.ActivePage;
  if ap = TabSheet1 then
    Result := SynEdit1
  else if (ap <> nil) and (ap.ControlCount > 0) then
    Result := ap.Controls[0] as TSynEdit
  else
    Result := SynEdit1;
end;

procedure TForm1.ConfigureEditor(e: TSynEdit);
begin
  e.TabWidth := 4;
  e.WantTabs := True;
  e.Font.Name := 'DejaVu Sans Mono';
  e.Font.Size := EditorFontSize;
  e.Highlighter    := SynXMLSyn1;
  e.OnKeyDown      := @SynEdit1KeyDown;
  e.OnMouseUp      := @SynEdit1MouseUp;
  e.OnStatusChange := @SynEditStatusChange;
  e.OnMouseMove    := @SynEditMouseMove;
  e.OnDragOver     := @SynEditDragOver;
  e.OnDragDrop     := @SynEditDragDrop;
  e.PopupMenu      := PopupMenu1;
  e.Options        := e.Options - [eoScrollPastEol];
  TLazSynEditLineWrapPlugin.Create(e);
end;

function TForm1.NewEditorTab(const tabCaption: string): TSynEdit;
var ts: TTabSheet; e: TSynEdit; meta: TTabMeta;
begin
  ts := PageControl1.AddTabSheet;
  ts.Caption := tabCaption;
  e := TSynEdit.Create(ts);
  e.Parent := ts;
  e.Align  := alClient;
  ConfigureEditor(e);
  meta.Filename   := 'unnamed';
  meta.IsConfFile := False;
  meta.ModType    := mtBible;
  SetLength(TabMetas, length(TabMetas) + 1);
  TabMetas[high(TabMetas)] := meta;
  PageControl1.ActivePage := ts;
  Result := e;
end;

procedure TForm1.SaveCurrentTabMeta;
var idx: integer;
begin
  idx := PageControl1.ActivePageIndex;
  if (idx < 0) or (idx >= length(TabMetas)) then exit;
  TabMetas[idx].Filename   := filename;
  TabMetas[idx].IsConfFile := (confFilename <> '') and
                               (filename = confFilename);
  TabMetas[idx].ModType    := ModuleType;
end;

procedure TForm1.LoadTabMeta(idx: integer);
begin
  if (idx < 0) or (idx >= length(TabMetas)) then exit;
  filename     := TabMetas[idx].Filename;
  ModuleType   := TabMetas[idx].ModType;
  confFilename := '';
  if TabMetas[idx].IsConfFile then confFilename := filename;
end;

{ ─── recent files ────────────────────────────────────────────────────────── }

procedure TForm1.LoadRecentFiles;
var fn: string;
begin
  fn := GetCfgDir + 'recent.txt';
  if FileExists(fn) then
    RecentFiles.LoadFromFile(fn)
  else
    RecentFiles.Clear;
  UpdateRecentMenu;
end;

procedure TForm1.SaveRecentFiles;
begin
  RecentFiles.SaveToFile(GetCfgDir + 'recent.txt');
end;

procedure TForm1.AddRecentFile(const fn: string);
var i: integer;
begin
  i := RecentFiles.IndexOf(fn);
  if i >= 0 then RecentFiles.Delete(i);
  RecentFiles.Insert(0, fn);
  while RecentFiles.Count > 5 do
    RecentFiles.Delete(RecentFiles.Count - 1);
  SaveRecentFiles;
  UpdateRecentMenu;
end;

procedure TForm1.UpdateRecentMenu;
var i: integer; mi: TMenuItem;
begin
  MenuItem74.Clear;
  for i := 0 to RecentFiles.Count - 1 do
  begin
    mi := TMenuItem.Create(MenuItem74);
    mi.Caption := IntToStr(i+1) + '  ' + RecentFiles[i];
    mi.Tag     := i;
    mi.OnClick := @RecentFileClick;
    MenuItem74.Add(mi);
  end;
  MenuItem74.Enabled := RecentFiles.Count > 0;
end;

procedure TForm1.RecentFileClick(Sender: TObject);
var fn: string;
begin
  fn := RecentFiles[(Sender as TMenuItem).Tag];
  if not FileExists(fn) then
  begin
    MessageDlg('Datei nicht gefunden', fn, mtError, [mbOK], 0);
    exit;
  end;
  filename := fn;
  SaveCurrentTabMeta;
  NewEditorTab(ExtractFileName(fn));
  Ed.Lines.LoadFromFile(fn);
  TabMetas[PageControl1.ActivePageIndex].Filename := fn;
  TabMetas[PageControl1.ActivePageIndex].ModType  := DetectModuleType(Ed.Lines.Text);
  LoadTabMeta(PageControl1.ActivePageIndex);
  AddRecentFile(fn);
  Caption := 'OSIS Editor - ' + fn;
  ModuleType := DetectModuleType(Ed.Lines.Text);
  HomePath := ExtractFilePath(fn);
  UpdateMenuForType;
  BuildIndex;
  RebuildFileList;
end;

{ ─── language ────────────────────────────────────────────────────────────── }

procedure TForm1.LoadLanguage(const code: string);
var fn: string;
begin
  CurrentLang := code;
  fn := ExtractFilePath(ParamStr(0)) + 'lang_' + code + '.txt';
  LangData.Clear;
  if FileExists(fn) then
    LangData.LoadFromFile(fn);
end;

procedure TForm1.ApplyLanguage;
begin
  MenuItem1.Caption  := T('menu_file');
  MenuItem3.Caption  := T('menu_edit');
  MenuItem12.Caption := T('menu_search');
  MenuItem20.Caption := T('menu_format');
  MenuItem37.Caption := T('menu_books');
  MenuItem19.Caption := T('menu_commentary');
  MenuItem49.Caption := T('menu_bible');
  MenuItem54.Caption := T('menu_dictionary');
  MenuItem62.Caption := T('menu_tools');
  MenuItem21.Caption := T('menu_help');

  MenuItem22.Caption := T('file_new');
  MenuItem2.Caption  := T('file_open');
  MenuItem23.Caption := T('file_save');
  MenuItem24.Caption := T('file_saveas');
  MenuItem75.Caption := T('file_close_tab');
  MenuItem74.Caption := T('file_recent');
  MenuItem4.Caption  := T('file_exit');

  MenuItem63.Caption := T('tools_metadata');
  MenuItem65.Caption := T('tools_osis2mod');
  MenuItem66.Caption := T('tools_tei2mod');
  MenuItem67.Caption := T('tools_conf_open');
  MenuItem68.Caption := T('tools_conf_save');
  MenuItem76.Caption := T('tools_settings');
end;

{ ─── form lifecycle ─────────────────────────────────────────────────────── }

procedure TForm1.FormCreate(Sender: TObject);
var langCode: string; cfgFile: string;
    il: TImageList; bmp: TBitmap;
    ini: TIniFile; mi: TMenuItem;
    btn: TSpeedButton; bx: integer;
    tvBtnA, tvBtnB: TSpeedButton;
    pmOCR: TMenuItem;
    fmi: TMenuItem;
    fpSpl, fbMid: TSplitter;
    ftHdr, insBar: TPanel;
begin
  { language + font size — read from INI file }
  LangData := TStringList.Create;
  LangData.NameValueSeparator := '=';
  cfgFile := GetCfgDir + 'settings.ini';
  ini := TIniFile.Create(cfgFile);
  try
    langCode       := ini.ReadString ('Settings', 'Language', 'de');
    EditorFontSize := ini.ReadInteger('Settings', 'FontSize',  11);
  finally
    ini.Free;
  end;
  LoadLanguage(langCode);
  ApplyLanguage;

  { recent files }
  RecentFiles := TStringList.Create;
  LoadRecentFiles;

  { change history }
  ChangeHistory := TStringList.Create;
  UpdateHistoryMenu;

  { first tab meta (TabSheet1 / SynEdit1) }
  SetLength(TabMetas, 1);
  TabMetas[0].Filename   := 'unnamed';
  TabMetas[0].IsConfFile := False;
  TabMetas[0].ModType    := mtBible;

  { configure the LFM-created first editor }
  SynEdit1.TabWidth  := 4;
  SynEdit1.WantTabs  := True;
  SynEdit1.Font.Name := 'DejaVu Sans Mono';
  SynEdit1.Font.Size := EditorFontSize;
  TLazSynEditLineWrapPlugin.Create(SynEdit1);

  { build TreeView image list }
  il := TImageList.Create(Self);
  il.Width  := 16;
  il.Height := 16;
  bmp := TBitmap.Create;
  try
    bmp.Width       := 16;
    bmp.Height      := 16;
    bmp.PixelFormat := pf24bit;
    { icon 0: blue folder = book / top-level group }
    bmp.Canvas.Brush.Color := clFuchsia;
    bmp.Canvas.FillRect(Rect(0, 0, 16, 16));
    bmp.Canvas.Brush.Color := $3399FF;
    bmp.Canvas.Pen.Color   := clNavy;
    bmp.Canvas.FillRect(Rect(1, 5, 14, 13));
    bmp.Canvas.FillRect(Rect(1, 3,  7,  6));
    il.AddMasked(bmp, clFuchsia);
    { icon 1: green page = chapter / section }
    bmp.Canvas.Brush.Color := clFuchsia;
    bmp.Canvas.FillRect(Rect(0, 0, 16, 16));
    bmp.Canvas.Brush.Color := $33AA44;
    bmp.Canvas.Pen.Color   := $005500;
    bmp.Canvas.FillRect(Rect(2, 1, 13, 14));
    bmp.Canvas.Brush.Color := clFuchsia;
    bmp.Canvas.FillRect(Rect(10, 1, 13, 4));
    il.AddMasked(bmp, clFuchsia);
    { icon 2: orange bookmark = dict entry / leaf without dot-group }
    bmp.Canvas.Brush.Color := clFuchsia;
    bmp.Canvas.FillRect(Rect(0, 0, 16, 16));
    bmp.Canvas.Brush.Color := $FF8833;
    bmp.Canvas.Pen.Color   := $CC5500;
    bmp.Canvas.Polygon([Point(3,1),Point(12,1),Point(12,13),Point(7,10),Point(3,13)]);
    il.AddMasked(bmp, clFuchsia);
  finally
    bmp.Free;
  end;
  TreeView1.Images := il;

  filename     := 'unnamed';
  confFilename := '';
  ModuleType   := mtBible;
  UpdateMenuForType;

  { ── Build SynEdit context menu ── }
  PopupMenu1 := TPopupMenu.Create(Self);
  PopupMenu1.OnPopup := @PopupMenu1Popup;

  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Ausschneiden';  mi.OnClick := @PopupCutClick;   PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Kopieren';      mi.OnClick := @PopupCopyClick;  PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Einf' + #252 + 'gen'; mi.OnClick := @PopupPasteClick; PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := '-'; PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'R' + #252 + 'ckg' + #228 + 'ngig'; mi.OnClick := @PopupUndoClick; PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Wiederholen';   mi.OnClick := @PopupRedoClick;  PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := '-'; PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Suchen...';     mi.OnClick := @PopupFindClick;  PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := '-'; PopupMenu1.Items.Add(mi);
  { format items (always visible) }
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Fett <hi bold>';    mi.OnClick := @MenuItem25Click; PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Kursiv <hi italic>';mi.OnClick := @MenuItem26Click; PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Absatz <p>';        mi.OnClick := @MenuItem27Click; PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Fu' + #223 + 'note <note>'; mi.OnClick := @MenuItem30Click; PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := 'Verweis <reference>'; mi.OnClick := @MenuItem45Click; PopupMenu1.Items.Add(mi);
  mi := TMenuItem.Create(PopupMenu1); mi.Caption := '-'; PopupMenu1.Items.Add(mi);
  { Bible-specific items (shown/hidden in OnPopup) }
  PopupItemBible[0] := TMenuItem.Create(PopupMenu1); PopupItemBible[0].Caption := 'Vers <verse>'; PopupItemBible[0].OnClick := @MenuItem50Click; PopupMenu1.Items.Add(PopupItemBible[0]);
  PopupItemBible[1] := TMenuItem.Create(PopupMenu1); PopupItemBible[1].Caption := 'Wort <w>';     PopupItemBible[1].OnClick := @MenuItem51Click; PopupMenu1.Items.Add(PopupItemBible[1]);
  PopupItemBible[2] := TMenuItem.Create(PopupMenu1); PopupItemBible[2].Caption := 'Zitat <q>';    PopupItemBible[2].OnClick := @MenuItem53Click; PopupMenu1.Items.Add(PopupItemBible[2]);
  { Dictionary-specific items }
  PopupItemDict[0] := TMenuItem.Create(PopupMenu1); PopupItemDict[0].Caption := 'Eintrag <entryFree>'; PopupItemDict[0].OnClick := @MenuItem55Click; PopupMenu1.Items.Add(PopupItemDict[0]);
  PopupItemDict[1] := TMenuItem.Create(PopupMenu1); PopupItemDict[1].Caption := 'Bedeutung <sense>';   PopupItemDict[1].OnClick := @MenuItem56Click; PopupMenu1.Items.Add(PopupItemDict[1]);
  PopupItemDict[2] := TMenuItem.Create(PopupMenu1); PopupItemDict[2].Caption := 'Definition <def>';    PopupItemDict[2].OnClick := @MenuItem57Click; PopupMenu1.Items.Add(PopupItemDict[2]);

  SynEdit1.PopupMenu := PopupMenu1;

  { ── Mini selection toolbar ── }
  MiniBar := TPanel.Create(Self);
  MiniBar.Parent     := Self;
  MiniBar.Width      := 8 * 26 + 6;
  MiniBar.Height     := 30;
  MiniBar.BevelOuter := bvRaised;
  MiniBar.BevelInner := bvNone;
  MiniBar.Color      := clBtnFace;
  MiniBar.Visible    := False;
  bx := 2;

  btn := TSpeedButton.Create(MiniBar); btn.Parent := MiniBar;
  btn.SetBounds(bx, 3, 24, 24); btn.Caption := 'B';
  btn.Font.Style := [fsBold]; btn.Font.Color := $003388; btn.Flat := True;
  btn.Hint := 'Fett (hi bold)'; btn.ShowHint := True;
  btn.Tag := 1; btn.OnClick := @MiniBarActionClick; inc(bx, 26);

  btn := TSpeedButton.Create(MiniBar); btn.Parent := MiniBar;
  btn.SetBounds(bx, 3, 24, 24); btn.Caption := 'I';
  btn.Font.Style := [fsItalic]; btn.Font.Color := $003388; btn.Flat := True;
  btn.Hint := 'Kursiv (hi italic)'; btn.ShowHint := True;
  btn.Tag := 2; btn.OnClick := @MiniBarActionClick; inc(bx, 26);

  btn := TSpeedButton.Create(MiniBar); btn.Parent := MiniBar;
  btn.SetBounds(bx, 3, 24, 24); btn.Caption := 'X' + #178;
  btn.Flat := True; btn.Hint := 'Hochgestellt'; btn.ShowHint := True;
  btn.Tag := 3; btn.OnClick := @MiniBarActionClick; inc(bx, 26);

  btn := TSpeedButton.Create(MiniBar); btn.Parent := MiniBar;
  btn.SetBounds(bx, 3, 24, 24); btn.Caption := 'X' + #8322;
  btn.Flat := True; btn.Hint := 'Tiefgestellt'; btn.ShowHint := True;
  btn.Tag := 4; btn.OnClick := @MiniBarActionClick; inc(bx, 26);

  btn := TSpeedButton.Create(MiniBar); btn.Parent := MiniBar;
  btn.SetBounds(bx, 3, 24, 24); btn.Caption := #182;  { ¶ }
  btn.Flat := True; btn.Hint := 'Absatz <p>'; btn.ShowHint := True;
  btn.Tag := 5; btn.OnClick := @MiniBarActionClick; inc(bx, 26);

  btn := TSpeedButton.Create(MiniBar); btn.Parent := MiniBar;
  btn.SetBounds(bx, 3, 24, 24); btn.Caption := 'fn';
  btn.Flat := True; btn.Hint := 'Fu' + #223 + 'note <note>'; btn.ShowHint := True;
  btn.Tag := 6; btn.OnClick := @MiniBarActionClick; inc(bx, 26);

  btn := TSpeedButton.Create(MiniBar); btn.Parent := MiniBar;
  btn.SetBounds(bx, 3, 24, 24); btn.Caption := #8594 + 'R';  { →R }
  btn.Flat := True; btn.Hint := 'Verweis <reference>'; btn.ShowHint := True;
  btn.Tag := 7; btn.OnClick := @MiniBarActionClick; inc(bx, 26);

  btn := TSpeedButton.Create(MiniBar); btn.Parent := MiniBar;
  btn.SetBounds(bx, 3, 24, 24); btn.Caption := #8594 + #8226; { →• }
  btn.Flat := True; btn.Hint := 'Bibelreferenzen konvertieren'; btn.ShowHint := True;
  btn.Tag := 8; btn.OnClick := @MiniBarActionClick;

  { ── Assign glyphs to text-only toolbar buttons ── }
  AssignGlyphs;

  { ── SynEdit options: prevent cursor past end of line ── }
  SynEdit1.Options     := SynEdit1.Options - [eoScrollPastEol];
  SynEdit1.OnMouseMove := @SynEditMouseMove;
  SynEdit1.OnDragOver  := @SynEditDragOver;
  SynEdit1.OnDragDrop  := @SynEditDragDrop;

  { ── Hide right (OCR/cleanup) panel by default ── }
  Memo1.Visible    := False;
  Splitter2.Visible := False;

  { ── Right toggle strip ── }
  RightToggleStrip := TPanel.Create(Self);
  RightToggleStrip.Parent     := Self;
  RightToggleStrip.Width      := 20;
  RightToggleStrip.Align      := alRight;
  RightToggleStrip.BevelOuter := bvNone;
  RightToggleStrip.Color      := clBtnFace;
  RightToggleBtn := TSpeedButton.Create(RightToggleStrip);
  RightToggleBtn.Parent  := RightToggleStrip;
  RightToggleBtn.Align   := alClient;
  RightToggleBtn.Caption := #$E2#$97#$84; { ◄ UTF-8 }
  RightToggleBtn.Flat    := True;
  RightToggleBtn.Font.Size := 8;
  RightToggleBtn.Hint    := 'Textbereinigung ein-/ausblenden';
  RightToggleBtn.ShowHint := True;
  RightToggleBtn.OnClick := @ToggleRightPanel;

  { ── TreeView expand/collapse buttons in ToolBar2 ── }
  tvBtnA := TSpeedButton.Create(ToolBar2);
  tvBtnA.Parent   := ToolBar2;
  tvBtnA.Width    := 26;
  tvBtnA.Caption  := '+';
  tvBtnA.Font.Style := [fsBold];
  tvBtnA.Flat     := True;
  tvBtnA.Hint     := 'Alle aufklappen';
  tvBtnA.ShowHint := True;
  tvBtnA.OnClick  := @TreeExpandAllClick;
  tvBtnB := TSpeedButton.Create(ToolBar2);
  tvBtnB.Parent   := ToolBar2;
  tvBtnB.Width    := 26;
  tvBtnB.Caption  := #$E2#$88#$92; { − minus sign }
  tvBtnB.Font.Style := [fsBold];
  tvBtnB.Flat     := True;
  tvBtnB.Hint     := 'Alle zuklappen';
  tvBtnB.ShowHint := True;
  tvBtnB.OnClick  := @TreeCollapseAllClick;

  { ── OCR paste entry in context popup ── }
  pmOCR := TMenuItem.Create(PopupMenu1); pmOCR.Caption := '-';
  PopupMenu1.Items.Add(pmOCR);
  pmOCR := TMenuItem.Create(PopupMenu1);
  pmOCR.Caption := 'OCR einfügen (kontextsensitiv)';
  pmOCR.OnClick := @MenuItem31Click;
  PopupMenu1.Items.Add(pmOCR);

  { ── File browser inside Panel1 at bottom ── }
  ToolBar2.Align  := alTop;
  TreeView1.Align := alClient;

  { File browser popup menu }
  FilePanelMenu := TPopupMenu.Create(Self);
  fmi := TMenuItem.Create(FilePanelMenu);
  fmi.Caption := 'Einf' + #252 + 'gen mit <p>';
  fmi.OnClick := @FileInsertWithP;
  FilePanelMenu.Items.Add(fmi);
  fmi := TMenuItem.Create(FilePanelMenu);
  fmi.Caption := 'Einf' + #252 + 'gen ohne <p>';
  fmi.OnClick := @FileInsertWithoutP;
  FilePanelMenu.Items.Add(fmi);

  { LCL alBottom layout: LAST created control in a parent = bottommost visual position.
    For Panel1: create fbMid first (ends up just below TreeView1),
    FileBrowserPanel second (ends up at absolute bottom). }

  fbMid := TSplitter.Create(Panel1);
  fbMid.Parent       := Panel1;
  fbMid.Align        := alBottom;
  fbMid.Height       := 4;
  fbMid.ResizeAnchor := akBottom;

  FileBrowserPanel := TPanel.Create(Panel1);
  FileBrowserPanel.Parent     := Panel1;
  FileBrowserPanel.Align      := alBottom;
  FileBrowserPanel.Height     := 340;
  FileBrowserPanel.BevelOuter := bvNone;

  { ── Inside FileBrowserPanel ──
    alTop controls are placed top-down in creation order.
    alBottom: last created = very bottom.
    alClient fills whatever space is left in the middle.
    Order: create fpSpl FIRST, FilePreviewImg SECOND so preview ends at absolute bottom. }

  { A. Filter + navigation bar (alTop) }
  ftHdr := TPanel.Create(FileBrowserPanel);
  ftHdr.Parent     := FileBrowserPanel;
  ftHdr.Align      := alTop;
  ftHdr.Height     := 28;
  ftHdr.BevelOuter := bvNone;

  FileFilterCombo := TComboBox.Create(ftHdr);
  FileFilterCombo.Parent    := ftHdr;
  FileFilterCombo.Style     := csDropDownList;
  FileFilterCombo.Left      := 2; FileFilterCombo.Top := 2;
  FileFilterCombo.Width     := 150; FileFilterCombo.Height := 24;
  FileFilterCombo.Items.Add('Bilder (PNG, JPG, ...)');
  FileFilterCombo.Items.Add('Alle Dateien (*.*)');
  FileFilterCombo.Items.Add('XML-Dateien (*.xml)');
  FileFilterCombo.ItemIndex := 0;
  FileFilterCombo.OnChange  := @FilterComboChange;

  btn := TSpeedButton.Create(ftHdr);
  btn.Parent := ftHdr; btn.Left := 156; btn.Top := 2;
  btn.Width := 28; btn.Height := 24;
  btn.Caption := '..'; btn.Flat := True;
  btn.Hint := 'Einen Ordner nach oben'; btn.ShowHint := True;
  btn.OnClick := @FileTreeUpClick;

  btn := TSpeedButton.Create(ftHdr);
  btn.Parent := ftHdr; btn.Left := 188; btn.Top := 2;
  btn.Width := 28; btn.Height := 24;
  btn.Caption := 'H'; btn.Flat := True;
  btn.Hint := 'Zum Projektverzeichnis'; btn.ShowHint := True;
  btn.OnClick := @FileTreeHomeClick;

  { B. Insert buttons (alTop) }
  insBar := TPanel.Create(FileBrowserPanel);
  insBar.Parent := FileBrowserPanel; insBar.Align := alTop;
  insBar.Height := 28; insBar.BevelOuter := bvNone;

  btn := TSpeedButton.Create(insBar);
  btn.Parent := insBar; btn.Align := alLeft;
  btn.Width := 120; btn.Caption := 'Einf' + #252 + 'gen mit <p>';
  btn.Flat := True; btn.OnClick := @FileInsertWithP;

  btn := TSpeedButton.Create(insBar);
  btn.Parent := insBar; btn.Align := alLeft;
  btn.Width := 124; btn.Caption := 'Einf' + #252 + 'gen ohne <p>';
  btn.Flat := True; btn.OnClick := @FileInsertWithoutP;

  { C. Preview splitter — first alBottom inside FileBrowserPanel }
  fpSpl := TSplitter.Create(FileBrowserPanel);
  fpSpl.Parent := FileBrowserPanel; fpSpl.Align := alBottom;
  fpSpl.Height := 4; fpSpl.ResizeAnchor := akBottom;

  { D. Image preview — second (last) alBottom = very bottom of FileBrowserPanel }
  FilePreviewImg := TImage.Create(FileBrowserPanel);
  FilePreviewImg.Parent       := FileBrowserPanel;
  FilePreviewImg.Align        := alBottom;
  FilePreviewImg.Height       := 100;
  FilePreviewImg.Proportional := True;
  FilePreviewImg.Stretch      := True;

  { E. Shell list — alClient, fills remaining middle space }
  FileTree := TShellListView.Create(FileBrowserPanel);
  FileTree.Parent       := FileBrowserPanel;
  FileTree.Align        := alClient;
  FileTree.ObjectTypes  := [otFolders, otNonFolders];
  FileTree.Mask         := '*.jpg;*.jpeg;*.png;*.gif;*.bmp;*.tif;*.tiff;*.webp';
  FileTree.ViewStyle    := vsReport;
  FileTree.PopupMenu    := FilePanelMenu;
  FileTree.OnSelectItem := @FileTreeSelChange;
  FileTree.OnDblClick   := @FileListDblClick;
  FileTree.DragMode     := dmAutomatic;

  { ── Hover image popup ── }
  HoverPopup := TPanel.Create(Self);
  HoverPopup.Parent     := Self;
  HoverPopup.Width      := 240;
  HoverPopup.Height     := 180;
  HoverPopup.Visible    := False;
  HoverPopup.BevelOuter := bvRaised;
  HoverPopup.Color      := clWindow;
  HoverImage := TImage.Create(HoverPopup);
  HoverImage.Parent      := HoverPopup;
  HoverImage.Align       := alClient;
  HoverImage.Proportional := True;
  HoverImage.Stretch     := True;

  HoverLastLine    := -1;
  HoverLastSyn     := nil;
  HoverPendingPath := '';
  HomePath         := '';

  HoverTimer          := TTimer.Create(Self);
  HoverTimer.Interval := 350;
  HoverTimer.Enabled  := False;
  HoverTimer.OnTimer  := @HoverTimerTick;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  LangData.Free;
  RecentFiles.Free;
  ChangeHistory.Free;
end;

{ ─── tab management ─────────────────────────────────────────────────────── }

procedure TForm1.PageControl1Change(Sender: TObject);
var idx: integer;
begin
  idx := PageControl1.ActivePageIndex;
  if (idx < 0) or (idx >= length(TabMetas)) then exit;
  LoadTabMeta(idx);
  Caption := 'OSIS Editor - ' + filename;
  UpdateMenuForType;
  BuildIndex;
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  SaveCurrentTabMeta;
  NewEditorTab(T('file_new'));
  filename   := 'unnamed';
  ModuleType := mtBible;
  UpdateMenuForType;
  Caption := 'OSIS Editor - unnamed';
end;

procedure TForm1.MenuItem75Click(Sender: TObject);
var idx, i: integer; page: TCustomPage;
begin
  if PageControl1.PageCount <= 1 then exit;
  idx := PageControl1.ActivePageIndex;
  if not ConfirmDiscardChanges(idx) then exit;
  page := PageControl1.ActivePage;
  { Remove TabMeta before freeing so any triggered PageControl1Change sees consistent state }
  for i := idx to high(TabMetas) - 1 do
    TabMetas[i] := TabMetas[i + 1];
  SetLength(TabMetas, length(TabMetas) - 1);
  page.Free;
  PageControl1Change(nil);
end;

{ ─── file menu ──────────────────────────────────────────────────────────── }

procedure TForm1.MenuItem2Click(Sender: TObject);
var fn: string;
begin
  if OpenDialog1.Execute then
  begin
    fn := OpenDialog1.Filename;
    SaveCurrentTabMeta;
    { open in a new tab, or the current one if it's unchanged/empty }
    if (Ed.Lines.Count <= 1) and (Ed.Lines.Text = '') then
    begin
      { reuse current empty tab }
      Ed.Lines.LoadFromFile(fn);
      filename := fn;
      TabMetas[PageControl1.ActivePageIndex].Filename := fn;
      PageControl1.ActivePage.Caption := ExtractFileName(fn);
    end
    else
    begin
      NewEditorTab(ExtractFileName(fn));
      Ed.Lines.LoadFromFile(fn);
      TabMetas[PageControl1.ActivePageIndex].Filename := fn;
    end;
    filename := fn;
    ModuleType := DetectModuleType(Ed.Lines.Text);
    TabMetas[PageControl1.ActivePageIndex].ModType := ModuleType;
    Caption := 'OSIS Editor - ' + fn;
    AddRecentFile(fn);
    HomePath := ExtractFilePath(fn);
    UpdateMenuForType;
    BuildIndex;
    RebuildFileList;
  end;
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
var idx: integer;
begin
  idx := PageControl1.ActivePageIndex;
  if TabMetas[idx].IsConfFile then
    Memo1.Lines.SaveToFile(filename)
  else
  begin
    Ed.Lines.SaveToFile(filename);
    Ed.Modified := False;
  end;
  UpdateTabCaption(idx);
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
var idx: integer;
begin
  if SaveDialog1.Execute then
  begin
    idx := PageControl1.ActivePageIndex;
    filename := SaveDialog1.Filename;
    Ed.Lines.SaveToFile(filename);
    Ed.Modified := False;
    TabMetas[idx].Filename := filename;
    AddRecentFile(filename);
    Caption := 'OSIS Editor - ' + filename;
    UpdateTabCaption(idx);
  end;
end;

{ ─── find/replace ───────────────────────────────────────────────────────── }

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  if Ed.SearchReplace(FindDialog1.FindText, '', []) = 0 then
    MessageDlg('Kein Treffer', 'Der Suchtext wurde nicht gefunden.', mtInformation, [mbOK], 0);
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
begin
  if Ed.SearchReplace(FindDialog1.FindText, '', []) = 0 then
    MessageDlg('Kein Treffer', 'Der Suchtext wurde nicht gefunden.', mtInformation, [mbOK], 0);
end;

{ ─── format menu ────────────────────────────────────────────────────────── }

procedure TForm1.MenuItem25Click(Sender: TObject);
begin Ed.SelText := '<hi type="bold">'   + Ed.SelText + '</hi>'; RecordChange('Fett'); end;
procedure TForm1.MenuItem26Click(Sender: TObject);
begin Ed.SelText := '<hi type="italic">' + Ed.SelText + '</hi>'; RecordChange('Kursiv'); end;
procedure TForm1.MenuItem27Click(Sender: TObject);
begin Ed.SelText := '<p>' + Ed.SelText + '</p>'; RecordChange('<p>'); end;
procedure TForm1.MenuItem28Click(Sender: TObject);
begin Ed.InsertTextAtCaret('</p>' + #13#10 + '<p>'); RecordChange('Absatztrenner'); end;
procedure TForm1.MenuItem29Click(Sender: TObject);
begin Ed.SelText := '<figure src="' + Ed.SelText + '"/>'; RecordChange('<figure>'); end;
procedure TForm1.MenuItem30Click(Sender: TObject);
begin Ed.SelText := '<note placement="foot">' + Ed.SelText + '</note>'; RecordChange('<note> Fußnote'); end;
procedure TForm1.MenuItem43Click(Sender: TObject);
begin Ed.SelText := '<hi type="super">' + Ed.SelText + '</hi>'; RecordChange('Hochgestellt'); end;
procedure TForm1.MenuItem44Click(Sender: TObject);
begin Ed.SelText := '<hi type="sub">'   + Ed.SelText + '</hi>'; RecordChange('Tiefgestellt'); end;
procedure TForm1.MenuItem45Click(Sender: TObject);
begin Ed.SelText := '<reference osisRef="">' + Ed.SelText + '</reference>'; RecordChange('<reference>'); end;
procedure TForm1.MenuItem46Click(Sender: TObject);
begin Ed.SelText := '<foreign xml:lang="">' + Ed.SelText + '</foreign>'; RecordChange('<foreign>'); end;
procedure TForm1.MenuItem47Click(Sender: TObject);
begin Ed.SelText := '<note type="x-endnote" n="">' + Ed.SelText + '</note>'; RecordChange('<note> Endnote'); end;

procedure TForm1.MenuItem31Click(Sender: TObject);
var s: string;
begin
  if not Clipboard.HasFormat(CF_TEXT) then exit;
  s := Clipboard.AsText;
  { Remove soft hyphens (OCR line-end hyphenation) }
  s := StringReplace(s, '-'#13#10, '', [rfReplaceAll]);
  s := StringReplace(s, '-'#10,   '', [rfReplaceAll]);
  s := StringReplace(s, '-'#13,   '', [rfReplaceAll]);
  case ModuleType of
    mtBible, mtCommentary, mtGenbook:
    begin
      { Double blank line → paragraph break }
      s := StringReplace(s, #13#10#13#10, '</p>'#10'<p>', [rfReplaceAll]);
      s := StringReplace(s, #10#10,       '</p>'#10'<p>', [rfReplaceAll]);
      s := StringReplace(s, #13#13,       '</p>'#10'<p>', [rfReplaceAll]);
      { Single line break → space (same paragraph) }
      s := StringReplace(s, #13#10, ' ', [rfReplaceAll]);
      s := StringReplace(s, #10,   ' ', [rfReplaceAll]);
      s := StringReplace(s, #13,   ' ', [rfReplaceAll]);
      if pos('<p>', s) = 0 then
        s := '<p>' + s + '</p>';
    end;
    mtDictionary:
    begin
      { Line breaks become <lb/> in TEI }
      s := StringReplace(s, #13#10, '<lb/>', [rfReplaceAll]);
      s := StringReplace(s, #10,   '<lb/>', [rfReplaceAll]);
      s := StringReplace(s, #13,   '<lb/>', [rfReplaceAll]);
    end;
  end;
  Ed.InsertTextAtCaret(s);
  RecordChange('OCR-Einfügen');
end;

procedure TForm1.MenuItem32Click(Sender: TObject);
begin
  Ed.InsertTextAtCaret('</p></div>' + #13#10 +
    '<div type="section" annotateType="commentary" annotateRef=""><p>');
  RecordChange('Div-Break');
end;

procedure TForm1.MenuItem42Click(Sender: TObject);
var s: string;
begin
  if not Clipboard.HasFormat(CF_TEXT) then exit;
  s := Clipboard.AsText;
  s := StringReplace(s, #13#10#13#10, '</p><p>', [rfReplaceAll]);
  s := StringReplace(s, #13#13,       '</p><p>', [rfReplaceAll]);
  s := StringReplace(s, #10#10,       '</p><p>', [rfReplaceAll]);
  s := StringReplace(s, '-'#13#10,   '',        [rfReplaceAll]);
  s := StringReplace(s, ''#13#10,   ' ',       [rfReplaceAll]);
  s := StringReplace(s, '-'#10,      '',        [rfReplaceAll]);
  s := StringReplace(s, ''#10,      ' ',       [rfReplaceAll]);
  s := StringReplace(s, '-'#13,      '',        [rfReplaceAll]);
  s := StringReplace(s, ''#13,      ' ',       [rfReplaceAll]);
  s := StringReplace(s, '</p><p>', '</p>' + #13#10 + '<p>', [rfReplaceAll]);
  Ed.SelText := '<p>' + s + '</p>';
end;

{ ─── books menu ─────────────────────────────────────────────────────────── }

procedure TForm1.MenuItem37Click(Sender: TObject); begin end;

procedure TForm1.MenuItem38Click(Sender: TObject);
begin
  Ed.SelText := '<div type="majorSection" osisID="' +
    StringReplace(Ed.SelText, '.', '', [rfReplaceAll]) + '">' + #13#10 +
    '<title>' + Ed.SelText + '</title>' + #13#10 + '</div>';
  RecordChange('majorSection');
end;

procedure TForm1.MenuItem39Click(Sender: TObject);
begin
  Ed.SelText := '<div type="chapter" osisID="' +
    StringReplace(Ed.SelText, '.', '', [rfReplaceAll]) + '">' + #13#10 +
    '<title>' + Ed.SelText + '</title>' + #13#10 + '</div>';
  RecordChange('Chapter');
end;

procedure TForm1.MenuItem40Click(Sender: TObject);
begin
  Ed.SelText := '<div type="section" osisID="' +
    StringReplace(Ed.SelText, '.', '', [rfReplaceAll]) + '">' + #13#10 +
    '<title>' + Ed.SelText + '</title>' + #13#10 + '</div>';
  RecordChange('Section');
end;

procedure TForm1.MenuItem41Click(Sender: TObject);
begin
  Ed.SelText := '<div type="subSection" osisID="' +
    StringReplace(Ed.SelText, '.', '', [rfReplaceAll]) + '">' + #13#10 +
    '<title>' + Ed.SelText + '</title>' + #13#10 + '</div>';
  RecordChange('SubSection');
end;

procedure TForm1.MenuItem48Click(Sender: TObject);
begin
  Ed.SelText := '<div type="bookGroup" osisID="' +
    StringReplace(Ed.SelText, '.', '', [rfReplaceAll]) + '">' + #13#10 +
    '<title>' + Ed.SelText + '</title>' + #13#10 + '</div>';
  RecordChange('bookGroup');
end;

{ ─── Bible elements ─────────────────────────────────────────────────────── }

procedure TForm1.MenuItem50Click(Sender: TObject);
begin Ed.InsertTextAtCaret('<verse sID=""/>' + #13#10 + '<verse eID=""/>'); RecordChange('<verse>'); end;
procedure TForm1.MenuItem51Click(Sender: TObject);
begin Ed.SelText := '<w lemma="" morph="">' + Ed.SelText + '</w>'; RecordChange('<w>'); end;
procedure TForm1.MenuItem52Click(Sender: TObject);
begin Ed.SelText := '<lg>' + #13#10 + '<l level="1">' + Ed.SelText + '</l>' + #13#10 + '</lg>'; RecordChange('<lg><l>'); end;
procedure TForm1.MenuItem53Click(Sender: TObject);
begin Ed.SelText := '<q who="" level="">' + Ed.SelText + '</q>'; RecordChange('<q>'); end;

{ ─── Dictionary elements ────────────────────────────────────────────────── }

procedure TForm1.MenuItem55Click(Sender: TObject);
begin Ed.SelText := '<entryFree sortKey="" n="">' + Ed.SelText + '</entryFree>'; RecordChange('<entryFree>'); end;
procedure TForm1.MenuItem56Click(Sender: TObject);
begin Ed.SelText := '<sense n="">' + Ed.SelText + '</sense>'; RecordChange('<sense>'); end;
procedure TForm1.MenuItem57Click(Sender: TObject);
begin Ed.SelText := '<def>'  + Ed.SelText + '</def>';  RecordChange('<def>'); end;
procedure TForm1.MenuItem58Click(Sender: TObject);
begin Ed.SelText := '<orth>' + Ed.SelText + '</orth>'; RecordChange('<orth>'); end;
procedure TForm1.MenuItem59Click(Sender: TObject);
begin Ed.SelText := '<ref osisRef="">' + Ed.SelText + '</ref>'; RecordChange('<ref>'); end;
procedure TForm1.MenuItem60Click(Sender: TObject);
begin Ed.SelText := '<xr type="see">' + Ed.SelText + '</xr>'; RecordChange('<xr>'); end;
procedure TForm1.MenuItem61Click(Sender: TObject);
begin Ed.SelText := '<emph>' + Ed.SelText + '</emph>'; RecordChange('<emph>'); end;

{ ─── Convert Bible refs ─────────────────────────────────────────────────── }

procedure TForm1.MenuItem64Click(Sender: TObject);
var sel: string;
begin
  sel := Ed.SelText;
  if sel = '' then
  begin
    MessageDlg('Auswahl erforderlich',
      'Bitte Text ausw' + #228 + 'hlen.', mtInformation, [mbOK], 0);
    exit;
  end;
  Ed.SelText := ConvertBibleRefs(sel);
  RecordChange('Bibelreferenzen konvertieren');
end;

{ ─── Metadata editor ────────────────────────────────────────────────────── }

procedure TForm1.MenuItem63Click(Sender: TObject);
var dlg: TForm2;
begin
  dlg := TForm2.Create(Self);
  try
    dlg.LoadMetadata(Ed.Lines.Text);
    case dlg.ShowModal of
      mrOK:
        begin
          ModuleType := dlg.GetModuleType;
          TabMetas[PageControl1.ActivePageIndex].ModType := ModuleType;
          UpdateMenuForType;
          BuildIndex;
        end;
      mrYes:
        begin
          ModuleType := dlg.GetModuleType;
          TabMetas[PageControl1.ActivePageIndex].ModType := ModuleType;
          if ModuleType = mtDictionary then
            Ed.InsertTextAtCaret(dlg.GetTEIHeader)
          else
            Ed.InsertTextAtCaret(dlg.GetOSISHeader);
          UpdateMenuForType;
          BuildIndex;
        end;
    end;
  finally
    dlg.Free;
  end;
end;

{ ─── Build tools ────────────────────────────────────────────────────────── }

procedure TForm1.MenuItem65Click(Sender: TObject);
var outDir: string;
begin
  outDir := InputBox('osis2mod', 'Ausgabeverzeichnis (SWORD-Daten-Pfad):', '');
  if outDir = '' then exit;
  Memo1.Lines.Text := 'Starte osis2mod...';
  Application.ProcessMessages;
  RunBuildTool('osis2mod', outDir, filename, Memo1);
end;

procedure TForm1.MenuItem66Click(Sender: TObject);
var outDir: string;
begin
  outDir := InputBox('tei2mod', 'Ausgabeverzeichnis (SWORD-Daten-Pfad):', '');
  if outDir = '' then exit;
  Memo1.Lines.Text := 'Starte tei2mod...';
  Application.ProcessMessages;
  RunBuildTool('tei2mod', outDir, filename, Memo1);
end;

{ ─── SWORD .conf editor (in current tab's editor) ───────────────────────── }

procedure TForm1.MenuItem67Click(Sender: TObject);
var dlg: TOpenDialog; fn: string;
begin
  dlg := TOpenDialog.Create(nil);
  try
    dlg.Filter := 'SWORD Config (*.conf)|*.conf|Alle Dateien (*.*)|*.*';
    dlg.Title  := 'SWORD .conf ' + #246 + 'ffnen';
    if dlg.Execute then
    begin
      fn := dlg.FileName;
      SaveCurrentTabMeta;
      NewEditorTab(ExtractFileName(fn));
      Ed.Highlighter := nil;      // no XML highlighting for .conf
      Ed.Lines.LoadFromFile(fn);
      filename := fn;
      confFilename := fn;
      TabMetas[PageControl1.ActivePageIndex].Filename   := fn;
      TabMetas[PageControl1.ActivePageIndex].IsConfFile := True;
      TabMetas[PageControl1.ActivePageIndex].ModType    := mtBible;
      Caption := 'OSIS Editor - ' + fn;
      MenuItem68.Enabled := True;
      StatusBar1.SimpleText := 'Konfig: ' + fn;
    end;
  finally
    dlg.Free;
  end;
end;

procedure TForm1.MenuItem68Click(Sender: TObject);
var idx: integer;
begin
  idx := PageControl1.ActivePageIndex;
  if not TabMetas[idx].IsConfFile then exit;
  Ed.Lines.SaveToFile(filename);
  Ed.Modified := False;
  StatusBar1.SimpleText := 'Konfig gespeichert: ' + filename;
  UpdateTabCaption(idx);
end;

{ ─── Settings dialog ────────────────────────────────────────────────────── }

procedure TForm1.MenuItem76Click(Sender: TObject);
var dlg: TForm3; newLang: string; newSize: integer; ini: TIniFile;
begin
  dlg := TForm3.Create(Self);
  try
    if CurrentLang = 'en' then dlg.ComboBox1.ItemIndex := 1
    else dlg.ComboBox1.ItemIndex := 0;
    dlg.SpinEdit1.Value := EditorFontSize;
    if dlg.ShowModal = mrOK then
    begin
      case dlg.ComboBox1.ItemIndex of
        1: newLang := 'en';
        else newLang := 'de';
      end;
      newSize := dlg.SpinEdit1.Value;
      if newLang <> CurrentLang then
      begin
        LoadLanguage(newLang);
        ApplyLanguage;
        UpdateRecentMenu;
      end;
      if newSize <> EditorFontSize then
        ApplyFontSize(newSize);
      ini := TIniFile.Create(GetCfgDir + 'settings.ini');
      try
        ini.WriteString ('Settings', 'Language', newLang);
        ini.WriteInteger('Settings', 'FontSize',  newSize);
      finally
        ini.Free;
      end;
    end;
  finally
    dlg.Free;
  end;
end;

{ ─── index / navigation ─────────────────────────────────────────────────── }

procedure TForm1.BuildIndex;
var
  i, k, dot1, dot2: integer;
  line, stelle, newBookKey, newChapKey, bookKey, chapKey: string;
  bookNode, chapNode: TTreeNode;
  { Genbook type-based hierarchy }
  divType: string;
  divLevel: integer;
  parents: array[0..3] of TTreeNode;
  parentNode: TTreeNode;
begin
  TreeView1.Items.BeginUpdate;
  TreeView1.Items.Clear;
  bookNode := nil; chapNode := nil;
  bookKey  := ''; chapKey  := '';
  for k := 0 to 3 do parents[k] := nil;

  for i := 0 to Ed.Lines.Count - 1 do
  begin
    line   := Ed.Lines[i];
    stelle := '';
    case ModuleType of
      mtBible:
        if pos('osisID', line) > 0 then stelle := ExtractAttr(line, 'osisID');
      mtCommentary:
        if pos('annotateRef', line) > 0 then stelle := ExtractAttr(line, 'annotateRef');
      mtGenbook:
        ; { handled below with type-based logic }
      mtDictionary:
        if (pos('<entryFree', line) > 0) or (pos('<entry ', line) > 0) then
        begin
          stelle := ExtractAttr(line, 'sortKey');
          if stelle = '' then stelle := ExtractAttr(line, 'n');
        end;
    end;

    { ── Genbook: use div type= attribute for hierarchy ── }
    if ModuleType = mtGenbook then
    begin
      if pos('<div', line) > 0 then
      begin
        divType := ExtractAttr(line, 'type');
        stelle  := ExtractAttr(line, 'osisID');
        if stelle = '' then stelle := ExtractAttr(line, 'n');
        if stelle = '' then stelle := divType;
        if stelle = '' then continue;

        case divType of
          'bookGroup', 'majorSection': divLevel := 0;
          'chapter':                   divLevel := 1;
          'section':                   divLevel := 2;
          'subSection':                divLevel := 3;
          else                         divLevel := -1;
        end;
        if divLevel < 0 then continue;

        { invalidate all deeper levels }
        for k := divLevel + 1 to 3 do parents[k] := nil;

        if divLevel = 0 then
          parents[0] := TreeView1.Items.Add(nil, stelle)
        else
        begin
          parentNode := nil;
          for k := divLevel - 1 downto 0 do
            if parents[k] <> nil then begin parentNode := parents[k]; break; end;
          parents[divLevel] := TreeView1.Items.AddChild(parentNode, stelle);
        end;
        parents[divLevel].Data := Pointer(PtrUInt(i));
        case divLevel of
          0:    begin parents[0].ImageIndex := 0; parents[0].SelectedIndex := 0; end;
          1, 2: begin parents[divLevel].ImageIndex := 1; parents[divLevel].SelectedIndex := 1; end;
          3:    begin parents[3].ImageIndex := 2; parents[3].SelectedIndex := 2; end;
        end;
      end;
      continue;
    end;

    if stelle = '' then continue;

    dot1 := pos('.', stelle);
    dot2 := 0;
    if dot1 > 0 then
      for k := dot1 + 1 to length(stelle) do
        if stelle[k] = '.' then begin dot2 := k; break; end;

    if ModuleType in [mtBible, mtCommentary] then
    begin
      if dot1 > 0 then
      begin
        newBookKey := copy(stelle, 1, dot1 - 1);
        if newBookKey <> bookKey then
        begin
          bookKey  := newBookKey;
          chapKey  := '';
          chapNode := nil;
          bookNode := TreeView1.Items.Add(nil, bookKey);
          bookNode.Data := Pointer(PtrUInt(i));
          bookNode.ImageIndex := 0; bookNode.SelectedIndex := 0;
        end;
        if dot2 > 0 then
        begin
          { 3-part id: Book.Chapter.Verse }
          newChapKey := copy(stelle, 1, dot2 - 1);
          if newChapKey <> chapKey then
          begin
            chapKey  := newChapKey;
            chapNode := TreeView1.Items.AddChild(bookNode, newChapKey);
            chapNode.Data := Pointer(PtrUInt(i));
            chapNode.ImageIndex := 1; chapNode.SelectedIndex := 1;
          end;
          with TreeView1.Items.AddChild(chapNode, stelle) do
          begin
            Data := Pointer(PtrUInt(i));
            ImageIndex := 2; SelectedIndex := 2;
          end;
        end
        else
        begin
          { 2-part id: Book.Chapter }
          chapKey  := stelle;
          chapNode := TreeView1.Items.AddChild(bookNode, stelle);
          chapNode.Data := Pointer(PtrUInt(i));
          chapNode.ImageIndex := 1; chapNode.SelectedIndex := 1;
        end;
      end
      else
      begin
        { top-level book entry }
        bookKey  := stelle;
        chapKey  := '';
        chapNode := nil;
        bookNode := TreeView1.Items.Add(nil, stelle);
        bookNode.Data := Pointer(PtrUInt(i));
        bookNode.ImageIndex := 0; bookNode.SelectedIndex := 0;
      end;
    end
    else
    begin
      { Dictionary: flat list }
      with TreeView1.Items.Add(nil, stelle) do
      begin
        Data := Pointer(PtrUInt(i));
        ImageIndex := 2; SelectedIndex := 2;
      end;
    end;
  end;
  TreeView1.Items.EndUpdate;
  TreeView1.FullExpand;
end;

procedure TForm1.TreeView1SelectionChanged(Sender: TObject);
var lineNo: integer; node: TTreeNode;
begin
  node := TreeView1.Selected;
  if node = nil then exit;
  lineNo := PtrUInt(node.Data) + 1;
  Ed.CaretY := lineNo;
  Ed.CaretX := 1;
  Ed.TopLine := lineNo;
  Ed.SetFocus;
end;

procedure TForm1.UpdateMenuForType;
begin
  MenuItem49.Visible := (ModuleType = mtBible);
  MenuItem19.Visible := (ModuleType = mtCommentary);
  MenuItem37.Visible := (ModuleType = mtGenbook) or (ModuleType = mtBible);
  MenuItem54.Visible := (ModuleType = mtDictionary);
  ComboBox2.ItemIndex := Ord(ModuleType);
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  ModuleType := TModuleType(ComboBox2.ItemIndex);
  if PageControl1.ActivePageIndex >= 0 then
    TabMetas[PageControl1.ActivePageIndex].ModType := ModuleType;
  UpdateMenuForType;
  BuildIndex;
end;

{ ─── speedbuttons ───────────────────────────────────────────────────────── }

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Ed.SelText := '<div type="book" osisID="' +
    ComboBox1.Items[ComboBox1.ItemIndex] + '">' + Ed.SelText + '</div>';
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  Ed.SelText := '<div type="section" annotateType="commentary" annotateRef="' +
    ComboBox1.Items[ComboBox1.ItemIndex] + '.' + IntToStr(SpinEdit1.Value) + '.' +
    IntToStr(SpinEdit2.Value) + '">' + Ed.SelText + '</div>';
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  Ed.SelText := '<div type="section" annotateType="commentary" annotateRef="' +
    ComboBox1.Items[ComboBox1.ItemIndex] + '.' + IntToStr(SpinEdit1.Value) +
    '">' + Ed.SelText + '</div>';
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
var i: integer;
begin
  if Ed.BlockEnd.Y > Ed.BlockBegin.Y then
    for i := Ed.BlockBegin.Y + 1 downto Ed.BlockEnd.Y - 1 do
    begin
      Ed.Lines[i-1] :=
        StringReplace(TrimRight(Ed.Lines[i-1]), '</p>', '', [rfIgnoreCase, rfReplaceAll]) +
        ' ' + StringReplace(TrimLeft(Ed.Lines[i]), '<p>', '', [rfIgnoreCase, rfReplaceAll]);
      Ed.Lines.Delete(i);
    end;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin BuildIndex; end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
var t: string; d: char;
begin
  t := Ed.SelText;
  for d := '0' to '9' do
    t := StringReplace(t, d + '.', '</p>' + #13#10 + '<p>' + d + '.', [rfReplaceAll]);
  Ed.SelText := t;
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
var i, j: integer; tbl: string;
begin
  tbl := '<table>' + #13#10;
  for j := 0 to SpinEdit4.Value do
  begin
    tbl += '<row>' + #13#10;
    for i := 0 to SpinEdit3.Value do
      tbl += '<cell></cell>' + #13#10;
    tbl += '</row>' + #13#10;
  end;
  tbl += '</table>';
  Ed.SelText := #13#10 + tbl + #13#10;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin Label1.Caption := Ed.SelText; end;

procedure TForm1.SynEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  StatusBar1.SimpleText := IntToStr((Sender as TSynEdit).BlockBegin.Y) + ' ' +
                           IntToStr((Sender as TSynEdit).BlockEnd.Y);
end;

procedure TForm1.SynEdit1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var syn: TSynEdit;
begin
  syn := Sender as TSynEdit;
  StatusBar1.SimpleText := IntToStr(syn.BlockBegin.Y) + ' ' +
                           IntToStr(syn.BlockEnd.Y);
  if syn.SelAvail then
    ShowMiniBar(syn.ClientToScreen(Point(X, Y)))
  else
    HideMiniBar;
end;

{ ─── undo / redo ────────────────────────────────────────────────────────── }

procedure TForm1.MenuItem4Click(Sender: TObject);
begin Close; end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin Ed.Undo; end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin Ed.Redo; end;

{ ─── unsaved-changes guard ──────────────────────────────────────────────── }

function TForm1.ConfirmDiscardChanges(const tabIdx: integer): boolean;
var e: TSynEdit; tabCap: string;
begin
  Result := True;
  if (tabIdx < 0) or (tabIdx >= PageControl1.PageCount) then exit;
  if tabIdx = 0 then
    e := SynEdit1
  else if PageControl1.Pages[tabIdx].ControlCount > 0 then
    e := PageControl1.Pages[tabIdx].Controls[0] as TSynEdit
  else
    exit;
  if not e.Modified then exit;
  tabCap := PageControl1.Pages[tabIdx].Caption;
  case MessageDlg('Nicht gespeicherte ' + #196 + 'nderungen',
      '"' + tabCap + '" hat nicht gespeicherte ' + #196 + 'nderungen.' + LineEnding +
      'M' + #246 + 'chten Sie speichern?',
      mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
    mrYes:
      begin
        if (tabIdx < length(TabMetas)) and
           (TabMetas[tabIdx].Filename <> '') and
           (TabMetas[tabIdx].Filename <> 'unnamed') then
        begin
          e.Lines.SaveToFile(TabMetas[tabIdx].Filename);
          e.Modified := False;
        end
        else if SaveDialog1.Execute then
        begin
          e.Lines.SaveToFile(SaveDialog1.Filename);
          e.Modified := False;
          if tabIdx < length(TabMetas) then
          begin
            TabMetas[tabIdx].Filename := SaveDialog1.Filename;
            PageControl1.Pages[tabIdx].Caption := ExtractFileName(SaveDialog1.Filename);
          end;
          AddRecentFile(SaveDialog1.Filename);
        end
        else
          Result := False;
      end;
    mrNo: ;
    mrCancel: Result := False;
  end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var i: integer;
begin
  CanClose := True;
  for i := 0 to PageControl1.PageCount - 1 do
    if not ConfirmDiscardChanges(i) then
    begin
      CanClose := False;
      exit;
    end;
end;

procedure TForm1.PageControl1CloseTabClicked(Sender: TObject; APage: TCustomPage);
var idx, i: integer;
begin
  if PageControl1.PageCount <= 1 then exit;
  idx := APage.PageIndex;
  if not ConfirmDiscardChanges(idx) then exit;
  { Remove TabMeta before freeing so any triggered PageControl1Change sees consistent state }
  for i := idx to high(TabMetas) - 1 do
    TabMetas[i] := TabMetas[i + 1];
  SetLength(TabMetas, length(TabMetas) - 1);
  APage.Free;
  PageControl1Change(nil);
end;

{ ─── change history ─────────────────────────────────────────────────────── }

procedure TForm1.RecordChange(const desc: string);
begin
  ChangeHistory.Insert(0, desc);
  while ChangeHistory.Count > 10 do ChangeHistory.Delete(ChangeHistory.Count - 1);
  UpdateHistoryMenu;
end;

procedure TForm1.UpdateHistoryMenu;
var i: integer; mi: TMenuItem;
begin
  MenuItem77.Clear;
  if ChangeHistory.Count = 0 then
  begin
    mi := TMenuItem.Create(MenuItem77);
    mi.Caption := '(leer)';
    mi.Enabled := False;
    MenuItem77.Add(mi);
    exit;
  end;
  for i := 0 to ChangeHistory.Count - 1 do
  begin
    mi := TMenuItem.Create(MenuItem77);
    mi.Caption := IntToStr(i + 1) + '.  ' + ChangeHistory[i];
    mi.Tag     := i + 1;
    mi.OnClick := @HistoryItemClick;
    MenuItem77.Add(mi);
  end;
end;

procedure TForm1.HistoryItemClick(Sender: TObject);
var n, k: integer;
begin
  n := (Sender as TMenuItem).Tag;
  for k := 1 to n do
    if Ed.CanUndo then Ed.Undo;
  for k := 1 to n do
    if ChangeHistory.Count > 0 then ChangeHistory.Delete(0);
  UpdateHistoryMenu;
end;

{ ─── font size ──────────────────────────────────────────────────────────── }

procedure TForm1.ApplyFontSize(sz: integer);
var i: integer; e: TSynEdit;
begin
  EditorFontSize := sz;
  SynEdit1.Font.Size := sz;
  for i := 1 to PageControl1.PageCount - 1 do
    if PageControl1.Pages[i].ControlCount > 0 then
    begin
      e := PageControl1.Pages[i].Controls[0] as TSynEdit;
      e.Font.Size := sz;
    end;
end;

{ ─── popup menu ─────────────────────────────────────────────────────────── }

procedure TForm1.PopupMenu1Popup(Sender: TObject);
var j: integer;
begin
  for j := 0 to 2 do
  begin
    PopupItemBible[j].Visible := (ModuleType = mtBible);
    PopupItemDict[j].Visible  := (ModuleType = mtDictionary);
  end;
end;

procedure TForm1.PopupCutClick(Sender: TObject);   begin Ed.CutToClipboard;   end;
procedure TForm1.PopupCopyClick(Sender: TObject);  begin Ed.CopyToClipboard;  end;
procedure TForm1.PopupPasteClick(Sender: TObject); begin Ed.PasteFromClipboard; end;
procedure TForm1.PopupUndoClick(Sender: TObject);  begin Ed.Undo; end;
procedure TForm1.PopupRedoClick(Sender: TObject);  begin Ed.Redo; end;
procedure TForm1.PopupFindClick(Sender: TObject);  begin FindDialog1.Execute; end;

{ ─── mini selection toolbar ─────────────────────────────────────────────── }

procedure TForm1.ShowMiniBar(const screenPt: TPoint);
var pt: TPoint;
begin
  pt := Self.ScreenToClient(screenPt);
  MiniBar.Left := pt.X - 20;
  MiniBar.Top  := pt.Y - MiniBar.Height - 8;
  if MiniBar.Top < 28 then
    MiniBar.Top := pt.Y + 12;
  if MiniBar.Left + MiniBar.Width > ClientWidth - 4 then
    MiniBar.Left := ClientWidth - MiniBar.Width - 4;
  if MiniBar.Left < 4 then MiniBar.Left := 4;
  MiniBar.Visible := True;
  MiniBar.BringToFront;
end;

procedure TForm1.HideMiniBar;
begin
  if Assigned(MiniBar) then MiniBar.Visible := False;
end;

procedure TForm1.MiniBarActionClick(Sender: TObject);
begin
  HideMiniBar;
  case (Sender as TComponent).Tag of
    1: MenuItem25Click(Sender);   { Bold }
    2: MenuItem26Click(Sender);   { Italic }
    3: MenuItem43Click(Sender);   { Superscript }
    4: MenuItem44Click(Sender);   { Subscript }
    5: MenuItem27Click(Sender);   { Paragraph }
    6: MenuItem30Click(Sender);   { Footnote }
    7: MenuItem45Click(Sender);   { Reference }
    8: MenuItem64Click(Sender);   { Convert bible refs }
  end;
end;

procedure TForm1.SynEditStatusChange(Sender: TObject; Changes: TSynStatusChanges);
begin
  if (scSelection in Changes) and not (Sender as TSynEdit).SelAvail then
    HideMiniBar;
  if scModified in Changes then
    UpdateTabCaption(PageControl1.ActivePageIndex);
end;

{ ─── tab unsaved indicator ──────────────────────────────────────────────── }

procedure TForm1.UpdateTabCaption(idx: integer);
var e: TSynEdit; fn: string;
begin
  if (idx < 0) or (idx >= PageControl1.PageCount) or
     (idx >= length(TabMetas)) then exit;
  if idx = 0 then e := SynEdit1
  else if PageControl1.Pages[idx].ControlCount > 0 then
    e := PageControl1.Pages[idx].Controls[0] as TSynEdit
  else exit;
  fn := ExtractFileName(TabMetas[idx].Filename);
  if fn = '' then fn := 'unnamed';
  if e.Modified then
    PageControl1.Pages[idx].Caption := fn + ' *'
  else
    PageControl1.Pages[idx].Caption := fn;
end;

{ ─── speedbutton glyphs ─────────────────────────────────────────────────── }

procedure TForm1.AssignGlyphs;

  procedure TextGlyph(sb: TSpeedButton; const txt: string; bgClr: TColor;
      bold_, italic_: boolean);
  var bmp: TBitmap; tw, th: integer;
  begin
    bmp := TBitmap.Create;
    try
      bmp.Width := 22; bmp.Height := 22;
      bmp.PixelFormat := pf24bit;
      bmp.Canvas.Brush.Color := bgClr;
      bmp.Canvas.FillRect(Rect(0, 0, 22, 22));
      bmp.Canvas.Font.Name  := 'Sans';
      bmp.Canvas.Font.Size  := 10;
      bmp.Canvas.Font.Style := [];
      if bold_   then bmp.Canvas.Font.Style := bmp.Canvas.Font.Style + [fsBold];
      if italic_ then bmp.Canvas.Font.Style := bmp.Canvas.Font.Style + [fsItalic];
      bmp.Canvas.Font.Color := clWhite;
      tw := bmp.Canvas.TextWidth(txt);
      th := bmp.Canvas.TextHeight(txt);
      bmp.Canvas.TextOut((22 - tw) div 2, (22 - th) div 2, txt);
      sb.Glyph.Assign(bmp);
      sb.Caption := '';
    finally bmp.Free; end;
  end;

  procedure HeadingGlyph(sb: TSpeedButton; level: integer);
  const kColors: array[1..4] of TColor = ($003366, $0055AA, $0088CC, $44AADD);
  var bmp: TBitmap; h, y: integer;
  begin
    bmp := TBitmap.Create;
    try
      bmp.Width := 22; bmp.Height := 22;
      bmp.PixelFormat := pf24bit;
      bmp.Canvas.Brush.Color := clFuchsia;
      bmp.Canvas.FillRect(Rect(0, 0, 22, 22));
      h := 6 - level;   { 5..2 pixels }
      y := 4;
      bmp.Canvas.Brush.Color := kColors[level];
      bmp.Canvas.Pen.Color   := kColors[level];
      bmp.Canvas.FillRect(Rect(1, y, 21, y + h));
      bmp.Canvas.Brush.Color := $BBBBBB;
      bmp.Canvas.Pen.Color   := $BBBBBB;
      y := y + h + 3;
      bmp.Canvas.FillRect(Rect(1, y, 21, y + 2));
      y += 4;
      bmp.Canvas.FillRect(Rect(1, y, 15, y + 2));
      bmp.Transparent := True;
      sb.Glyph.Assign(bmp);
      sb.Caption := '';
    finally bmp.Free; end;
  end;

  procedure TableGlyph(sb: TSpeedButton);
  var bmp: TBitmap; c: TCanvas;
  begin
    bmp := TBitmap.Create;
    try
      bmp.Width := 22; bmp.Height := 22;
      bmp.PixelFormat := pf24bit;
      c := bmp.Canvas;
      c.Brush.Color := clFuchsia;
      c.FillRect(Rect(0, 0, 22, 22));
      c.Pen.Color := $334499;
      c.Brush.Color := $CCE5FF;
      c.Rectangle(1, 3, 10, 10);
      c.Rectangle(12, 3, 21, 10);
      c.Rectangle(1, 12, 10, 19);
      c.Rectangle(12, 12, 21, 19);
      bmp.Transparent := True;
      sb.Glyph.Assign(bmp);
      sb.Caption := '';
    finally bmp.Free; end;
  end;

  procedure MergeGlyph(sb: TSpeedButton);
  var bmp: TBitmap; c: TCanvas;
  begin
    bmp := TBitmap.Create;
    try
      bmp.Width := 22; bmp.Height := 22;
      bmp.PixelFormat := pf24bit;
      c := bmp.Canvas;
      c.Brush.Color := clFuchsia;
      c.FillRect(Rect(0, 0, 22, 22));
      c.Pen.Color := $224499; c.Pen.Width := 2;
      c.Line(1, 5, 21, 5); c.Line(1, 10, 21, 10); c.Line(1, 15, 21, 15);
      c.Pen.Color := $AA3300; c.Pen.Width := 1;
      c.Line(11, 17, 11, 21); c.Line(8, 19, 11, 21); c.Line(14, 19, 11, 21);
      bmp.Transparent := True;
      sb.Glyph.Assign(bmp);
      sb.Caption := '';
    finally bmp.Free; end;
  end;

  procedure SplitGlyph(sb: TSpeedButton);
  var bmp: TBitmap; c: TCanvas;
  begin
    bmp := TBitmap.Create;
    try
      bmp.Width := 22; bmp.Height := 22;
      bmp.PixelFormat := pf24bit;
      c := bmp.Canvas;
      c.Brush.Color := clFuchsia;
      c.FillRect(Rect(0, 0, 22, 22));
      c.Pen.Color := $224499; c.Pen.Width := 2;
      c.Line(1, 11, 21, 11);
      c.Pen.Width := 1; c.Pen.Color := $AA3300;
      c.Line(1, 6, 10, 6); c.Line(1, 16, 10, 16);
      c.Pen.Color := $224499;
      c.Line(1, 4, 1, 8); c.Line(1, 14, 1, 18);
      c.Line(1, 6, 0, 6); c.Line(1, 16, 0, 16);
      bmp.Transparent := True;
      sb.Glyph.Assign(bmp);
      sb.Caption := '';
    finally bmp.Free; end;
  end;

  procedure SupSubGlyph(sb: TSpeedButton; isSup: boolean);
  var bmp: TBitmap; c: TCanvas; sy: integer;
  begin
    bmp := TBitmap.Create;
    try
      bmp.Width := 22; bmp.Height := 22;
      bmp.PixelFormat := pf24bit;
      c := bmp.Canvas;
      c.Brush.Color := clFuchsia;
      c.FillRect(Rect(0, 0, 22, 22));
      c.Font.Name := 'Sans'; c.Font.Size := 10;
      c.Font.Style := []; c.Font.Color := $224499;
      c.TextOut(2, 5, 'A');
      c.Font.Size := 7; c.Font.Color := $AA3300;
      if isSup then sy := 2 else sy := 13;
      c.TextOut(13, sy, '2');
      bmp.Transparent := True;
      sb.Glyph.Assign(bmp);
      sb.Caption := '';
    finally bmp.Free; end;
  end;

  procedure RefGlyph(sb: TSpeedButton);
  var bmp: TBitmap; c: TCanvas;
  begin
    bmp := TBitmap.Create;
    try
      bmp.Width := 22; bmp.Height := 22;
      bmp.PixelFormat := pf24bit;
      c := bmp.Canvas;
      c.Brush.Color := clFuchsia;
      c.FillRect(Rect(0, 0, 22, 22));
      c.Pen.Color := $334499; c.Pen.Width := 1;
      c.Brush.Color := $CCE5FF;
      c.RoundRect(1, 7, 10, 15, 3, 3);
      c.RoundRect(12, 7, 21, 15, 3, 3);
      c.Pen.Width := 1;
      c.Line(10, 11, 12, 11);
      c.Line(11, 10, 12, 11); c.Line(11, 12, 12, 11);
      bmp.Transparent := True;
      sb.Glyph.Assign(bmp);
      sb.Caption := '';
    finally bmp.Free; end;
  end;

  procedure ForeignGlyph(sb: TSpeedButton);
  var bmp: TBitmap; c: TCanvas;
  begin
    bmp := TBitmap.Create;
    try
      bmp.Width := 22; bmp.Height := 22;
      bmp.PixelFormat := pf24bit;
      c := bmp.Canvas;
      c.Brush.Color := clFuchsia;
      c.FillRect(Rect(0, 0, 22, 22));
      c.Pen.Color := $334499; c.Pen.Width := 1;
      c.Brush.Color := $E0F0FF;
      c.Ellipse(2, 2, 20, 20);
      c.Pen.Color := $334499;
      c.Line(2, 11, 20, 11);
      c.Brush.Color := clNone;
      c.Ellipse(7, 2, 15, 20);
      bmp.Transparent := True;
      sb.Glyph.Assign(bmp);
      sb.Caption := '';
    finally bmp.Free; end;
  end;

begin
  TextGlyph(SpeedButton3,  'B', $003388, True,  False);  { Bold }
  TextGlyph(SpeedButton4,  'I', $003388, False, True);   { Italic }
  MergeGlyph(SpeedButton8);                               { Merge lines }
  SplitGlyph(SpeedButton12);                              { Split enum }
  HeadingGlyph(SpeedButton13, 1);                        { Major section }
  HeadingGlyph(SpeedButton14, 2);                        { Chapter }
  HeadingGlyph(SpeedButton15, 3);                        { Section }
  HeadingGlyph(SpeedButton16, 4);                        { Subsection }
  TableGlyph(SpeedButton17);                              { Table }
  SupSubGlyph(SpeedButton18, True);                       { Superscript }
  SupSubGlyph(SpeedButton19, False);                      { Subscript }
  RefGlyph(SpeedButton20);                                { Reference }
  ForeignGlyph(SpeedButton21);                            { Foreign }
end;

{ ─── helper: image file detection ──────────────────────────────────────── }

function TForm1.IsImageFile(const fn: string): boolean;
var ext: string;
begin
  ext := LowerCase(ExtractFileExt(fn));
  Result := (ext = '.jpg') or (ext = '.jpeg') or (ext = '.png') or
            (ext = '.gif') or (ext = '.bmp') or (ext = '.tif') or (ext = '.tiff');
end;

{ ─── file browser: rebuild (sets shell tree root) ───────────────────────── }

procedure TForm1.RebuildFileList;
begin
  FilePreviewImg.Picture.Clear;
  if (HomePath <> '') and DirectoryExists(HomePath) then
    FileTree.Root := IncludeTrailingPathDelimiter(HomePath);
end;

{ ─── file browser: selection → preview image ────────────────────────────── }

procedure TForm1.FileTreeSelChange(Sender: TObject; Item: TListItem; Selected: Boolean);
var path: string;
begin
  if not Selected or (Item = nil) then exit;
  path := FileTree.GetPathFromItem(Item);
  if not FileExists(path) or not IsImageFile(path) then
  begin
    FilePreviewImg.Picture.Clear;
    exit;
  end;
  try
    FilePreviewImg.Picture.LoadFromFile(path);
  except
    FilePreviewImg.Picture.Clear;
  end;
end;

procedure TForm1.FileListDblClick(Sender: TObject);
var item: TShellListItem; path: string;
begin
  if FileTree.Selected = nil then exit;
  item := TShellListItem(FileTree.Selected);
  if item.isFolder then
  begin
    path := FileTree.GetPathFromItem(item);
    FileTree.Root := path;
  end;
end;

{ ─── file browser: home button ──────────────────────────────────────────── }

procedure TForm1.FileTreeHomeClick(Sender: TObject);
begin
  if (HomePath <> '') and DirectoryExists(HomePath) then
    FileTree.Root := IncludeTrailingPathDelimiter(HomePath);
end;

procedure TForm1.FileTreeUpClick(Sender: TObject);
var upDir: string;
begin
  upDir := ExtractFileDir(ExcludeTrailingPathDelimiter(FileTree.Root));
  if (upDir <> '') and DirectoryExists(upDir) then
    FileTree.Root := IncludeTrailingPathDelimiter(upDir);
end;

{ ─── file browser: filter combo ─────────────────────────────────────────── }

procedure TForm1.FilterComboChange(Sender: TObject);
begin
  case FileFilterCombo.ItemIndex of
    1: FileTree.Mask := '';
    2: FileTree.Mask := '*.xml';
    else FileTree.Mask := '*.jpg;*.jpeg;*.png;*.gif;*.bmp;*.tif;*.tiff;*.webp';
  end;
end;

{ ─── file browser: insert buttons / popup ───────────────────────────────── }

procedure TForm1.FileInsertWithP(Sender: TObject);
var path: string;
begin
  if FileTree.Selected = nil then exit;
  path := FileTree.GetPathFromItem(FileTree.Selected);
  if FileExists(path) then InsertFigureFromFile(path, True);
end;

procedure TForm1.FileInsertWithoutP(Sender: TObject);
var path: string;
begin
  if FileTree.Selected = nil then exit;
  path := FileTree.GetPathFromItem(FileTree.Selected);
  if FileExists(path) then InsertFigureFromFile(path, False);
end;

{ ─── insert <figure> tag ────────────────────────────────────────────────── }

procedure TForm1.InsertFigureFromFile(const fn: string; withP: boolean);
var relPath, figTag: string; homePrefix: string;
begin
  relPath := fn;
  if HomePath <> '' then
  begin
    homePrefix := IncludeTrailingPathDelimiter(HomePath);
    if copy(fn, 1, length(homePrefix)) = homePrefix then
      relPath := copy(fn, length(homePrefix) + 1, length(fn));
  end;
  relPath := StringReplace(relPath, '\', '/', [rfReplaceAll]);
  figTag := '<figure src="' + relPath + '"/>';
  if withP then
    Ed.SelText := '<p>' + figTag + '</p>'
  else
    Ed.SelText := figTag;
  RecordChange('<figure>');
end;

{ ─── right panel toggle ─────────────────────────────────────────────────── }

procedure TForm1.ToggleRightPanel(Sender: TObject);
begin
  Memo1.Visible    := not Memo1.Visible;
  Splitter2.Visible := Memo1.Visible;
  if Memo1.Visible then
    RightToggleBtn.Caption := #$E2#$96#$BA { ► }
  else
    RightToggleBtn.Caption := #$E2#$97#$84; { ◄ }
end;

{ ─── TreeView expand / collapse all ────────────────────────────────────── }

procedure TForm1.TreeExpandAllClick(Sender: TObject);
begin TreeView1.FullExpand; end;

procedure TForm1.TreeCollapseAllClick(Sender: TObject);
begin TreeView1.FullCollapse; end;

{ ─── SynEdit drag-and-drop from file browser ────────────────────────────── }

procedure TForm1.SynEditDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = FileTree) and (FileTree.Selected <> nil) and
            FileExists(FileTree.GetPathFromItem(FileTree.Selected));
end;

procedure TForm1.SynEditDragDrop(Sender, Source: TObject; X, Y: Integer);
var path: string; syn: TSynEdit; row: integer;
begin
  if Source <> FileTree then exit;
  if FileTree.Selected = nil then exit;
  path := FileTree.GetPathFromItem(FileTree.Selected);
  if not FileExists(path) then exit;
  syn := Sender as TSynEdit;
  if syn.LineHeight > 0 then
  begin
    row := syn.TopLine + Y div syn.LineHeight;
    if row < 1 then row := 1;
    if row > syn.Lines.Count then row := syn.Lines.Count;
    syn.CaretXY := Point(1, row);
  end;
  InsertFigureFromFile(path, True);
end;

{ ─── hover image preview over <figure src="..."> ────────────────────────── }

procedure TForm1.SynEditMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  syn: TSynEdit;
  lineNo: integer;
  line, srcVal, imgPath: string;
  pt: TPoint;
begin
  syn := Sender as TSynEdit;
  if syn.LineHeight <= 0 then exit;
  lineNo := syn.TopLine + Y div syn.LineHeight;

  { Mouse still on the same line with popup already shown — nothing to do }
  if (lineNo = HoverLastLine) and (syn = HoverLastSyn) and HoverPopup.Visible then exit;

  { Mouse moved off the current hover line — cancel any pending load }
  HoverTimer.Enabled := False;
  if lineNo <> HoverLastLine then
    HoverPopup.Visible := False;

  HoverLastLine := lineNo;
  HoverLastSyn  := syn;

  if (lineNo < 1) or (lineNo > syn.Lines.Count) then exit;
  line := syn.Lines[lineNo - 1];
  if (pos('<figure', line) = 0) or (pos('src=', line) = 0) then exit;
  srcVal := ExtractAttr(line, 'src');
  if srcVal = '' then exit;
  imgPath := srcVal;
  if not FileExists(imgPath) and (HomePath <> '') then
    imgPath := IncludeTrailingPathDelimiter(HomePath) + srcVal;
  if not FileExists(imgPath) or not IsImageFile(imgPath) then exit;

  { Store screen position for use when timer fires }
  pt := syn.ClientToScreen(Point(X, Y));
  HoverPendingPath := imgPath;
  HoverPendingPt   := pt;
  HoverTimer.Enabled := True;
end;

procedure TForm1.HoverTimerTick(Sender: TObject);
var
  pic: TPicture;
  pt: TPoint;
begin
  HoverTimer.Enabled := False;
  if HoverPendingPath = '' then exit;

  pic := TPicture.Create;
  try
    pic.LoadFromFile(HoverPendingPath);
    HoverImage.Picture.Assign(pic);
    pt := Self.ScreenToClient(HoverPendingPt);
    HoverPopup.Left := pt.X + 16;
    HoverPopup.Top  := pt.Y - HoverPopup.Height - 4;
    if HoverPopup.Top < 0 then HoverPopup.Top := pt.Y + 16;
    if HoverPopup.Left + HoverPopup.Width > ClientWidth - 4 then
      HoverPopup.Left := ClientWidth - HoverPopup.Width - 4;
    HoverPopup.Visible := True;
    HoverPopup.BringToFront;
  except
    HoverPopup.Visible := False;
  end;
  pic.Free;
  HoverPendingPath := '';
end;

end.
