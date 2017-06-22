unit RFCCONNECTORLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 22.06.2017 18:18:47 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\chris\devel\cpp\RfcConnector\bin\Release\RfcConnector.dll (1)
// LIBID: {FBDBDBA5-518B-4146-A52F-455C0E03492D}
// LCID: 0
// Helpfile: 
// HelpString: secept RfcConnector
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'type' of ISession.SessionType changed to 'type_'
//   Hint: Parameter 'type' of ISession.ImportType changed to 'type_'
//   Hint: Parameter 'type' of ITypeCache.GetType changed to 'type_'
//   Hint: Parameter 'type' of ITypeCache.AddType changed to 'type_'
//   Hint: Member 'Function' of 'IFunctionCall' changed to 'Function_'
//   Hint: Parameter 'type' of IRfcParameters.AddScalar changed to 'type_'
//   Hint: Parameter 'type' of IRfcParameters.AddParameter changed to 'type_'
//   Hint: Parameter 'type' of IRfcParameter.DefineScalar changed to 'type_'
//   Hint: Parameter 'type' of IRfcParameter.Define changed to 'type_'
//   Hint: Parameter 'type' of IRfcRows.put_RfcType changed to 'type_'
//   Hint: Member 'Function' of 'IRfcServerLogonInfo' changed to 'Function_'
//   Hint: Parameter 'Function' of IRfcServerLogonInfo.SetLogonInfo changed to 'Function_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleCtrls, Vcl.OleServer, Winapi.ActiveX;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  RFCCONNECTORLibMajorVersion = 1;
  RFCCONNECTORLibMinorVersion = 0;

  LIBID_RFCCONNECTORLib: TGUID = '{FBDBDBA5-518B-4146-A52F-455C0E03492D}';

  IID_ISession: TGUID = '{0FA444DE-59E2-4DFE-8633-FF1A0947D370}';
  IID_ILogonData: TGUID = '{22D219AB-CD9A-4047-958D-0555D9D4AB25}';
  IID_IRfcError: TGUID = '{247D8252-9AFA-4E9D-B2CA-D072CF431A4B}';
  IID_ITypeCache: TGUID = '{C79ADDF1-1BC1-4C9B-A523-23BAA3516349}';
  IID_IRfcType: TGUID = '{836FB3D2-4432-42DF-91ED-08ECD87AEB8A}';
  IID_IRfcTypes: TGUID = '{B4B0CCC4-31A3-403B-9A23-9EBC74C1AD52}';
  IID_IFunctionCall: TGUID = '{395F05EA-BEC2-4AF7-8B7E-23EA19B2EA6B}';
  IID_IRfcParameters: TGUID = '{4A42BBD4-35DB-4051-B647-959D2C3962C7}';
  IID_IRfcParameter: TGUID = '{188D443E-3177-486A-AE85-AC5C9E952864}';
  IID_IRfcFields: TGUID = '{79D69B86-F48C-4B5D-BDD6-9BC64A8EC625}';
  IID_IRfcField: TGUID = '{7D969726-1A17-41F0-A77B-E41B3A738F86}';
  IID_IRfcRows: TGUID = '{BCEE9AF6-0A96-4F67-9524-AA7E2271794D}';
  IID_ILicenseData: TGUID = '{11D044B1-6668-45DD-9D39-8EA7751FE29A}';
  IID_ITableReader: TGUID = '{D347768E-78F6-447D-AE7F-C9E94657A240}';
  IID_IStringList: TGUID = '{A348B9F8-E962-4E4D-8CB9-F89C7DF3665F}';
  DIID__SessionEvents: TGUID = '{BC0163AC-4FF4-474E-8421-BCF335CB7D2F}';
  IID_IRfcSession: TGUID = '{CA0458AF-15AC-4A0F-96BD-F3DA83CD38ED}';
  IID_IRfcSystemData: TGUID = '{5FD55CB6-E513-47DE-B65B-A86A977B4D2F}';
  IID_ISoapSession: TGUID = '{910234E5-DF57-4224-8810-1216903E88C0}';
  IID_IHttpSystemData: TGUID = '{D0382C29-40CA-4D7A-905C-9AC68A1E7873}';
  IID_IFunctionCalls: TGUID = '{103F840C-0FAD-4C0D-9799-517A2BDB6E61}';
  IID_IBSPApplication: TGUID = '{7D150756-7E3C-4515-B62D-5B5D127187CF}';
  IID_IWindowProperties: TGUID = '{56D2F6D3-1AA2-4295-B65B-0D4A95CB8222}';
  IID_IBSPParameters: TGUID = '{8B785C44-1BFB-46B4-92BA-2DE2FDE2B673}';
  IID_IBSPParameter: TGUID = '{4A38FDDA-304B-49B7-9507-16A7F062EA78}';
  IID_IRfcServer: TGUID = '{E735E5AA-795F-4628-90B3-5C03F233AD77}';
  IID_IRfcServerErrorInfo: TGUID = '{FC290B06-00CA-4944-A6F9-409181B4EB55}';
  IID_IRfcServerLogonInfo: TGUID = '{16F79B0C-052B-4714-9A6B-582AFC02231E}';
  IID_IRfcTransactionInfo: TGUID = '{BE3EB5DA-B7E9-4396-BF65-7F27261E8921}';
  IID_IConnectorCtrl: TGUID = '{1231A5C9-054E-4282-8C25-FA8926561474}';
  DIID__RfcServerEvents: TGUID = '{DAE825D0-0DEE-496F-87D9-FD46FCDB30D9}';
  CLASS_RfcSession: TGUID = '{9A07C80C-494E-4594-AFEB-7FB489423047}';
  CLASS_RfcServer: TGUID = '{C47C2C19-D930-4ACE-B5B1-A6DA857A8CA6}';
  CLASS_RfcType: TGUID = '{4B5D6367-2542-4D12-A4A5-12F7D7580A7F}';
  CLASS_RfcTypes: TGUID = '{27C4B0B6-BD70-4BD8-B90D-A321B2EBB279}';
  CLASS_RfcField: TGUID = '{BE893C7B-F050-41F6-866C-4D9F86B6DABB}';
  CLASS_RfcFields: TGUID = '{B4D30676-4A82-4BF9-9F68-CFF3AE9AF953}';
  CLASS_RfcRows: TGUID = '{C5C60B86-74E0-4506-B9BE-F7A714E64CB3}';
  CLASS_RfcParameter: TGUID = '{BD0D8524-C913-4F72-BC72-6343833EEB42}';
  CLASS_RfcParameters: TGUID = '{1654611F-BEF7-444F-B695-CB350F101546}';
  CLASS_LogonData: TGUID = '{6F17FBFF-877F-43A6-8B0B-0BD175EC0D86}';
  CLASS_RfcSystemData: TGUID = '{8739DEC4-BF85-4338-86B0-D63D1239F720}';
  CLASS_RfcError: TGUID = '{C10AD16C-C834-4DF3-8D29-AF257C61D5A7}';
  CLASS_SoapSession: TGUID = '{334E20D8-8C80-450B-ACA1-B3A2CC44DBCD}';
  CLASS_HttpSystemData: TGUID = '{70D24AEF-9663-4BB8-BFD1-AD829CA9CA5C}';
  CLASS_BSPApplication: TGUID = '{86A5EDB1-49AE-4155-A051-A2094593227C}';
  CLASS_WindowProperties: TGUID = '{E4A8E8E1-5133-40AF-80DB-8A64C4C22C47}';
  CLASS_BSPParameter: TGUID = '{7F41262A-DDF7-44C5-BC05-948B42E003E3}';
  CLASS_BSPParameters: TGUID = '{2B77480D-7B9D-49FB-93C7-D32074E9BD08}';
  CLASS_FunctionCall: TGUID = '{2EF2F358-A4EB-40B8-B6D8-9219AC8E0305}';
  CLASS_FunctionCalls: TGUID = '{35D629B9-042F-4725-9418-98B555C4F460}';
  CLASS_RfcServerLogonInfo: TGUID = '{EBF9CEC6-3834-48D2-8B96-D9F74DE0F4BA}';
  CLASS_RfcServerErrorInfo: TGUID = '{429CFB0B-185B-4887-B81E-962BCF48C2BA}';
  CLASS_RfcTransactionInfo: TGUID = '{D771D4EB-2557-4341-A5E9-FB3820E48FB5}';
  CLASS_StringList: TGUID = '{02B53644-AC8B-41AB-9E9B-C8676F07D066}';
  CLASS_TableReader: TGUID = '{CECB9FE0-B88C-43CF-9E27-A71F9431CF5C}';
  CLASS_ConnectorCtrl: TGUID = '{FC07F669-BFFE-4ABC-93BD-507E549508DE}';
  CLASS_NWRfcSession: TGUID = '{AD6F824D-BAC7-464B-A52D-D83F62CB9DB4}';
  CLASS_NWRfcServer: TGUID = '{35D519D6-0106-4B5D-BA15-923F2D87FEF1}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum RFCTYPEKIND
type
  RFCTYPEKIND = TOleEnum;
const
  RFCTYPEKIND_UNDEFINED = $00000000;
  RFCTYPEKIND_SCALAR = $00000001;
  RFCTYPEKIND_STRUCT = $00000002;
  RFCTYPEKIND_TABLE = $00000003;
  RFCTYPEKIND_COMPLEX_STRUCT = $00000004;

// Constants for enum ABAPTYPE
type
  ABAPTYPE = TOleEnum;
const
  TYPE_CHAR = $00000000;
  TYPE_DATE = $00000001;
  TYPE_BCD = $00000002;
  TYPE_TIME = $00000003;
  TYPE_BYTE = $00000004;
  TYPE_ITAB = $00000005;
  TYPE_NUM = $00000006;
  TYPE_FLOAT = $00000007;
  TYPE_INT = $00000008;
  TYPE_INT2 = $00000009;
  TYPE_INT1 = $0000000A;
  TYPE_STRUCTURE = $00000011;
  TYPE_STRING = $0000001D;
  TYPE_XSTRING = $0000001E;

// Constants for enum ERRORGROUP
type
  ERRORGROUP = TOleEnum;
const
  RFCERROR_NO_ERROR = $00000000;
  RFCERROR_PROGRAM = $00000065;
  RFCERROR_COMMUNICATION = $00000066;
  RFCERROR_LOGON_FAILURE = $00000067;
  RFCERROR_SYSTEM_FAILURE = $00000068;
  RFCERROR_APPLICATION_EXCEPTION = $00000069;
  RFCERROR_RESOURCE = $0000006A;
  RFCERROR_PROTOCOL = $0000006B;
  RFCERROR_INTERNAL = $0000006C;
  RFCERROR_CANCELLED = $0000006D;
  RFCERROR_BUSY = $0000006E;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ISession = interface;
  ISessionDisp = dispinterface;
  ILogonData = interface;
  ILogonDataDisp = dispinterface;
  IRfcError = interface;
  IRfcErrorDisp = dispinterface;
  ITypeCache = interface;
  ITypeCacheDisp = dispinterface;
  IRfcType = interface;
  IRfcTypeDisp = dispinterface;
  IRfcTypes = interface;
  IRfcTypesDisp = dispinterface;
  IFunctionCall = interface;
  IFunctionCallDisp = dispinterface;
  IRfcParameters = interface;
  IRfcParametersDisp = dispinterface;
  IRfcParameter = interface;
  IRfcParameterDisp = dispinterface;
  IRfcFields = interface;
  IRfcFieldsDisp = dispinterface;
  IRfcField = interface;
  IRfcFieldDisp = dispinterface;
  IRfcRows = interface;
  IRfcRowsDisp = dispinterface;
  ILicenseData = interface;
  ILicenseDataDisp = dispinterface;
  ITableReader = interface;
  ITableReaderDisp = dispinterface;
  IStringList = interface;
  IStringListDisp = dispinterface;
  _SessionEvents = dispinterface;
  IRfcSession = interface;
  IRfcSessionDisp = dispinterface;
  IRfcSystemData = interface;
  IRfcSystemDataDisp = dispinterface;
  ISoapSession = interface;
  ISoapSessionDisp = dispinterface;
  IHttpSystemData = interface;
  IHttpSystemDataDisp = dispinterface;
  IFunctionCalls = interface;
  IFunctionCallsDisp = dispinterface;
  IBSPApplication = interface;
  IBSPApplicationDisp = dispinterface;
  IWindowProperties = interface;
  IWindowPropertiesDisp = dispinterface;
  IBSPParameters = interface;
  IBSPParametersDisp = dispinterface;
  IBSPParameter = interface;
  IBSPParameterDisp = dispinterface;
  IRfcServer = interface;
  IRfcServerDisp = dispinterface;
  IRfcServerErrorInfo = interface;
  IRfcServerErrorInfoDisp = dispinterface;
  IRfcServerLogonInfo = interface;
  IRfcServerLogonInfoDisp = dispinterface;
  IRfcTransactionInfo = interface;
  IRfcTransactionInfoDisp = dispinterface;
  IConnectorCtrl = interface;
  IConnectorCtrlDisp = dispinterface;
  _RfcServerEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RfcSession = IRfcSession;
  RfcServer = IRfcServer;
  RfcType = IRfcType;
  RfcTypes = IRfcTypes;
  RfcField = IRfcField;
  RfcFields = IRfcFields;
  RfcRows = IRfcRows;
  RfcParameter = IRfcParameter;
  RfcParameters = IRfcParameters;
  LogonData = ILogonData;
  RfcSystemData = IRfcSystemData;
  RfcError = IRfcError;
  SoapSession = ISoapSession;
  HttpSystemData = IHttpSystemData;
  BSPApplication = IBSPApplication;
  WindowProperties = IWindowProperties;
  BSPParameter = IBSPParameter;
  BSPParameters = IBSPParameters;
  FunctionCall = IFunctionCall;
  FunctionCalls = IFunctionCalls;
  RfcServerLogonInfo = IRfcServerLogonInfo;
  RfcServerErrorInfo = IRfcServerErrorInfo;
  RfcTransactionInfo = IRfcTransactionInfo;
  StringList = IStringList;
  TableReader = ITableReader;
  ConnectorCtrl = IConnectorCtrl;
  NWRfcSession = IRfcSession;
  NWRfcServer = IRfcServer;


// *********************************************************************//
// Interface: ISession
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0FA444DE-59E2-4DFE-8633-FF1A0947D370}
// *********************************************************************//
  ISession = interface(IDispatch)
    ['{0FA444DE-59E2-4DFE-8633-FF1A0947D370}']
    function Get_SystemID: WideString; safecall;
    procedure Set_SystemID(const pVal: WideString); safecall;
    function Get_LogonData: ILogonData; safecall;
    function Get_ErrorInfo: IRfcError; safecall;
    function Get_IsConnected: WordBool; safecall;
    function Get_Error: WordBool; safecall;
    function Get_CallActive: WordBool; safecall;
    function Get_SessionType: WideString; safecall;
    function Get_Option(const name: WideString): WideString; safecall;
    procedure Set_Option(const name: WideString; const value: WideString); safecall;
    function Get_TypeCache: ITypeCache; safecall;
    procedure Set_TypeCache(const cache: ITypeCache); safecall;
    procedure Connect; safecall;
    procedure Disconnect; safecall;
    procedure CallFunction(const call: IFunctionCall; synchronous: WordBool); safecall;
    procedure AbortCall; safecall;
    function DecodeInternalError(errcode: Integer): WideString; safecall;
    function ImportType(const type_: WideString): IRfcType; safecall;
    function CheckPasswordExpired: WordBool; safecall;
    procedure ChangePassword(const newPassword: WideString); safecall;
    function CheckUnicodeSupport: WordBool; safecall;
    function CreateCall: IFunctionCall; safecall;
    function CreateType: IRfcType; safecall;
    function Get_LicenseData: ILicenseData; safecall;
    procedure About; safecall;
    function ImportCall(const ModuleName: WideString; ignoreUnsupportedParams: WordBool): IFunctionCall; safecall;
    function GetTableReader(const tableName: WideString): ITableReader; safecall;
    function CreateTransID: WideString; safecall;
    procedure ConfirmTransID(const tid: WideString); safecall;
    procedure CallTRFCFunction(const tid: WideString; const fn: IFunctionCall); safecall;
    property SystemID: WideString read Get_SystemID write Set_SystemID;
    property LogonData: ILogonData read Get_LogonData;
    property ErrorInfo: IRfcError read Get_ErrorInfo;
    property IsConnected: WordBool read Get_IsConnected;
    property Error: WordBool read Get_Error;
    property CallActive: WordBool read Get_CallActive;
    property SessionType: WideString read Get_SessionType;
    property Option[const name: WideString]: WideString read Get_Option write Set_Option;
    property TypeCache: ITypeCache read Get_TypeCache write Set_TypeCache;
    property LicenseData: ILicenseData read Get_LicenseData;
  end;

// *********************************************************************//
// DispIntf:  ISessionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0FA444DE-59E2-4DFE-8633-FF1A0947D370}
// *********************************************************************//
  ISessionDisp = dispinterface
    ['{0FA444DE-59E2-4DFE-8633-FF1A0947D370}']
    property SystemID: WideString dispid 1;
    property LogonData: ILogonData readonly dispid 2;
    property ErrorInfo: IRfcError readonly dispid 3;
    property IsConnected: WordBool readonly dispid 4;
    property Error: WordBool readonly dispid 5;
    property CallActive: WordBool readonly dispid 6;
    property SessionType: WideString readonly dispid 10;
    property Option[const name: WideString]: WideString dispid 11;
    property TypeCache: ITypeCache dispid 12;
    procedure Connect; dispid 20;
    procedure Disconnect; dispid 21;
    procedure CallFunction(const call: IFunctionCall; synchronous: WordBool); dispid 22;
    procedure AbortCall; dispid 23;
    function DecodeInternalError(errcode: Integer): WideString; dispid 24;
    function ImportType(const type_: WideString): IRfcType; dispid 25;
    function CheckPasswordExpired: WordBool; dispid 26;
    procedure ChangePassword(const newPassword: WideString); dispid 27;
    function CheckUnicodeSupport: WordBool; dispid 28;
    function CreateCall: IFunctionCall; dispid 30;
    function CreateType: IRfcType; dispid 31;
    property LicenseData: ILicenseData readonly dispid 40;
    procedure About; dispid 41;
    function ImportCall(const ModuleName: WideString; ignoreUnsupportedParams: WordBool): IFunctionCall; dispid 50;
    function GetTableReader(const tableName: WideString): ITableReader; dispid 51;
    function CreateTransID: WideString; dispid 52;
    procedure ConfirmTransID(const tid: WideString); dispid 53;
    procedure CallTRFCFunction(const tid: WideString; const fn: IFunctionCall); dispid 54;
  end;

// *********************************************************************//
// Interface: ILogonData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {22D219AB-CD9A-4047-958D-0555D9D4AB25}
// *********************************************************************//
  ILogonData = interface(IDispatch)
    ['{22D219AB-CD9A-4047-958D-0555D9D4AB25}']
    function Get_Client: WideString; safecall;
    procedure Set_Client(const pVal: WideString); safecall;
    function Get_User: WideString; safecall;
    procedure Set_User(const pVal: WideString); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const pVal: WideString); safecall;
    function Get_Language: WideString; safecall;
    procedure Set_Language(const pVal: WideString); safecall;
    function Get_SSO2Ticket: WideString; safecall;
    procedure Set_SSO2Ticket(const pVal: WideString); safecall;
    function Get_X509Cert: WideString; safecall;
    procedure Set_X509Cert(const pVal: WideString); safecall;
    function Get_ExtIdData: WideString; safecall;
    procedure Set_ExtIdData(const pVal: WideString); safecall;
    function Get_ExtIdType: WideString; safecall;
    procedure Set_ExtIdType(const pVal: WideString); safecall;
    function Get_Option(const name: WideString): WideString; safecall;
    procedure Set_Option(const name: WideString; const value: WideString); safecall;
    property Client: WideString read Get_Client write Set_Client;
    property User: WideString read Get_User write Set_User;
    property Password: WideString read Get_Password write Set_Password;
    property Language: WideString read Get_Language write Set_Language;
    property SSO2Ticket: WideString read Get_SSO2Ticket write Set_SSO2Ticket;
    property X509Cert: WideString read Get_X509Cert write Set_X509Cert;
    property ExtIdData: WideString read Get_ExtIdData write Set_ExtIdData;
    property ExtIdType: WideString read Get_ExtIdType write Set_ExtIdType;
    property Option[const name: WideString]: WideString read Get_Option write Set_Option;
  end;

// *********************************************************************//
// DispIntf:  ILogonDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {22D219AB-CD9A-4047-958D-0555D9D4AB25}
// *********************************************************************//
  ILogonDataDisp = dispinterface
    ['{22D219AB-CD9A-4047-958D-0555D9D4AB25}']
    property Client: WideString dispid 1;
    property User: WideString dispid 2;
    property Password: WideString dispid 3;
    property Language: WideString dispid 4;
    property SSO2Ticket: WideString dispid 5;
    property X509Cert: WideString dispid 6;
    property ExtIdData: WideString dispid 7;
    property ExtIdType: WideString dispid 8;
    property Option[const name: WideString]: WideString dispid 100;
  end;

// *********************************************************************//
// Interface: IRfcError
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {247D8252-9AFA-4E9D-B2CA-D072CF431A4B}
// *********************************************************************//
  IRfcError = interface(IDispatch)
    ['{247D8252-9AFA-4E9D-B2CA-D072CF431A4B}']
    function Get_ERRORGROUP: ERRORGROUP; safecall;
    procedure Set_ERRORGROUP(pVal: ERRORGROUP); safecall;
    function Get_ErrorGroupTxt: WideString; safecall;
    procedure Set_ErrorGroupTxt(const pVal: WideString); safecall;
    function Get_Message: WideString; safecall;
    procedure Set_Message(const pVal: WideString); safecall;
    function Get_ModuleName: WideString; safecall;
    procedure Set_ModuleName(const pVal: WideString); safecall;
    property ERRORGROUP: ERRORGROUP read Get_ERRORGROUP write Set_ERRORGROUP;
    property ErrorGroupTxt: WideString read Get_ErrorGroupTxt write Set_ErrorGroupTxt;
    property Message: WideString read Get_Message write Set_Message;
    property ModuleName: WideString read Get_ModuleName write Set_ModuleName;
  end;

// *********************************************************************//
// DispIntf:  IRfcErrorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {247D8252-9AFA-4E9D-B2CA-D072CF431A4B}
// *********************************************************************//
  IRfcErrorDisp = dispinterface
    ['{247D8252-9AFA-4E9D-B2CA-D072CF431A4B}']
    property ERRORGROUP: ERRORGROUP dispid 1;
    property ErrorGroupTxt: WideString dispid 2;
    property Message: WideString dispid 3;
    property ModuleName: WideString dispid 4;
  end;

// *********************************************************************//
// Interface: ITypeCache
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C79ADDF1-1BC1-4C9B-A523-23BAA3516349}
// *********************************************************************//
  ITypeCache = interface(IDispatch)
    ['{C79ADDF1-1BC1-4C9B-A523-23BAA3516349}']
    function GetType(const name: WideString): IRfcType; safecall;
    procedure AddType(const name: WideString; const type_: IRfcType); safecall;
    procedure Clear; safecall;
    function GetFunction(const name: WideString): IFunctionCall; safecall;
    procedure AddFunction(const name: WideString; const call: IFunctionCall); safecall;
    procedure SaveToXML(const filename: WideString); safecall;
    procedure LoadFromXML(const filename: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ITypeCacheDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C79ADDF1-1BC1-4C9B-A523-23BAA3516349}
// *********************************************************************//
  ITypeCacheDisp = dispinterface
    ['{C79ADDF1-1BC1-4C9B-A523-23BAA3516349}']
    function GetType(const name: WideString): IRfcType; dispid 1;
    procedure AddType(const name: WideString; const type_: IRfcType); dispid 2;
    procedure Clear; dispid 3;
    function GetFunction(const name: WideString): IFunctionCall; dispid 10;
    procedure AddFunction(const name: WideString; const call: IFunctionCall); dispid 11;
    procedure SaveToXML(const filename: WideString); dispid 12;
    procedure LoadFromXML(const filename: WideString); dispid 13;
  end;

// *********************************************************************//
// Interface: IRfcType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {836FB3D2-4432-42DF-91ED-08ECD87AEB8A}
// *********************************************************************//
  IRfcType = interface(IDispatch)
    ['{836FB3D2-4432-42DF-91ED-08ECD87AEB8A}']
    function Get_name: WideString; safecall;
    function Get_Kind: RFCTYPEKIND; safecall;
    function Get_ScalarType: ABAPTYPE; safecall;
    procedure Set_ScalarType(pVal: ABAPTYPE); safecall;
    function Get_ScalarLength: Smallint; safecall;
    procedure Set_ScalarLength(pVal: Smallint); safecall;
    function Get_ScalarDecimals: Smallint; safecall;
    procedure Set_ScalarDecimals(pVal: Smallint); safecall;
    function Get_StructOffset: Integer; safecall;
    procedure Set_StructOffset(pVal: Integer); safecall;
    function Get_StructLength: Integer; safecall;
    procedure Set_StructLength(pVal: Integer); safecall;
    function Get_StructFields: IRfcTypes; safecall;
    function Get_RowType: IRfcType; safecall;
    procedure DefineScalar(const name: WideString; ABAPTYPE: ABAPTYPE; length: Smallint; 
                           decimals: Smallint; StructOffset: Integer); safecall;
    procedure DefineStruct(const name: WideString); safecall;
    procedure DefineTable(const name: WideString; const tableType: IRfcType); safecall;
    procedure AddComplexStructField(const field: IRfcType); safecall;
    procedure AddScalarStructField(const name: WideString; ABAPTYPE: ABAPTYPE; length: Smallint; 
                                   decimals: Smallint; StructOffset: Integer; 
                                   structOffsetC1: Integer; StructLength: Integer; 
                                   structLengthC1: Integer); safecall;
    function Get_Tag: OleVariant; safecall;
    procedure Set_Tag(pVal: OleVariant); safecall;
    function Get_structOffsetC1: Integer; safecall;
    procedure Set_structOffsetC1(pVal: Integer); safecall;
    function Get_structLengthC1: Integer; safecall;
    procedure Set_structLengthC1(pVal: Integer); safecall;
    function GetInternalObj: OleVariant; safecall;
    property name: WideString read Get_name;
    property Kind: RFCTYPEKIND read Get_Kind;
    property ScalarType: ABAPTYPE read Get_ScalarType write Set_ScalarType;
    property ScalarLength: Smallint read Get_ScalarLength write Set_ScalarLength;
    property ScalarDecimals: Smallint read Get_ScalarDecimals write Set_ScalarDecimals;
    property StructOffset: Integer read Get_StructOffset write Set_StructOffset;
    property StructLength: Integer read Get_StructLength write Set_StructLength;
    property StructFields: IRfcTypes read Get_StructFields;
    property RowType: IRfcType read Get_RowType;
    property Tag: OleVariant read Get_Tag write Set_Tag;
    property structOffsetC1: Integer read Get_structOffsetC1 write Set_structOffsetC1;
    property structLengthC1: Integer read Get_structLengthC1 write Set_structLengthC1;
  end;

// *********************************************************************//
// DispIntf:  IRfcTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {836FB3D2-4432-42DF-91ED-08ECD87AEB8A}
// *********************************************************************//
  IRfcTypeDisp = dispinterface
    ['{836FB3D2-4432-42DF-91ED-08ECD87AEB8A}']
    property name: WideString readonly dispid 1;
    property Kind: RFCTYPEKIND readonly dispid 2;
    property ScalarType: ABAPTYPE dispid 3;
    property ScalarLength: Smallint dispid 4;
    property ScalarDecimals: Smallint dispid 5;
    property StructOffset: Integer dispid 6;
    property StructLength: Integer dispid 7;
    property StructFields: IRfcTypes readonly dispid 8;
    property RowType: IRfcType readonly dispid 9;
    procedure DefineScalar(const name: WideString; ABAPTYPE: ABAPTYPE; length: Smallint; 
                           decimals: Smallint; StructOffset: Integer); dispid 10;
    procedure DefineStruct(const name: WideString); dispid 11;
    procedure DefineTable(const name: WideString; const tableType: IRfcType); dispid 12;
    procedure AddComplexStructField(const field: IRfcType); dispid 13;
    procedure AddScalarStructField(const name: WideString; ABAPTYPE: ABAPTYPE; length: Smallint; 
                                   decimals: Smallint; StructOffset: Integer; 
                                   structOffsetC1: Integer; StructLength: Integer; 
                                   structLengthC1: Integer); dispid 14;
    property Tag: OleVariant dispid 20;
    property structOffsetC1: Integer dispid 21;
    property structLengthC1: Integer dispid 22;
    function GetInternalObj: OleVariant; dispid 23;
  end;

// *********************************************************************//
// Interface: IRfcTypes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B4B0CCC4-31A3-403B-9A23-9EBC74C1AD52}
// *********************************************************************//
  IRfcTypes = interface(IDispatch)
    ['{B4B0CCC4-31A3-403B-9A23-9EBC74C1AD52}']
    function Get_Count: Integer; safecall;
    procedure Add(const inItem: IRfcType); safecall;
    procedure Remove(inIndex: OleVariant); safecall;
    procedure RemoveAll; safecall;
    function HasKey(const key: WideString): WordBool; safecall;
    function Get_Item(inIndex: OleVariant): IRfcType; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[inIndex: OleVariant]: IRfcType read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IRfcTypesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B4B0CCC4-31A3-403B-9A23-9EBC74C1AD52}
// *********************************************************************//
  IRfcTypesDisp = dispinterface
    ['{B4B0CCC4-31A3-403B-9A23-9EBC74C1AD52}']
    property Count: Integer readonly dispid 1;
    procedure Add(const inItem: IRfcType); dispid 2;
    procedure Remove(inIndex: OleVariant); dispid 3;
    procedure RemoveAll; dispid 4;
    function HasKey(const key: WideString): WordBool; dispid 5;
    property Item[inIndex: OleVariant]: IRfcType readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: IFunctionCall
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {395F05EA-BEC2-4AF7-8B7E-23EA19B2EA6B}
// *********************************************************************//
  IFunctionCall = interface(IDispatch)
    ['{395F05EA-BEC2-4AF7-8B7E-23EA19B2EA6B}']
    function Get_Function_: WideString; safecall;
    procedure Set_Function_(const pVal: WideString); safecall;
    function Get_Importing: IRfcParameters; safecall;
    function Get_Exporting: IRfcParameters; safecall;
    function Get_Changing: IRfcParameters; safecall;
    function Get_Tables: IRfcParameters; safecall;
    function Get_Documentation: WideString; safecall;
    procedure Set_Documentation(const pVal: WideString); safecall;
    procedure RaiseException(const exception: WideString; const Message: WideString); safecall;
    procedure GetException(out exception: WideString; out Message: WideString); safecall;
    function ToXML: WideString; safecall;
    procedure FromXML(const xml: WideString); safecall;
    property Function_: WideString read Get_Function_ write Set_Function_;
    property Importing: IRfcParameters read Get_Importing;
    property Exporting: IRfcParameters read Get_Exporting;
    property Changing: IRfcParameters read Get_Changing;
    property Tables: IRfcParameters read Get_Tables;
    property Documentation: WideString read Get_Documentation write Set_Documentation;
  end;

// *********************************************************************//
// DispIntf:  IFunctionCallDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {395F05EA-BEC2-4AF7-8B7E-23EA19B2EA6B}
// *********************************************************************//
  IFunctionCallDisp = dispinterface
    ['{395F05EA-BEC2-4AF7-8B7E-23EA19B2EA6B}']
    property Function_: WideString dispid 1;
    property Importing: IRfcParameters readonly dispid 2;
    property Exporting: IRfcParameters readonly dispid 3;
    property Changing: IRfcParameters readonly dispid 4;
    property Tables: IRfcParameters readonly dispid 5;
    property Documentation: WideString dispid 6;
    procedure RaiseException(const exception: WideString; const Message: WideString); dispid 20;
    procedure GetException(out exception: WideString; out Message: WideString); dispid 21;
    function ToXML: WideString; dispid 23;
    procedure FromXML(const xml: WideString); dispid 24;
  end;

// *********************************************************************//
// Interface: IRfcParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A42BBD4-35DB-4051-B647-959D2C3962C7}
// *********************************************************************//
  IRfcParameters = interface(IDispatch)
    ['{4A42BBD4-35DB-4051-B647-959D2C3962C7}']
    function Get_Count: Integer; safecall;
    function HasKey(const key: WideString): WordBool; safecall;
    function Get_Item(inIndex: OleVariant): IRfcParameter; safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure AddScalar(const name: WideString; type_: ABAPTYPE; length: Smallint; 
                        decimals: Smallint; value: OleVariant); safecall;
    procedure AddParameter(const name: WideString; const type_: IRfcType); safecall;
    procedure AddTable(const name: WideString; const RowType: IRfcType); safecall;
    procedure RemoveParameter(const name: WideString); safecall;
    property Count: Integer read Get_Count;
    property Item[inIndex: OleVariant]: IRfcParameter read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IRfcParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A42BBD4-35DB-4051-B647-959D2C3962C7}
// *********************************************************************//
  IRfcParametersDisp = dispinterface
    ['{4A42BBD4-35DB-4051-B647-959D2C3962C7}']
    property Count: Integer readonly dispid 1;
    function HasKey(const key: WideString): WordBool; dispid 2;
    property Item[inIndex: OleVariant]: IRfcParameter readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure AddScalar(const name: WideString; type_: ABAPTYPE; length: Smallint; 
                        decimals: Smallint; value: OleVariant); dispid 6;
    procedure AddParameter(const name: WideString; const type_: IRfcType); dispid 7;
    procedure AddTable(const name: WideString; const RowType: IRfcType); dispid 8;
    procedure RemoveParameter(const name: WideString); dispid 20;
  end;

// *********************************************************************//
// Interface: IRfcParameter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {188D443E-3177-486A-AE85-AC5C9E952864}
// *********************************************************************//
  IRfcParameter = interface(IDispatch)
    ['{188D443E-3177-486A-AE85-AC5C9E952864}']
    function Get_name: WideString; safecall;
    function Get_RfcType: IRfcType; safecall;
    function Get_value: OleVariant; safecall;
    procedure Set_value(pVal: OleVariant); safecall;
    function Get_Fields: IRfcFields; safecall;
    function Get_Rows: IRfcRows; safecall;
    procedure DefineScalar(const name: WideString; type_: ABAPTYPE; length: Smallint; 
                           decimals: Smallint; value: OleVariant); safecall;
    procedure Define(const name: WideString; const type_: IRfcType); safecall;
    function get_InternalType: Integer; safecall;
    function get_InternalField: IRfcField; safecall;
    function Get_Optional: WordBool; safecall;
    procedure Set_Optional(pVal: WordBool); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    function Get_DefaultValue: WideString; safecall;
    procedure Set_DefaultValue(const pVal: WideString); safecall;
    function get_IsEmpty: WordBool; safecall;
    function Get_IsRequested: WordBool; safecall;
    procedure Set_IsRequested(pVal: WordBool); safecall;
    property name: WideString read Get_name;
    property RfcType: IRfcType read Get_RfcType;
    property value: OleVariant read Get_value write Set_value;
    property Fields: IRfcFields read Get_Fields;
    property Rows: IRfcRows read Get_Rows;
    property Optional: WordBool read Get_Optional write Set_Optional;
    property Description: WideString read Get_Description write Set_Description;
    property DefaultValue: WideString read Get_DefaultValue write Set_DefaultValue;
    property IsRequested: WordBool read Get_IsRequested write Set_IsRequested;
  end;

// *********************************************************************//
// DispIntf:  IRfcParameterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {188D443E-3177-486A-AE85-AC5C9E952864}
// *********************************************************************//
  IRfcParameterDisp = dispinterface
    ['{188D443E-3177-486A-AE85-AC5C9E952864}']
    property name: WideString readonly dispid 1;
    property RfcType: IRfcType readonly dispid 2;
    property value: OleVariant dispid 0;
    property Fields: IRfcFields readonly dispid 3;
    property Rows: IRfcRows readonly dispid 4;
    procedure DefineScalar(const name: WideString; type_: ABAPTYPE; length: Smallint; 
                           decimals: Smallint; value: OleVariant); dispid 5;
    procedure Define(const name: WideString; const type_: IRfcType); dispid 6;
    function get_InternalType: Integer; dispid 7;
    function get_InternalField: IRfcField; dispid 8;
    property Optional: WordBool dispid 20;
    property Description: WideString dispid 21;
    property DefaultValue: WideString dispid 22;
    function get_IsEmpty: WordBool; dispid 23;
    property IsRequested: WordBool dispid 24;
  end;

// *********************************************************************//
// Interface: IRfcFields
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {79D69B86-F48C-4B5D-BDD6-9BC64A8EC625}
// *********************************************************************//
  IRfcFields = interface(IDispatch)
    ['{79D69B86-F48C-4B5D-BDD6-9BC64A8EC625}']
    function Get_Count: Integer; safecall;
    function HasKey(const key: WideString): WordBool; safecall;
    function Get_Item(inIndex: OleVariant): IRfcField; safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure AddField(const field: IRfcField); safecall;
    property Count: Integer read Get_Count;
    property Item[inIndex: OleVariant]: IRfcField read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IRfcFieldsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {79D69B86-F48C-4B5D-BDD6-9BC64A8EC625}
// *********************************************************************//
  IRfcFieldsDisp = dispinterface
    ['{79D69B86-F48C-4B5D-BDD6-9BC64A8EC625}']
    property Count: Integer readonly dispid 1;
    function HasKey(const key: WideString): WordBool; dispid 2;
    property Item[inIndex: OleVariant]: IRfcField readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure AddField(const field: IRfcField); dispid 6;
  end;

// *********************************************************************//
// Interface: IRfcField
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D969726-1A17-41F0-A77B-E41B3A738F86}
// *********************************************************************//
  IRfcField = interface(IDispatch)
    ['{7D969726-1A17-41F0-A77B-E41B3A738F86}']
    function Get_name: WideString; safecall;
    procedure Set_name(const pVal: WideString); safecall;
    function Get_RfcType: IRfcType; safecall;
    procedure Set_RfcType(const pVal: IRfcType); safecall;
    function Get_value: OleVariant; safecall;
    procedure Set_value(pVal: OleVariant); safecall;
    function Get_Fields: IRfcFields; safecall;
    function Get_Rows: IRfcRows; safecall;
    function get_InternalType: Integer; safecall;
    function get_IsEmpty: WordBool; safecall;
    property name: WideString read Get_name write Set_name;
    property RfcType: IRfcType read Get_RfcType write Set_RfcType;
    property value: OleVariant read Get_value write Set_value;
    property Fields: IRfcFields read Get_Fields;
    property Rows: IRfcRows read Get_Rows;
  end;

// *********************************************************************//
// DispIntf:  IRfcFieldDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D969726-1A17-41F0-A77B-E41B3A738F86}
// *********************************************************************//
  IRfcFieldDisp = dispinterface
    ['{7D969726-1A17-41F0-A77B-E41B3A738F86}']
    property name: WideString dispid 1;
    property RfcType: IRfcType dispid 2;
    property value: OleVariant dispid 0;
    property Fields: IRfcFields readonly dispid 3;
    property Rows: IRfcRows readonly dispid 4;
    function get_InternalType: Integer; dispid 6;
    function get_IsEmpty: WordBool; dispid 10;
  end;

// *********************************************************************//
// Interface: IRfcRows
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BCEE9AF6-0A96-4F67-9524-AA7E2271794D}
// *********************************************************************//
  IRfcRows = interface(IDispatch)
    ['{BCEE9AF6-0A96-4F67-9524-AA7E2271794D}']
    function Get_Count: Integer; safecall;
    function Get_Item(inIndex: Integer): IRfcFields; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_FileMode: WordBool; safecall;
    function Get_DataCol: Smallint; safecall;
    function Get_IndexCol: Smallint; safecall;
    function Get_RfcType: IRfcType; safecall;
    procedure AddRows(Count: Integer); safecall;
    function AddRow: IRfcFields; safecall;
    procedure SetFileMode(DataCol: Smallint; IndexCol: Smallint); safecall;
    procedure RemoveAll; safecall;
    procedure put_RfcType(const type_: IRfcType); safecall;
    property Count: Integer read Get_Count;
    property Item[inIndex: Integer]: IRfcFields read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property FileMode: WordBool read Get_FileMode;
    property DataCol: Smallint read Get_DataCol;
    property IndexCol: Smallint read Get_IndexCol;
    property RfcType: IRfcType read Get_RfcType;
  end;

// *********************************************************************//
// DispIntf:  IRfcRowsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BCEE9AF6-0A96-4F67-9524-AA7E2271794D}
// *********************************************************************//
  IRfcRowsDisp = dispinterface
    ['{BCEE9AF6-0A96-4F67-9524-AA7E2271794D}']
    property Count: Integer readonly dispid 1;
    property Item[inIndex: Integer]: IRfcFields readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property FileMode: WordBool readonly dispid 6;
    property DataCol: Smallint readonly dispid 7;
    property IndexCol: Smallint readonly dispid 8;
    property RfcType: IRfcType readonly dispid 9;
    procedure AddRows(Count: Integer); dispid 10;
    function AddRow: IRfcFields; dispid 11;
    procedure SetFileMode(DataCol: Smallint; IndexCol: Smallint); dispid 12;
    procedure RemoveAll; dispid 13;
    procedure put_RfcType(const type_: IRfcType); dispid 14;
  end;

// *********************************************************************//
// Interface: ILicenseData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {11D044B1-6668-45DD-9D39-8EA7751FE29A}
// *********************************************************************//
  ILicenseData = interface(IDispatch)
    ['{11D044B1-6668-45DD-9D39-8EA7751FE29A}']
    function Get_Owner: WideString; safecall;
    procedure Set_Owner(const pVal: WideString); safecall;
    function Get_key: WideString; safecall;
    procedure Set_key(const pVal: WideString); safecall;
    function IsValidLicense: WordBool; safecall;
    procedure CheckLicense; safecall;
    property Owner: WideString read Get_Owner write Set_Owner;
    property key: WideString read Get_key write Set_key;
  end;

// *********************************************************************//
// DispIntf:  ILicenseDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {11D044B1-6668-45DD-9D39-8EA7751FE29A}
// *********************************************************************//
  ILicenseDataDisp = dispinterface
    ['{11D044B1-6668-45DD-9D39-8EA7751FE29A}']
    property Owner: WideString dispid 1;
    property key: WideString dispid 2;
    function IsValidLicense: WordBool; dispid 10;
    procedure CheckLicense; dispid 20;
  end;

// *********************************************************************//
// Interface: ITableReader
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D347768E-78F6-447D-AE7F-C9E94657A240}
// *********************************************************************//
  ITableReader = interface(IDispatch)
    ['{D347768E-78F6-447D-AE7F-C9E94657A240}']
    function Get_Session: ISession; safecall;
    function Get_Table: WideString; safecall;
    procedure Set_Table(const pVal: WideString); safecall;
    function Get_Query: IStringList; safecall;
    function Get_Fields: IStringList; safecall;
    function Get_Rows: IRfcRows; safecall;
    function Get_Error: WordBool; safecall;
    function Get_ErrorInfo: IRfcError; safecall;
    function Get_Option(const name: WideString): WideString; safecall;
    procedure Set_Option(const name: WideString; const value: WideString); safecall;
    procedure Read(Count: Integer; startAt: Integer); safecall;
    property Session: ISession read Get_Session;
    property Table: WideString read Get_Table write Set_Table;
    property Query: IStringList read Get_Query;
    property Fields: IStringList read Get_Fields;
    property Rows: IRfcRows read Get_Rows;
    property Error: WordBool read Get_Error;
    property ErrorInfo: IRfcError read Get_ErrorInfo;
    property Option[const name: WideString]: WideString read Get_Option write Set_Option;
  end;

// *********************************************************************//
// DispIntf:  ITableReaderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D347768E-78F6-447D-AE7F-C9E94657A240}
// *********************************************************************//
  ITableReaderDisp = dispinterface
    ['{D347768E-78F6-447D-AE7F-C9E94657A240}']
    property Session: ISession readonly dispid 1;
    property Table: WideString dispid 2;
    property Query: IStringList readonly dispid 3;
    property Fields: IStringList readonly dispid 4;
    property Rows: IRfcRows readonly dispid 5;
    property Error: WordBool readonly dispid 6;
    property ErrorInfo: IRfcError readonly dispid 7;
    property Option[const name: WideString]: WideString dispid 9;
    procedure Read(Count: Integer; startAt: Integer); dispid 10;
  end;

// *********************************************************************//
// Interface: IStringList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A348B9F8-E962-4E4D-8CB9-F89C7DF3665F}
// *********************************************************************//
  IStringList = interface(IDispatch)
    ['{A348B9F8-E962-4E4D-8CB9-F89C7DF3665F}']
    function Get_Count: Integer; safecall;
    procedure Add(const Item: WideString); safecall;
    procedure Remove(index: Integer); safecall;
    procedure RemoveAll; safecall;
    function IndexOf(const Item: WideString): Integer; safecall;
    function Get_Item(index: Integer): WideString; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[index: Integer]: WideString read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IStringListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A348B9F8-E962-4E4D-8CB9-F89C7DF3665F}
// *********************************************************************//
  IStringListDisp = dispinterface
    ['{A348B9F8-E962-4E4D-8CB9-F89C7DF3665F}']
    property Count: Integer readonly dispid 1;
    procedure Add(const Item: WideString); dispid 2;
    procedure Remove(index: Integer); dispid 3;
    procedure RemoveAll; dispid 4;
    function IndexOf(const Item: WideString): Integer; dispid 5;
    property Item[index: Integer]: WideString readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// DispIntf:  _SessionEvents
// Flags:     (4096) Dispatchable
// GUID:      {BC0163AC-4FF4-474E-8421-BCF335CB7D2F}
// *********************************************************************//
  _SessionEvents = dispinterface
    ['{BC0163AC-4FF4-474E-8421-BCF335CB7D2F}']
    procedure CallFinished; dispid 1;
  end;

// *********************************************************************//
// Interface: IRfcSession
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA0458AF-15AC-4A0F-96BD-F3DA83CD38ED}
// *********************************************************************//
  IRfcSession = interface(ISession)
    ['{CA0458AF-15AC-4A0F-96BD-F3DA83CD38ED}']
    function Get_RfcSystemData: IRfcSystemData; safecall;
    function GetSSO2Ticket: WideString; safecall;
    property RfcSystemData: IRfcSystemData read Get_RfcSystemData;
  end;

// *********************************************************************//
// DispIntf:  IRfcSessionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA0458AF-15AC-4A0F-96BD-F3DA83CD38ED}
// *********************************************************************//
  IRfcSessionDisp = dispinterface
    ['{CA0458AF-15AC-4A0F-96BD-F3DA83CD38ED}']
    property RfcSystemData: IRfcSystemData readonly dispid 100;
    function GetSSO2Ticket: WideString; dispid 200;
    property SystemID: WideString dispid 1;
    property LogonData: ILogonData readonly dispid 2;
    property ErrorInfo: IRfcError readonly dispid 3;
    property IsConnected: WordBool readonly dispid 4;
    property Error: WordBool readonly dispid 5;
    property CallActive: WordBool readonly dispid 6;
    property SessionType: WideString readonly dispid 10;
    property Option[const name: WideString]: WideString dispid 11;
    property TypeCache: ITypeCache dispid 12;
    procedure Connect; dispid 20;
    procedure Disconnect; dispid 21;
    procedure CallFunction(const call: IFunctionCall; synchronous: WordBool); dispid 22;
    procedure AbortCall; dispid 23;
    function DecodeInternalError(errcode: Integer): WideString; dispid 24;
    function ImportType(const type_: WideString): IRfcType; dispid 25;
    function CheckPasswordExpired: WordBool; dispid 26;
    procedure ChangePassword(const newPassword: WideString); dispid 27;
    function CheckUnicodeSupport: WordBool; dispid 28;
    function CreateCall: IFunctionCall; dispid 30;
    function CreateType: IRfcType; dispid 31;
    property LicenseData: ILicenseData readonly dispid 40;
    procedure About; dispid 41;
    function ImportCall(const ModuleName: WideString; ignoreUnsupportedParams: WordBool): IFunctionCall; dispid 50;
    function GetTableReader(const tableName: WideString): ITableReader; dispid 51;
    function CreateTransID: WideString; dispid 52;
    procedure ConfirmTransID(const tid: WideString); dispid 53;
    procedure CallTRFCFunction(const tid: WideString; const fn: IFunctionCall); dispid 54;
  end;

// *********************************************************************//
// Interface: IRfcSystemData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FD55CB6-E513-47DE-B65B-A86A977B4D2F}
// *********************************************************************//
  IRfcSystemData = interface(IDispatch)
    ['{5FD55CB6-E513-47DE-B65B-A86A977B4D2F}']
    function Get_ConnectString: WideString; safecall;
    procedure Set_ConnectString(const pVal: WideString); safecall;
    function Get_VisualMode: Smallint; safecall;
    procedure Set_VisualMode(pVal: Smallint); safecall;
    function Get_Debug: WordBool; safecall;
    procedure Set_Debug(pVal: WordBool); safecall;
    property ConnectString: WideString read Get_ConnectString write Set_ConnectString;
    property VisualMode: Smallint read Get_VisualMode write Set_VisualMode;
    property Debug: WordBool read Get_Debug write Set_Debug;
  end;

// *********************************************************************//
// DispIntf:  IRfcSystemDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FD55CB6-E513-47DE-B65B-A86A977B4D2F}
// *********************************************************************//
  IRfcSystemDataDisp = dispinterface
    ['{5FD55CB6-E513-47DE-B65B-A86A977B4D2F}']
    property ConnectString: WideString dispid 1;
    property VisualMode: Smallint dispid 2;
    property Debug: WordBool dispid 3;
  end;

// *********************************************************************//
// Interface: ISoapSession
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {910234E5-DF57-4224-8810-1216903E88C0}
// *********************************************************************//
  ISoapSession = interface(ISession)
    ['{910234E5-DF57-4224-8810-1216903E88C0}']
    function Get_HttpSystemData: IHttpSystemData; safecall;
    property HttpSystemData: IHttpSystemData read Get_HttpSystemData;
  end;

// *********************************************************************//
// DispIntf:  ISoapSessionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {910234E5-DF57-4224-8810-1216903E88C0}
// *********************************************************************//
  ISoapSessionDisp = dispinterface
    ['{910234E5-DF57-4224-8810-1216903E88C0}']
    property HttpSystemData: IHttpSystemData readonly dispid 100;
    property SystemID: WideString dispid 1;
    property LogonData: ILogonData readonly dispid 2;
    property ErrorInfo: IRfcError readonly dispid 3;
    property IsConnected: WordBool readonly dispid 4;
    property Error: WordBool readonly dispid 5;
    property CallActive: WordBool readonly dispid 6;
    property SessionType: WideString readonly dispid 10;
    property Option[const name: WideString]: WideString dispid 11;
    property TypeCache: ITypeCache dispid 12;
    procedure Connect; dispid 20;
    procedure Disconnect; dispid 21;
    procedure CallFunction(const call: IFunctionCall; synchronous: WordBool); dispid 22;
    procedure AbortCall; dispid 23;
    function DecodeInternalError(errcode: Integer): WideString; dispid 24;
    function ImportType(const type_: WideString): IRfcType; dispid 25;
    function CheckPasswordExpired: WordBool; dispid 26;
    procedure ChangePassword(const newPassword: WideString); dispid 27;
    function CheckUnicodeSupport: WordBool; dispid 28;
    function CreateCall: IFunctionCall; dispid 30;
    function CreateType: IRfcType; dispid 31;
    property LicenseData: ILicenseData readonly dispid 40;
    procedure About; dispid 41;
    function ImportCall(const ModuleName: WideString; ignoreUnsupportedParams: WordBool): IFunctionCall; dispid 50;
    function GetTableReader(const tableName: WideString): ITableReader; dispid 51;
    function CreateTransID: WideString; dispid 52;
    procedure ConfirmTransID(const tid: WideString); dispid 53;
    procedure CallTRFCFunction(const tid: WideString; const fn: IFunctionCall); dispid 54;
  end;

// *********************************************************************//
// Interface: IHttpSystemData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D0382C29-40CA-4D7A-905C-9AC68A1E7873}
// *********************************************************************//
  IHttpSystemData = interface(IDispatch)
    ['{D0382C29-40CA-4D7A-905C-9AC68A1E7873}']
    function Get_Protocol: WideString; safecall;
    procedure Set_Protocol(const pVal: WideString); safecall;
    function Get_Host: WideString; safecall;
    procedure Set_Host(const pVal: WideString); safecall;
    function Get_Port: Integer; safecall;
    procedure Set_Port(pVal: Integer); safecall;
    function Get_SoapEndpoint: WideString; safecall;
    procedure Set_SoapEndpoint(const pVal: WideString); safecall;
    function Get_Timeout: Integer; safecall;
    procedure Set_Timeout(pVal: Integer); safecall;
    function Get_ProxyHost: WideString; safecall;
    procedure Set_ProxyHost(const pVal: WideString); safecall;
    function Get_ProxyPort: Integer; safecall;
    procedure Set_ProxyPort(pVal: Integer); safecall;
    function Get_ProxyUser: WideString; safecall;
    procedure Set_ProxyUser(const pVal: WideString); safecall;
    function Get_ProxyPassword: WideString; safecall;
    procedure Set_ProxyPassword(const pVal: WideString); safecall;
    function Get_Stateful: WordBool; safecall;
    procedure Set_Stateful(pVal: WordBool); safecall;
    property Protocol: WideString read Get_Protocol write Set_Protocol;
    property Host: WideString read Get_Host write Set_Host;
    property Port: Integer read Get_Port write Set_Port;
    property SoapEndpoint: WideString read Get_SoapEndpoint write Set_SoapEndpoint;
    property Timeout: Integer read Get_Timeout write Set_Timeout;
    property ProxyHost: WideString read Get_ProxyHost write Set_ProxyHost;
    property ProxyPort: Integer read Get_ProxyPort write Set_ProxyPort;
    property ProxyUser: WideString read Get_ProxyUser write Set_ProxyUser;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property Stateful: WordBool read Get_Stateful write Set_Stateful;
  end;

// *********************************************************************//
// DispIntf:  IHttpSystemDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D0382C29-40CA-4D7A-905C-9AC68A1E7873}
// *********************************************************************//
  IHttpSystemDataDisp = dispinterface
    ['{D0382C29-40CA-4D7A-905C-9AC68A1E7873}']
    property Protocol: WideString dispid 1;
    property Host: WideString dispid 2;
    property Port: Integer dispid 3;
    property SoapEndpoint: WideString dispid 4;
    property Timeout: Integer dispid 5;
    property ProxyHost: WideString dispid 6;
    property ProxyPort: Integer dispid 7;
    property ProxyUser: WideString dispid 8;
    property ProxyPassword: WideString dispid 9;
    property Stateful: WordBool dispid 10;
  end;

// *********************************************************************//
// Interface: IFunctionCalls
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {103F840C-0FAD-4C0D-9799-517A2BDB6E61}
// *********************************************************************//
  IFunctionCalls = interface(IDispatch)
    ['{103F840C-0FAD-4C0D-9799-517A2BDB6E61}']
    function Get_Count: Integer; safecall;
    function HasKey(const key: WideString): WordBool; safecall;
    function Get_Item(inIndex: OleVariant): IFunctionCall; safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure AddFunction(const fn: IFunctionCall); safecall;
    property Count: Integer read Get_Count;
    property Item[inIndex: OleVariant]: IFunctionCall read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IFunctionCallsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {103F840C-0FAD-4C0D-9799-517A2BDB6E61}
// *********************************************************************//
  IFunctionCallsDisp = dispinterface
    ['{103F840C-0FAD-4C0D-9799-517A2BDB6E61}']
    property Count: Integer readonly dispid 1;
    function HasKey(const key: WideString): WordBool; dispid 2;
    property Item[inIndex: OleVariant]: IFunctionCall readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure AddFunction(const fn: IFunctionCall); dispid 6;
  end;

// *********************************************************************//
// Interface: IBSPApplication
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D150756-7E3C-4515-B62D-5B5D127187CF}
// *********************************************************************//
  IBSPApplication = interface(IDispatch)
    ['{7D150756-7E3C-4515-B62D-5B5D127187CF}']
    function Get_HttpSystemData: IHttpSystemData; safecall;
    function Get_LogonData: ILogonData; safecall;
    function Get_Window: IWindowProperties; safecall;
    function Get_Parameters: IBSPParameters; safecall;
    function Get_Option(const name: WideString): WideString; safecall;
    procedure Set_Option(const name: WideString; const value: WideString); safecall;
    procedure ShowApplication(const application: WideString; const exitPage: WideString); safecall;
    function Get_LicenseData: ILicenseData; safecall;
    procedure About; safecall;
    property HttpSystemData: IHttpSystemData read Get_HttpSystemData;
    property LogonData: ILogonData read Get_LogonData;
    property Window: IWindowProperties read Get_Window;
    property Parameters: IBSPParameters read Get_Parameters;
    property Option[const name: WideString]: WideString read Get_Option write Set_Option;
    property LicenseData: ILicenseData read Get_LicenseData;
  end;

// *********************************************************************//
// DispIntf:  IBSPApplicationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D150756-7E3C-4515-B62D-5B5D127187CF}
// *********************************************************************//
  IBSPApplicationDisp = dispinterface
    ['{7D150756-7E3C-4515-B62D-5B5D127187CF}']
    property HttpSystemData: IHttpSystemData readonly dispid 1;
    property LogonData: ILogonData readonly dispid 2;
    property Window: IWindowProperties readonly dispid 3;
    property Parameters: IBSPParameters readonly dispid 4;
    property Option[const name: WideString]: WideString dispid 11;
    procedure ShowApplication(const application: WideString; const exitPage: WideString); dispid 20;
    property LicenseData: ILicenseData readonly dispid 40;
    procedure About; dispid 41;
  end;

// *********************************************************************//
// Interface: IWindowProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {56D2F6D3-1AA2-4295-B65B-0D4A95CB8222}
// *********************************************************************//
  IWindowProperties = interface(IDispatch)
    ['{56D2F6D3-1AA2-4295-B65B-0D4A95CB8222}']
    function Get_Left: Integer; safecall;
    procedure Set_Left(pVal: Integer); safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(pVal: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(pVal: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(pVal: Integer); safecall;
    function Get_Title: WideString; safecall;
    procedure Set_Title(const pVal: WideString); safecall;
    function Get_IconPath: WideString; safecall;
    procedure Set_IconPath(const pVal: WideString); safecall;
    function Get_CloseWarning: WideString; safecall;
    procedure Set_CloseWarning(const pVal: WideString); safecall;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property Height: Integer read Get_Height write Set_Height;
    property Width: Integer read Get_Width write Set_Width;
    property Title: WideString read Get_Title write Set_Title;
    property IconPath: WideString read Get_IconPath write Set_IconPath;
    property CloseWarning: WideString read Get_CloseWarning write Set_CloseWarning;
  end;

// *********************************************************************//
// DispIntf:  IWindowPropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {56D2F6D3-1AA2-4295-B65B-0D4A95CB8222}
// *********************************************************************//
  IWindowPropertiesDisp = dispinterface
    ['{56D2F6D3-1AA2-4295-B65B-0D4A95CB8222}']
    property Left: Integer dispid 1;
    property Top: Integer dispid 2;
    property Height: Integer dispid 3;
    property Width: Integer dispid 4;
    property Title: WideString dispid 5;
    property IconPath: WideString dispid 6;
    property CloseWarning: WideString dispid 7;
  end;

// *********************************************************************//
// Interface: IBSPParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8B785C44-1BFB-46B4-92BA-2DE2FDE2B673}
// *********************************************************************//
  IBSPParameters = interface(IDispatch)
    ['{8B785C44-1BFB-46B4-92BA-2DE2FDE2B673}']
    function Get_Count: Integer; safecall;
    procedure Add(const inItem: IBSPParameter); safecall;
    procedure Remove(inIndex: OleVariant); safecall;
    procedure RemoveAll; safecall;
    function HasKey(const key: WideString): WordBool; safecall;
    function Get_Item(inIndex: OleVariant): IBSPParameter; safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure AddParameter(const name: WideString; const value: WideString); safecall;
    property Count: Integer read Get_Count;
    property Item[inIndex: OleVariant]: IBSPParameter read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IBSPParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8B785C44-1BFB-46B4-92BA-2DE2FDE2B673}
// *********************************************************************//
  IBSPParametersDisp = dispinterface
    ['{8B785C44-1BFB-46B4-92BA-2DE2FDE2B673}']
    property Count: Integer readonly dispid 1;
    procedure Add(const inItem: IBSPParameter); dispid 2;
    procedure Remove(inIndex: OleVariant); dispid 3;
    procedure RemoveAll; dispid 4;
    function HasKey(const key: WideString): WordBool; dispid 5;
    property Item[inIndex: OleVariant]: IBSPParameter readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure AddParameter(const name: WideString; const value: WideString); dispid 19;
  end;

// *********************************************************************//
// Interface: IBSPParameter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A38FDDA-304B-49B7-9507-16A7F062EA78}
// *********************************************************************//
  IBSPParameter = interface(IDispatch)
    ['{4A38FDDA-304B-49B7-9507-16A7F062EA78}']
    function Get_name: WideString; safecall;
    procedure Set_name(const pVal: WideString); safecall;
    function Get_value: WideString; safecall;
    procedure Set_value(const pVal: WideString); safecall;
    property name: WideString read Get_name write Set_name;
    property value: WideString read Get_value write Set_value;
  end;

// *********************************************************************//
// DispIntf:  IBSPParameterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A38FDDA-304B-49B7-9507-16A7F062EA78}
// *********************************************************************//
  IBSPParameterDisp = dispinterface
    ['{4A38FDDA-304B-49B7-9507-16A7F062EA78}']
    property name: WideString dispid 1;
    property value: WideString dispid 0;
  end;

// *********************************************************************//
// Interface: IRfcServer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E735E5AA-795F-4628-90B3-5C03F233AD77}
// *********************************************************************//
  IRfcServer = interface(IDispatch)
    ['{E735E5AA-795F-4628-90B3-5C03F233AD77}']
    function Get_ErrorInfo: IRfcServerErrorInfo; safecall;
    function Get_LicenseData: ILicenseData; safecall;
    function Get_RegisteredFunctions: IFunctionCalls; safecall;
    function Get_IsListening: WordBool; safecall;
    function Get_Error: WordBool; safecall;
    function Get_ProgramID: WideString; safecall;
    procedure Set_ProgramID(const pVal: WideString); safecall;
    function Get_GatewayHost: WideString; safecall;
    procedure Set_GatewayHost(const pVal: WideString); safecall;
    function Get_GatewayService: WideString; safecall;
    procedure Set_GatewayService(const pVal: WideString); safecall;
    function Get_Option(const name: WideString): WideString; safecall;
    procedure Set_Option(const name: WideString; const value: WideString); safecall;
    procedure Serve; safecall;
    procedure Shutdown; safecall;
    procedure InstallFunction(const fn: IFunctionCall); safecall;
    property ErrorInfo: IRfcServerErrorInfo read Get_ErrorInfo;
    property LicenseData: ILicenseData read Get_LicenseData;
    property RegisteredFunctions: IFunctionCalls read Get_RegisteredFunctions;
    property IsListening: WordBool read Get_IsListening;
    property Error: WordBool read Get_Error;
    property ProgramID: WideString read Get_ProgramID write Set_ProgramID;
    property GatewayHost: WideString read Get_GatewayHost write Set_GatewayHost;
    property GatewayService: WideString read Get_GatewayService write Set_GatewayService;
    property Option[const name: WideString]: WideString read Get_Option write Set_Option;
  end;

// *********************************************************************//
// DispIntf:  IRfcServerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E735E5AA-795F-4628-90B3-5C03F233AD77}
// *********************************************************************//
  IRfcServerDisp = dispinterface
    ['{E735E5AA-795F-4628-90B3-5C03F233AD77}']
    property ErrorInfo: IRfcServerErrorInfo readonly dispid 1;
    property LicenseData: ILicenseData readonly dispid 2;
    property RegisteredFunctions: IFunctionCalls readonly dispid 3;
    property IsListening: WordBool readonly dispid 4;
    property Error: WordBool readonly dispid 5;
    property ProgramID: WideString dispid 6;
    property GatewayHost: WideString dispid 7;
    property GatewayService: WideString dispid 8;
    property Option[const name: WideString]: WideString dispid 9;
    procedure Serve; dispid 20;
    procedure Shutdown; dispid 21;
    procedure InstallFunction(const fn: IFunctionCall); dispid 22;
  end;

// *********************************************************************//
// Interface: IRfcServerErrorInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FC290B06-00CA-4944-A6F9-409181B4EB55}
// *********************************************************************//
  IRfcServerErrorInfo = interface(IDispatch)
    ['{FC290B06-00CA-4944-A6F9-409181B4EB55}']
    function Get_ERRORGROUP: ERRORGROUP; safecall;
    procedure Set_ERRORGROUP(pVal: ERRORGROUP); safecall;
    function Get_ErrorGroupTxt: WideString; safecall;
    function Get_Message: WideString; safecall;
    function Get_RfcRc: Integer; safecall;
    procedure SetErrorInfo(ERRORGROUP: ERRORGROUP; const ErrorGroupTxt: WideString; 
                           const Message: WideString; RfcRc: Integer); safecall;
    function Get_Restart: WordBool; safecall;
    procedure Set_Restart(pVal: WordBool); safecall;
    property ERRORGROUP: ERRORGROUP read Get_ERRORGROUP write Set_ERRORGROUP;
    property ErrorGroupTxt: WideString read Get_ErrorGroupTxt;
    property Message: WideString read Get_Message;
    property RfcRc: Integer read Get_RfcRc;
    property Restart: WordBool read Get_Restart write Set_Restart;
  end;

// *********************************************************************//
// DispIntf:  IRfcServerErrorInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FC290B06-00CA-4944-A6F9-409181B4EB55}
// *********************************************************************//
  IRfcServerErrorInfoDisp = dispinterface
    ['{FC290B06-00CA-4944-A6F9-409181B4EB55}']
    property ERRORGROUP: ERRORGROUP dispid 1;
    property ErrorGroupTxt: WideString readonly dispid 2;
    property Message: WideString readonly dispid 3;
    property RfcRc: Integer readonly dispid 4;
    procedure SetErrorInfo(ERRORGROUP: ERRORGROUP; const ErrorGroupTxt: WideString; 
                           const Message: WideString; RfcRc: Integer); dispid 10;
    property Restart: WordBool dispid 20;
  end;

// *********************************************************************//
// Interface: IRfcServerLogonInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {16F79B0C-052B-4714-9A6B-582AFC02231E}
// *********************************************************************//
  IRfcServerLogonInfo = interface(IDispatch)
    ['{16F79B0C-052B-4714-9A6B-582AFC02231E}']
    function Get_Function_: WideString; safecall;
    function Get_Client: WideString; safecall;
    function Get_User: WideString; safecall;
    function Get_Language: WideString; safecall;
    function Get_TCode: WideString; safecall;
    function Get_SNCEnabled: WordBool; safecall;
    function Get_SNCPartnerName: WideString; safecall;
    procedure SetLogonInfo(const Function_: WideString; const Client: WideString; 
                           const User: WideString; const Language: WideString; 
                           const TCode: WideString; SNCEnabled: WordBool; 
                           const SNCPartnerName: WideString); safecall;
    function Get_RequestAllowed: WordBool; safecall;
    procedure Set_RequestAllowed(pVal: WordBool); safecall;
    property Function_: WideString read Get_Function_;
    property Client: WideString read Get_Client;
    property User: WideString read Get_User;
    property Language: WideString read Get_Language;
    property TCode: WideString read Get_TCode;
    property SNCEnabled: WordBool read Get_SNCEnabled;
    property SNCPartnerName: WideString read Get_SNCPartnerName;
    property RequestAllowed: WordBool read Get_RequestAllowed write Set_RequestAllowed;
  end;

// *********************************************************************//
// DispIntf:  IRfcServerLogonInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {16F79B0C-052B-4714-9A6B-582AFC02231E}
// *********************************************************************//
  IRfcServerLogonInfoDisp = dispinterface
    ['{16F79B0C-052B-4714-9A6B-582AFC02231E}']
    property Function_: WideString readonly dispid 1;
    property Client: WideString readonly dispid 2;
    property User: WideString readonly dispid 3;
    property Language: WideString readonly dispid 4;
    property TCode: WideString readonly dispid 5;
    property SNCEnabled: WordBool readonly dispid 6;
    property SNCPartnerName: WideString readonly dispid 7;
    procedure SetLogonInfo(const Function_: WideString; const Client: WideString; 
                           const User: WideString; const Language: WideString; 
                           const TCode: WideString; SNCEnabled: WordBool; 
                           const SNCPartnerName: WideString); dispid 10;
    property RequestAllowed: WordBool dispid 20;
  end;

// *********************************************************************//
// Interface: IRfcTransactionInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BE3EB5DA-B7E9-4396-BF65-7F27261E8921}
// *********************************************************************//
  IRfcTransactionInfo = interface(IDispatch)
    ['{BE3EB5DA-B7E9-4396-BF65-7F27261E8921}']
    function Get_TransactionID: WideString; safecall;
    function Get_Status: Integer; safecall;
    procedure Set_Status(pVal: Integer); safecall;
    procedure SetTID(const tid: WideString); safecall;
    property TransactionID: WideString read Get_TransactionID;
    property Status: Integer read Get_Status write Set_Status;
  end;

// *********************************************************************//
// DispIntf:  IRfcTransactionInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BE3EB5DA-B7E9-4396-BF65-7F27261E8921}
// *********************************************************************//
  IRfcTransactionInfoDisp = dispinterface
    ['{BE3EB5DA-B7E9-4396-BF65-7F27261E8921}']
    property TransactionID: WideString readonly dispid 1;
    property Status: Integer dispid 2;
    procedure SetTID(const tid: WideString); dispid 10;
  end;

// *********************************************************************//
// Interface: IConnectorCtrl
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1231A5C9-054E-4282-8C25-FA8926561474}
// *********************************************************************//
  IConnectorCtrl = interface(IDispatch)
    ['{1231A5C9-054E-4282-8C25-FA8926561474}']
    function CreateRfcSession: IRfcSession; safecall;
    function CreateSOAPSession: ISoapSession; safecall;
    function CreateRfcServer: IRfcServer; safecall;
    function CreateNWRfcSession: IRfcSession; safecall;
    function CreateNWRfcServer: IRfcServer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IConnectorCtrlDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1231A5C9-054E-4282-8C25-FA8926561474}
// *********************************************************************//
  IConnectorCtrlDisp = dispinterface
    ['{1231A5C9-054E-4282-8C25-FA8926561474}']
    function CreateRfcSession: IRfcSession; dispid 1;
    function CreateSOAPSession: ISoapSession; dispid 2;
    function CreateRfcServer: IRfcServer; dispid 3;
    function CreateNWRfcSession: IRfcSession; dispid 4;
    function CreateNWRfcServer: IRfcServer; dispid 5;
  end;

// *********************************************************************//
// DispIntf:  _RfcServerEvents
// Flags:     (4096) Dispatchable
// GUID:      {DAE825D0-0DEE-496F-87D9-FD46FCDB30D9}
// *********************************************************************//
  _RfcServerEvents = dispinterface
    ['{DAE825D0-0DEE-496F-87D9-FD46FCDB30D9}']
    procedure IncomingCall(const fn: IFunctionCall); dispid 1;
    procedure Logon(const fn: IRfcServerLogonInfo); dispid 2;
    procedure ServerError(const ei: IRfcServerErrorInfo); dispid 3;
    procedure TransactionCheck(const ti: IRfcTransactionInfo); dispid 4;
    procedure TransactionCommit(const ti: IRfcTransactionInfo); dispid 5;
    procedure TransactionRollback(const ti: IRfcTransactionInfo); dispid 6;
    procedure TransactionConfirm(const ti: IRfcTransactionInfo); dispid 7;
  end;

// *********************************************************************//
// The Class CoRfcSession provides a Create and CreateRemote method to          
// create instances of the default interface IRfcSession exposed by              
// the CoClass RfcSession. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcSession = class
    class function Create: IRfcSession;
    class function CreateRemote(const MachineName: string): IRfcSession;
  end;

// *********************************************************************//
// The Class CoRfcServer provides a Create and CreateRemote method to          
// create instances of the default interface IRfcServer exposed by              
// the CoClass RfcServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcServer = class
    class function Create: IRfcServer;
    class function CreateRemote(const MachineName: string): IRfcServer;
  end;

// *********************************************************************//
// The Class CoRfcType provides a Create and CreateRemote method to          
// create instances of the default interface IRfcType exposed by              
// the CoClass RfcType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcType = class
    class function Create: IRfcType;
    class function CreateRemote(const MachineName: string): IRfcType;
  end;

// *********************************************************************//
// The Class CoRfcTypes provides a Create and CreateRemote method to          
// create instances of the default interface IRfcTypes exposed by              
// the CoClass RfcTypes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcTypes = class
    class function Create: IRfcTypes;
    class function CreateRemote(const MachineName: string): IRfcTypes;
  end;

// *********************************************************************//
// The Class CoRfcField provides a Create and CreateRemote method to          
// create instances of the default interface IRfcField exposed by              
// the CoClass RfcField. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcField = class
    class function Create: IRfcField;
    class function CreateRemote(const MachineName: string): IRfcField;
  end;

// *********************************************************************//
// The Class CoRfcFields provides a Create and CreateRemote method to          
// create instances of the default interface IRfcFields exposed by              
// the CoClass RfcFields. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcFields = class
    class function Create: IRfcFields;
    class function CreateRemote(const MachineName: string): IRfcFields;
  end;

// *********************************************************************//
// The Class CoRfcRows provides a Create and CreateRemote method to          
// create instances of the default interface IRfcRows exposed by              
// the CoClass RfcRows. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcRows = class
    class function Create: IRfcRows;
    class function CreateRemote(const MachineName: string): IRfcRows;
  end;

// *********************************************************************//
// The Class CoRfcParameter provides a Create and CreateRemote method to          
// create instances of the default interface IRfcParameter exposed by              
// the CoClass RfcParameter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcParameter = class
    class function Create: IRfcParameter;
    class function CreateRemote(const MachineName: string): IRfcParameter;
  end;

// *********************************************************************//
// The Class CoRfcParameters provides a Create and CreateRemote method to          
// create instances of the default interface IRfcParameters exposed by              
// the CoClass RfcParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcParameters = class
    class function Create: IRfcParameters;
    class function CreateRemote(const MachineName: string): IRfcParameters;
  end;

// *********************************************************************//
// The Class CoLogonData provides a Create and CreateRemote method to          
// create instances of the default interface ILogonData exposed by              
// the CoClass LogonData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLogonData = class
    class function Create: ILogonData;
    class function CreateRemote(const MachineName: string): ILogonData;
  end;

// *********************************************************************//
// The Class CoRfcSystemData provides a Create and CreateRemote method to          
// create instances of the default interface IRfcSystemData exposed by              
// the CoClass RfcSystemData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcSystemData = class
    class function Create: IRfcSystemData;
    class function CreateRemote(const MachineName: string): IRfcSystemData;
  end;

// *********************************************************************//
// The Class CoRfcError provides a Create and CreateRemote method to          
// create instances of the default interface IRfcError exposed by              
// the CoClass RfcError. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcError = class
    class function Create: IRfcError;
    class function CreateRemote(const MachineName: string): IRfcError;
  end;

// *********************************************************************//
// The Class CoSoapSession provides a Create and CreateRemote method to          
// create instances of the default interface ISoapSession exposed by              
// the CoClass SoapSession. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSoapSession = class
    class function Create: ISoapSession;
    class function CreateRemote(const MachineName: string): ISoapSession;
  end;

// *********************************************************************//
// The Class CoHttpSystemData provides a Create and CreateRemote method to          
// create instances of the default interface IHttpSystemData exposed by              
// the CoClass HttpSystemData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoHttpSystemData = class
    class function Create: IHttpSystemData;
    class function CreateRemote(const MachineName: string): IHttpSystemData;
  end;

// *********************************************************************//
// The Class CoBSPApplication provides a Create and CreateRemote method to          
// create instances of the default interface IBSPApplication exposed by              
// the CoClass BSPApplication. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBSPApplication = class
    class function Create: IBSPApplication;
    class function CreateRemote(const MachineName: string): IBSPApplication;
  end;

// *********************************************************************//
// The Class CoWindowProperties provides a Create and CreateRemote method to          
// create instances of the default interface IWindowProperties exposed by              
// the CoClass WindowProperties. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWindowProperties = class
    class function Create: IWindowProperties;
    class function CreateRemote(const MachineName: string): IWindowProperties;
  end;

// *********************************************************************//
// The Class CoBSPParameter provides a Create and CreateRemote method to          
// create instances of the default interface IBSPParameter exposed by              
// the CoClass BSPParameter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBSPParameter = class
    class function Create: IBSPParameter;
    class function CreateRemote(const MachineName: string): IBSPParameter;
  end;

// *********************************************************************//
// The Class CoBSPParameters provides a Create and CreateRemote method to          
// create instances of the default interface IBSPParameters exposed by              
// the CoClass BSPParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBSPParameters = class
    class function Create: IBSPParameters;
    class function CreateRemote(const MachineName: string): IBSPParameters;
  end;

// *********************************************************************//
// The Class CoFunctionCall provides a Create and CreateRemote method to          
// create instances of the default interface IFunctionCall exposed by              
// the CoClass FunctionCall. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFunctionCall = class
    class function Create: IFunctionCall;
    class function CreateRemote(const MachineName: string): IFunctionCall;
  end;

// *********************************************************************//
// The Class CoFunctionCalls provides a Create and CreateRemote method to          
// create instances of the default interface IFunctionCalls exposed by              
// the CoClass FunctionCalls. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFunctionCalls = class
    class function Create: IFunctionCalls;
    class function CreateRemote(const MachineName: string): IFunctionCalls;
  end;

// *********************************************************************//
// The Class CoRfcServerLogonInfo provides a Create and CreateRemote method to          
// create instances of the default interface IRfcServerLogonInfo exposed by              
// the CoClass RfcServerLogonInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcServerLogonInfo = class
    class function Create: IRfcServerLogonInfo;
    class function CreateRemote(const MachineName: string): IRfcServerLogonInfo;
  end;

// *********************************************************************//
// The Class CoRfcServerErrorInfo provides a Create and CreateRemote method to          
// create instances of the default interface IRfcServerErrorInfo exposed by              
// the CoClass RfcServerErrorInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcServerErrorInfo = class
    class function Create: IRfcServerErrorInfo;
    class function CreateRemote(const MachineName: string): IRfcServerErrorInfo;
  end;

// *********************************************************************//
// The Class CoRfcTransactionInfo provides a Create and CreateRemote method to          
// create instances of the default interface IRfcTransactionInfo exposed by              
// the CoClass RfcTransactionInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRfcTransactionInfo = class
    class function Create: IRfcTransactionInfo;
    class function CreateRemote(const MachineName: string): IRfcTransactionInfo;
  end;

// *********************************************************************//
// The Class CoStringList provides a Create and CreateRemote method to          
// create instances of the default interface IStringList exposed by              
// the CoClass StringList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStringList = class
    class function Create: IStringList;
    class function CreateRemote(const MachineName: string): IStringList;
  end;

// *********************************************************************//
// The Class CoTableReader provides a Create and CreateRemote method to          
// create instances of the default interface ITableReader exposed by              
// the CoClass TableReader. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTableReader = class
    class function Create: ITableReader;
    class function CreateRemote(const MachineName: string): ITableReader;
  end;

// *********************************************************************//
// The Class CoNWRfcServer provides a Create and CreateRemote method to          
// create instances of the default interface IRfcServer exposed by              
// the CoClass NWRfcServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNWRfcServer = class
    class function Create: IRfcServer;
    class function CreateRemote(const MachineName: string): IRfcServer;
  end;

implementation

uses System.Win.ComObj;

class function CoRfcSession.Create: IRfcSession;
begin
  Result := CreateComObject(CLASS_RfcSession) as IRfcSession;
end;

class function CoRfcSession.CreateRemote(const MachineName: string): IRfcSession;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcSession) as IRfcSession;
end;

class function CoRfcServer.Create: IRfcServer;
begin
  Result := CreateComObject(CLASS_RfcServer) as IRfcServer;
end;

class function CoRfcServer.CreateRemote(const MachineName: string): IRfcServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcServer) as IRfcServer;
end;

class function CoRfcType.Create: IRfcType;
begin
  Result := CreateComObject(CLASS_RfcType) as IRfcType;
end;

class function CoRfcType.CreateRemote(const MachineName: string): IRfcType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcType) as IRfcType;
end;

class function CoRfcTypes.Create: IRfcTypes;
begin
  Result := CreateComObject(CLASS_RfcTypes) as IRfcTypes;
end;

class function CoRfcTypes.CreateRemote(const MachineName: string): IRfcTypes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcTypes) as IRfcTypes;
end;

class function CoRfcField.Create: IRfcField;
begin
  Result := CreateComObject(CLASS_RfcField) as IRfcField;
end;

class function CoRfcField.CreateRemote(const MachineName: string): IRfcField;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcField) as IRfcField;
end;

class function CoRfcFields.Create: IRfcFields;
begin
  Result := CreateComObject(CLASS_RfcFields) as IRfcFields;
end;

class function CoRfcFields.CreateRemote(const MachineName: string): IRfcFields;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcFields) as IRfcFields;
end;

class function CoRfcRows.Create: IRfcRows;
begin
  Result := CreateComObject(CLASS_RfcRows) as IRfcRows;
end;

class function CoRfcRows.CreateRemote(const MachineName: string): IRfcRows;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcRows) as IRfcRows;
end;

class function CoRfcParameter.Create: IRfcParameter;
begin
  Result := CreateComObject(CLASS_RfcParameter) as IRfcParameter;
end;

class function CoRfcParameter.CreateRemote(const MachineName: string): IRfcParameter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcParameter) as IRfcParameter;
end;

class function CoRfcParameters.Create: IRfcParameters;
begin
  Result := CreateComObject(CLASS_RfcParameters) as IRfcParameters;
end;

class function CoRfcParameters.CreateRemote(const MachineName: string): IRfcParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcParameters) as IRfcParameters;
end;

class function CoLogonData.Create: ILogonData;
begin
  Result := CreateComObject(CLASS_LogonData) as ILogonData;
end;

class function CoLogonData.CreateRemote(const MachineName: string): ILogonData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LogonData) as ILogonData;
end;

class function CoRfcSystemData.Create: IRfcSystemData;
begin
  Result := CreateComObject(CLASS_RfcSystemData) as IRfcSystemData;
end;

class function CoRfcSystemData.CreateRemote(const MachineName: string): IRfcSystemData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcSystemData) as IRfcSystemData;
end;

class function CoRfcError.Create: IRfcError;
begin
  Result := CreateComObject(CLASS_RfcError) as IRfcError;
end;

class function CoRfcError.CreateRemote(const MachineName: string): IRfcError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcError) as IRfcError;
end;

class function CoSoapSession.Create: ISoapSession;
begin
  Result := CreateComObject(CLASS_SoapSession) as ISoapSession;
end;

class function CoSoapSession.CreateRemote(const MachineName: string): ISoapSession;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SoapSession) as ISoapSession;
end;

class function CoHttpSystemData.Create: IHttpSystemData;
begin
  Result := CreateComObject(CLASS_HttpSystemData) as IHttpSystemData;
end;

class function CoHttpSystemData.CreateRemote(const MachineName: string): IHttpSystemData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_HttpSystemData) as IHttpSystemData;
end;

class function CoBSPApplication.Create: IBSPApplication;
begin
  Result := CreateComObject(CLASS_BSPApplication) as IBSPApplication;
end;

class function CoBSPApplication.CreateRemote(const MachineName: string): IBSPApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BSPApplication) as IBSPApplication;
end;

class function CoWindowProperties.Create: IWindowProperties;
begin
  Result := CreateComObject(CLASS_WindowProperties) as IWindowProperties;
end;

class function CoWindowProperties.CreateRemote(const MachineName: string): IWindowProperties;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WindowProperties) as IWindowProperties;
end;

class function CoBSPParameter.Create: IBSPParameter;
begin
  Result := CreateComObject(CLASS_BSPParameter) as IBSPParameter;
end;

class function CoBSPParameter.CreateRemote(const MachineName: string): IBSPParameter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BSPParameter) as IBSPParameter;
end;

class function CoBSPParameters.Create: IBSPParameters;
begin
  Result := CreateComObject(CLASS_BSPParameters) as IBSPParameters;
end;

class function CoBSPParameters.CreateRemote(const MachineName: string): IBSPParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BSPParameters) as IBSPParameters;
end;

class function CoFunctionCall.Create: IFunctionCall;
begin
  Result := CreateComObject(CLASS_FunctionCall) as IFunctionCall;
end;

class function CoFunctionCall.CreateRemote(const MachineName: string): IFunctionCall;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FunctionCall) as IFunctionCall;
end;

class function CoFunctionCalls.Create: IFunctionCalls;
begin
  Result := CreateComObject(CLASS_FunctionCalls) as IFunctionCalls;
end;

class function CoFunctionCalls.CreateRemote(const MachineName: string): IFunctionCalls;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FunctionCalls) as IFunctionCalls;
end;

class function CoRfcServerLogonInfo.Create: IRfcServerLogonInfo;
begin
  Result := CreateComObject(CLASS_RfcServerLogonInfo) as IRfcServerLogonInfo;
end;

class function CoRfcServerLogonInfo.CreateRemote(const MachineName: string): IRfcServerLogonInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcServerLogonInfo) as IRfcServerLogonInfo;
end;

class function CoRfcServerErrorInfo.Create: IRfcServerErrorInfo;
begin
  Result := CreateComObject(CLASS_RfcServerErrorInfo) as IRfcServerErrorInfo;
end;

class function CoRfcServerErrorInfo.CreateRemote(const MachineName: string): IRfcServerErrorInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcServerErrorInfo) as IRfcServerErrorInfo;
end;

class function CoRfcTransactionInfo.Create: IRfcTransactionInfo;
begin
  Result := CreateComObject(CLASS_RfcTransactionInfo) as IRfcTransactionInfo;
end;

class function CoRfcTransactionInfo.CreateRemote(const MachineName: string): IRfcTransactionInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RfcTransactionInfo) as IRfcTransactionInfo;
end;

class function CoStringList.Create: IStringList;
begin
  Result := CreateComObject(CLASS_StringList) as IStringList;
end;

class function CoStringList.CreateRemote(const MachineName: string): IStringList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StringList) as IStringList;
end;

class function CoTableReader.Create: ITableReader;
begin
  Result := CreateComObject(CLASS_TableReader) as ITableReader;
end;

class function CoTableReader.CreateRemote(const MachineName: string): ITableReader;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TableReader) as ITableReader;
end;

class function CoNWRfcServer.Create: IRfcServer;
begin
  Result := CreateComObject(CLASS_NWRfcServer) as IRfcServer;
end;

class function CoNWRfcServer.CreateRemote(const MachineName: string): IRfcServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NWRfcServer) as IRfcServer;
end;

end.
