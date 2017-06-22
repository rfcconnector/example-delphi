program Client;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Win.ComObj,
  RFCCONNECTORLib_TLB in 'RFCCONNECTORLib_TLB.pas';

// get an instance of NwRfcSession. This is the recommended method
// of connecting with SAPGUI 7.50 and later.
Function GetNwRfcSession(saplogon_id: String): ISession;
var session: IRfcSession;
begin
  session:= CreateComObject(CLASS_NWRfcSession) as IRfcSession;
  session.RfcSystemData.ConnectString := Format('SAPLOGON_ID=%s', [saplogon_id]);
  result:=session;
end;

// get an instance of RfcSession. Use this if you cannot install
// the NWRFC library (or GUI 7.50+).
Function GetRfcSession(saplogon_id: String): ISession;
var session: IRfcSession;
begin
  session:=CoRfcSession.Create();
  session.RfcSystemData.ConnectString := Format('SAPLOGON_ID=%s', [saplogon_id]);
  result:=session;
end;

// get an instance of SoapSession. Use this if you don't want to install
// any additional library, and you do not need SSO or "visual" RFC (e.g.
// showing DynPro).
Function GetSOAPSession(host: String; port: Integer): ISession;
var session: ISoapSession;
begin
  session:=CoSoapSession.Create();
  session.HttpSystemData.Host := host;
  session.HttpSystemData.Port := port; // usually 8000+SYSNR
  result:=session;
end;

// Log on to the SAP system with the given parameters, and check errors
procedure Logon(session: ISession);
begin
  // set up logon data
  session.LogonData.Client := '001';
  session.LogonData.User := 'DEVELOPER';
  session.LogonData.Password := 'developer1';
  session.LogonData.Language := 'EN';

  // set up license key
  // Note: you can get a free temporary key at http://rfcconnector.com/order/
  session.LicenseData.Owner := '(unregistered DEMO version)';
  session.LicenseData.key := '126TYLUD7U7ID2INO4FR9DW7RD7PTSD';

  // connect to SAP system
  Try
    session.Connect();
  Except
    on ex: Exception Do
      raise Exception.Create(session.ErrorInfo.Message);
  end;
end;

// call a function/BAPI
procedure CallFunction(session: ISession);
var fn: IFunctionCall;
    row: IRfcFields;
    I: Integer;
begin
  fn := session.ImportCall('BAPI_FLIGHT_GETLIST', True);

  // set IMPORTING parameter (=sent to SAP)
  fn.Importing['AIRLINE'].value := 'LH';

  // call the function
  session.CallFunction(fn, True);

  // check for error
  if session.Error then
    raise Exception.Create(session.ErrorInfo.Message);

  // read out the data returned from the SAP system
  for I := 1 to fn.Tables['FLIGHT_LIST'].Rows.Count do begin
    row := fn.Tables['FLIGHT_LIST'].Rows[I];
    writeln(string(row['AIRLINEID'].value) + ' '
      + string(row['FLIGHTDATE'].value));
  end;
end;

// read a SAP table
procedure ReadTable(session: ISession);
var tr: ITableReader;
    row: IRfcFields;
    I: Integer;
begin

  tr := session.GetTableReader('SFLIGHT');

  // set a select criterium
  tr.Query.Add('CARRID EQ ''LH''');

  // read 100 rows, starting at the first row
  // Note: use tr.Read(0,0) to read all rows
  tr.Read(100, 0);

  // check error
  if tr.Error then
    raise Exception.Create(tr.ErrorInfo.Message);

  // show the result
  for I := 1 to tr.Rows.Count do begin
    row := tr.Rows[I];
    writeln(string(row['FLDATE'].value) + ' '
      + string(row['PRICE'].value));
  end;

end;

var session: ISession;

begin
  try
    session := GetNwRfcSession('NPL');

    Logon(Session);

    // example function call
    CallFunction(session);

    // table reader example
    ReadTable(session);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  writeln('press enter to continue');
  readln;
end.

