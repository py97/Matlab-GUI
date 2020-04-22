function varargout = Result_5_2(varargin)
% RESULT_5_2 MATLAB code for Result_5_2.fig
%      RESULT_5_2, by itself, creates a new RESULT_5_2 or raises the existing
%      singleton*.
%
%      H = RESULT_5_2 returns the handle to a new RESULT_5_2 or the handle to
%      the existing singleton*.
%
%      RESULT_5_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULT_5_2.M with the given input arguments.
%
%      RESULT_5_2('Property','Value',...) creates a new RESULT_5_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Result_5_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Result_5_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Result_5_2

% Last Modified by GUIDE v2.5 07-Jan-2020 14:48:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_5_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_5_2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Result_5_2 is made visible.
function Result_5_2_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','�������ƹ�����������');
global pass_Data table_F table_L table_J table_Q
global L_i5 F_i2 J_i16 J_i17 Q_i9 F_i4 F_i6 F_i7 
global d_M_28 d_M_29 d_M_32 d_M_33 d_M_34
global Z_i1 Z_i2 Z_i3 Z_i4 Z_i5 Z_i6 Z_i7 Z_i8

pass_Data = varargin{1};
table_F = pass_Data{5};
table_J = pass_Data{31};
table_L = pass_Data{32};
table_Q = pass_Data{34};

L_i5 =  table_L(:,5);
F_i2 =  table_F(:,2);
F_i4 =  table_F(:,4);
F_i6 =  table_F(:,6);
F_i7 =  table_F(:,7);
J_i16 =  table_J(:,16);
J_i17 =  table_J(:,17);
Q_i9 =  table_Q(:,9);

%��֪��ǰ�꾮����---------------------------------------------------------------------------------------------------------------------
%M_28---M_34����    double��
%�����������kN����M_28
% %����ʱ:MAX��L_i,5��
d_M_28 = max(str2num(char(L_i5(:,1))));  

%�����ѹ��kN��:M_29
% %����ʱ:F_1,2
d_M_29 = str2num(char(F_i2(1,1)));

%�������Һѹ��MPa��:M_32
% %����ʱ:MAX(J_i,17)
d_M_32 = max(str2num(char(J_i17)));

%�������Һѹ��MPa��:M_33
% %����ʱ:MAX(J_i,16)
d_M_33 = max(str2num(char(J_i16(:,1))) );

%���Ť�أ�kN.m��:M_34
% %����ʱ:Q_1,9
d_M_34 = str2num(char(Q_i9(1,1)));

d_M_28 = cellstr(strjust(num2str(d_M_28),'left'));
d_M_29 = cellstr(strjust(num2str(d_M_29),'left'));
d_M_32 = cellstr(strjust(num2str(d_M_32),'left'));
d_M_33 = cellstr(strjust(num2str(d_M_33),'left'));
d_M_34 = cellstr(strjust(num2str(d_M_34),'left'));
result_M_Data = [d_M_28,d_M_29,d_M_32,d_M_33,d_M_34];
set(handles.y_5_2uitable1,'Data',result_M_Data)

%��֪�׹����Ʋ���---------------------------------------------------------------------------------------------------------------------
%ƫ������:Z_i1
Z_i1 = {'ƫ������'};

%�׹ܳߴ磨mm��:Z_i2
Z_i2 = 139.7;

%�ֲ�:Z_i3
%P110
Z_i3 = {'P110'};

%�ܲ�����ǿ�ȣ�MPa��:Z_i4
Z_i4 = 758;

%�ܲļ��޿���ǿ�ȣ�MPa��:Z_i5
Z_i5 = 945;

%�������ǣ��㣩:Z_i6
Z_i6 = 1.7899;

%������нǣ��㣩:Z_i7
Z_i7 = 3;

%������нǣ��㣩:Z_i8
Z_i8 = 10;

Z_i2 = cellstr(strjust(num2str(Z_i2),'left'));  
Z_i4 = cellstr(strjust(num2str(Z_i4),'left'));
Z_i5 = cellstr(strjust(num2str(Z_i5),'left'));
Z_i6 = cellstr(strjust(num2str(Z_i6),'left'));
Z_i7 = cellstr(strjust(num2str(Z_i7),'left'));
Z_i8 = cellstr(strjust(num2str(Z_i8),'left'));
result_Z1_Data = [Z_i1,Z_i2,Z_i3,Z_i4,Z_i5,Z_i6,Z_i7,Z_i8];
set(handles.y_5_2uitable2,'Data',result_Z1_Data)

%�ж�֮ǰ�Ƿ�����pass_Data---------------------------------------------------------------%
try
table_Z2 = pass_Data{46};
if size(table_Z2,1) ~= 0 && size(table_Z2,2) ~= 0
    set(handles.y_5_2uitable3,'Data',table_Z2)
end
catch
end
%------------------------------------------------------------------------------------------%


handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Result_5_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
try
varargout{1} = handles.output;
catch
end


% --- Executes on button press in y_5_2pushbutton1.
function y_5_2pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to y_5_2pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data
global d_M_28 d_M_29 d_M_32 d_M_33 d_M_34
global F_i4 F_i6 F_i7 
global Z_i1 Z_i2 Z_i3 Z_i4 Z_i5 Z_i6 Z_i7 Z_i8
%�׹�������Ť��ЧӦ��(MPa):Z_i9
%0.5885*M_1,34^2-0.4134*M_1,34+0.5562*M_1,28
Z_i9 = 0.5885*str2num(char(d_M_34))^2-0.4134*str2num(char(d_M_34))+0.5562*str2num(char(d_M_28));

%�׹�������Ť����Ӧ��(MPa):Z_i10
%       Z_1,5-0.5885*M_1,34^2+0.4134*M_1,34
Z_i10 = str2num(char(Z_i5))-0.5885*str2num(char(d_M_34))^2 +0.4134*str2num(char(d_M_34));

%�׹�������Ť��ȫϵ��:Z_i11
%Z_1,10/Z_1,9
Z_i11 = Z_i10/Z_i9;

%�׹�����ѹŤ��ЧӦ��(MPa):Z_i12
%       0.5472*               M_1,34^2+6.3056*               M_1,34+0.5562*             M_1,29
Z_i12 = 0.5472*str2num(char(d_M_34))^2+6.3056*str2num(char(d_M_34))+0.5562*str2num(char(d_M_29));

%�׹�����ѹŤ����Ӧ��(MPa):Z_i13
%       Z_1,4-0.5472*M_1,34^2-6.3056*M_1,34
Z_i13 = str2num(char(Z_i4))-0.5472*str2num(char(d_M_34))^2-6.3056*str2num(char(d_M_34));

%�׹�����ѹŤ��ȫϵ��:Z_i14
%       Z_1,13/Z_1,12
Z_i14 = Z_i13/Z_i12;

%�׹����Ƶ�Ч�ܷ�Ӧ��(MPa):Z_i15
%       0.0002*M_1,33^3*0.0373*M_1,33^2+6.4113*M_1,33
Z_i15 = 0.0002*str2num(char(d_M_33))^3*0.0373*str2num(char(d_M_33))^2+6.4113*str2num(char(d_M_33));

%�׹����Ƽ����ܷ�Ӧ��(MPa):Z_i16
%Z_1,4
Z_i16 = str2num(char(Z_i4));

%�׹��ڲ�Һѹ���ƾ������(mm):Z_i17
%       0.00002*M_1,33^3-0.0015*M_1,33^2+0.0319*M_1,33-0.1321
Z_i17 = 0.00002*str2num(char(d_M_33))^3-0.0015*str2num(char(d_M_33))^2+0.0319*str2num(char(d_M_33))-0.1321;

%�׹������ܷⰲȫϵ��:Z_i18
%Z_1,16/Z_1,15
Z_i18 = Z_i16/Z_i15;

%�׹����ƿɿ���У�˽��:Z_i19
%IF((Z_1,11>F_1,4)*                 AND(Z_1,14>F_1,7)*AND(Z_1,18>F_1,6),"����Ҫ��")
if Z_i11 > str2num(char(F_i4(1,1))) && Z_i14 > str2num(char(F_i7(1,1))) && Z_i18 > str2num(char(F_i6(1,1)))
    Z_i19 = {'��������Ҫ��'};
else
    Z_i19 = {'������ӹ���������'};
end

Z_i9 = cellstr(strjust(num2str(Z_i9),'left'));
Z_i10 = cellstr(strjust(num2str(Z_i10),'left'));
Z_i11 = cellstr(strjust(num2str(Z_i11),'left'));
Z_i12 = cellstr(strjust(num2str(Z_i12),'left'));
Z_i13 = cellstr(strjust(num2str(Z_i13),'left'));
Z_i14 = cellstr(strjust(num2str(Z_i14),'left'));
Z_i15 = cellstr(strjust(num2str(Z_i15),'left'));
Z_i16 = cellstr(strjust(num2str(Z_i16),'left'));
Z_i17 = cellstr(strjust(num2str(Z_i17),'left'));
Z_i18 = cellstr(strjust(num2str(Z_i18),'left'));
result_Z2_Data = [Z_i9;Z_i10;Z_i11;Z_i12;Z_i13;Z_i14;Z_i15;Z_i16;Z_i17;Z_i18;Z_i19];
set(handles.y_5_2uitable3,'Data',result_Z2_Data)
result_Z1_Data = [Z_i1,Z_i2,Z_i3,Z_i4,Z_i5,Z_i6,Z_i7,Z_i8];
result_M_Data = [d_M_28,d_M_29,d_M_32,d_M_33,d_M_34];
pass_Data{45} = result_Z1_Data;
pass_Data{46} = result_Z2_Data;
pass_Data{47} = result_M_Data;
result_Z_Data = [Z_i1,Z_i2,Z_i3,Z_i4,Z_i5,Z_i6,Z_i7,Z_i8,Z_i9,Z_i10,Z_i11,Z_i12,Z_i13,Z_i14,Z_i15,Z_i16,Z_i17,Z_i18,Z_i19];
pass_Data{48} = result_Z_Data;

handles.output = pass_Data;% �����ݷ��͵� handles.output �С�
%������ uiresume ʱ����������У�ִ�� OutputFcn �����޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1)   %����ִ�б�uiwait�жϵĳ���


% --- Executes on button press in y_5_2pushbutton2.
function y_5_2pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to y_5_2pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data
table_Data52_1 = pass_Data{47};
table_Data52_2 = pass_Data{45};
table_Data52_3 = pass_Data{46};
%��������-------------------------------------------------------------------
filter = {'*.docx';'*.*'};
[Filename,Pathname] = uiputfile(filter,'���Ϊ','data.docx');  %�����ļ�����Ի���
if (Filename==0 & Pathname==0)
    msgbox('��û�е�������!','ȷ��','error');
else
    str=[Pathname Filename];
    %����Word�ĵ�
    filespec_user = [str];  % �趨����Word�ļ�����·��
    % �ж�Word�Ƿ��Ѿ��򿪣����Ѵ򿪣����ڴ򿪵�Word�н��в���������ʹ�Word
    try
        % ��Word�������Ѿ��򿪣���������Word
        Word = actxGetRunningServer('Word.Application');
    catch
    % ���򣬴���һ��Microsoft Word�����������ؾ��Word
        Word = actxserver('Word.Application');
    end
    Word.Visible = 1; % ��set(Word, 'Visible', 1);

    % �������ļ����ڣ��򿪸ò����ļ��������½�һ���ļ��������棬�ļ���Ϊ����.docx
    if exist(filespec_user,'file')
        Document = Word.Documents.Open(filespec_user);
    % Document = invoke(Word.Documents,'Open',filespec_user);
    else
        Document = Word.Documents.Add;
    % Document = invoke(Word.Documents, 'Add');
        Document.SaveAs2(filespec_user);
    end

    % �趨���λ�ô�ͷ��ʼ
    Content = Document.Content;
    Selection = Word.Selection;
    Paragraphformat = Selection.ParagraphFormat;

    % �趨ҳ���С
    Document.PageSetup.TopMargin = 60; % ��λ����
    Document.PageSetup.BottomMargin = 45;
    Document.PageSetup.LeftMargin = 45;
    Document.PageSetup.RightMargin = 45;

    %���
    Selection.Text = '�����������ƹ�����ѧ������';
    Selection.Font.Size = 14;
    Selection.Font.Bold = 1; 
    Selection.MoveDown;
    Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
    Selection.TypeParagraph;    %�����µĿն���
    Selection.Text = '��֪��';
    Selection.Font.Size = 12;
    Selection.Font.Bold = 1; 
    Selection.MoveDown;
    Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
    Selection.TypeParagraph;    %�����µĿն���      
    Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.Font.Bold = 0; 

    %�������ݱ��
    Selection.Font.Size = 11;   %���ñ���������СΪ11
    Tables = Document.Tables.Add(Selection.Range,2,5);    % 2�� 5��
    DTI52_1 = Document.Tables.Item(1); % ��DTI = Tables;
    DTI52_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
    DTI52_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
    DTI52_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
    DTI52_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI52_1.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
    DTI52_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
    % ָ������Ԫ������
    DTI52_1.Cell(1,1).Range.Text = '�����������kN��';
    DTI52_1.Cell(1,2).Range.Text = '�����ѹ��kN��';
    DTI52_1.Cell(1,3).Range.Text = '�������Һѹ��MPa��';
    DTI52_1.Cell(1,4).Range.Text = '�������Һѹ��MPa��';
    DTI52_1.Cell(1,5).Range.Text = '���Ť�أ�kN.m��';
%             DTI52_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

    %��д����
    DTI52_1.Cell(2,1).Range.Text = char(table_Data52_1(1,1));
    DTI52_1.Cell(2,2).Range.Text = char(table_Data52_1(1,2));
    DTI52_1.Cell(2,3).Range.Text = char(table_Data52_1(1,3));
    DTI52_1.Cell(2,4).Range.Text = char(table_Data52_1(1,4));
    DTI52_1.Cell(2,5).Range.Text = char(table_Data52_1(1,5));

    %�ڶ�����֪���
    Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.TypeParagraph;    %�����µĿն���  
    %�������ݱ��
    Selection.Font.Size = 11;   %���ñ���������СΪ11
    Tables = Document.Tables.Add(Selection.Range,2,8);    % 2�� 5��
    DTI52_2 = Document.Tables.Item(2); % ��DTI = Tables;
    DTI52_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
    DTI52_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
    DTI52_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
    DTI52_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI52_2.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
    DTI52_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
    % ָ������Ԫ������
    DTI52_2.Cell(1,1).Range.Text = '��������';
    DTI52_2.Cell(1,2).Range.Text = '�׹ܳߴ磨mm��';
    DTI52_2.Cell(1,3).Range.Text = '�ֲ�';
    DTI52_2.Cell(1,4).Range.Text = '�ܲ�����ǿ�ȣ�MPa��';
    DTI52_2.Cell(1,5).Range.Text = '�ܲļ��޿���ǿ�ȣ�MPa��';
    DTI52_2.Cell(1,6).Range.Text = '�������ǣ��㣩';
    DTI52_2.Cell(1,7).Range.Text = '������нǣ��㣩';
    DTI52_2.Cell(1,8).Range.Text = '������нǣ��㣩';
%             DTI52_2.Cell(1,:).Shading.Texture = wdTextureHorizontal;

    %��д����
    DTI52_2.Cell(2,1).Range.Text = char(table_Data52_2(1,1));
    DTI52_2.Cell(2,2).Range.Text = char(table_Data52_2(1,2));
    DTI52_2.Cell(2,3).Range.Text = char(table_Data52_2(1,3));
    DTI52_2.Cell(2,4).Range.Text = char(table_Data52_2(1,4));
    DTI52_2.Cell(2,5).Range.Text = char(table_Data52_2(1,5));
    DTI52_2.Cell(2,6).Range.Text = char(table_Data52_2(1,6));
    DTI52_2.Cell(2,7).Range.Text = char(table_Data52_2(1,7));
    DTI52_2.Cell(2,8).Range.Text = char(table_Data52_2(1,8));

    %����á�ģ��
    Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.TypeParagraph;    %�����µĿն���
    Selection.Text = '��ã�';
    Selection.Font.Size = 12;
    Selection.Font.Bold = 0; 
    Selection.MoveDown;
    Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
    Selection.TypeParagraph;    %�����µĿն���      
    Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.Font.Bold = 0; 

    %�������ݱ��
    Selection.Font.Size = 11;   %���ñ���������СΪ11
    Tables = Document.Tables.Add(Selection.Range,11,2);    % 11 �� 2��
    DTI52_3 = Document.Tables.Item(3); % ��DTI = Tables;
    DTI52_3.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
    DTI52_3.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
    DTI52_3.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
    DTI52_3.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI52_3.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
    DTI52_3.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���

    % ָ������Ԫ������
    DTI52_3.Cell(1,1).Range.Text = '�׹�������Ť��ЧӦ��(MPa)';
    DTI52_3.Cell(2,1).Range.Text = '�׹�������Ť����Ӧ��(MPa)';
    DTI52_3.Cell(3,1).Range.Text = '�׹�������Ť��ȫϵ��';
    DTI52_3.Cell(4,1).Range.Text = '�׹�����ѹŤ��ЧӦ��(MPa)';
    DTI52_3.Cell(5,1).Range.Text = '�׹�����ѹŤ����Ӧ��(MPa)';
    DTI52_3.Cell(6,1).Range.Text = '�׹�����ѹŤ��ȫϵ��';
    DTI52_3.Cell(7,1).Range.Text = '�׹����Ƶ�Ч�ܷ�Ӧ��(MPa)';
    DTI52_3.Cell(8,1).Range.Text = '�׹����Ƽ����ܷ�Ӧ��(MPa)';
    DTI52_3.Cell(9,1).Range.Text = '�׹��ڲ�Һѹ���ƾ������(mm)';
    DTI52_3.Cell(10,1).Range.Text = '�׹������ܷⰲȫϵ��';
    DTI52_3.Cell(11,1).Range.Text = '�׹����ƿɿ���У�˽��';
    %��д����
    DTI52_3.Cell(1,2).Range.Text = char(table_Data52_3(1,1));
    DTI52_3.Cell(2,2).Range.Text = char(table_Data52_3(2,1));
    DTI52_3.Cell(3,2).Range.Text = char(table_Data52_3(3,1));
    DTI52_3.Cell(4,2).Range.Text = char(table_Data52_3(4,1));
    DTI52_3.Cell(5,2).Range.Text = char(table_Data52_3(5,1));
    DTI52_3.Cell(6,2).Range.Text = char(table_Data52_3(6,1));
    DTI52_3.Cell(7,2).Range.Text = char(table_Data52_3(7,1));
    DTI52_3.Cell(8,2).Range.Text = char(table_Data52_3(8,1));
    DTI52_3.Cell(9,2).Range.Text = char(table_Data52_3(9,1));
    DTI52_3.Cell(10,2).Range.Text = char(table_Data52_3(10,1));
    DTI52_3.Cell(11,2).Range.Text = char(table_Data52_3(11,1));

    Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.TypeParagraph;    %�����µĿն���       

    Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % ������ͼ��ʽΪҳ��
    Document.Save; % �����ĵ�
end


% --- Executes during object creation, after setting all properties.
function y_5_2uitable2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_5_2uitable2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global Z_i1 Z_i2 Z_i3 Z_i4 Z_i5 Z_i6 Z_i7 Z_i8
%Z����---------------------------------------------------------------------------------------------------------------------
%ƫ������:Z_i1
Z_i1 = {'ƫ������'};

%�׹ܳߴ磨mm��:Z_i2
Z_i2 = 139.7;

%�ֲ�:Z_i3
%P110
Z_i3 = {'P110'};

%�ܲ�����ǿ�ȣ�MPa��:Z_i4
Z_i4 = 758;

%�ܲļ��޿���ǿ�ȣ�MPa��:Z_i5
Z_i5 = 945;

%�������ǣ��㣩:Z_i6
Z_i6 = 1.7899;

%������нǣ��㣩:Z_i7
Z_i7 = 3;

%������нǣ��㣩:Z_i8
Z_i8 = 10;

Z_i2 = cellstr(strjust(num2str(Z_i2),'left'));  
Z_i4 = cellstr(strjust(num2str(Z_i4),'left'));
Z_i5 = cellstr(strjust(num2str(Z_i5),'left'));
Z_i6 = cellstr(strjust(num2str(Z_i6),'left'));
Z_i7 = cellstr(strjust(num2str(Z_i7),'left'));
Z_i8 = cellstr(strjust(num2str(Z_i8),'left'));
result_Z1_Data = [Z_i1,Z_i2,Z_i3,Z_i4,Z_i5,Z_i6,Z_i7,Z_i8];
set(hObject,'Data',result_Z1_Data)


% --- Executes during object creation, after setting all properties.
function y_5_2uitable1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_5_2uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global L_i5 F_i2 J_i16 J_i17 Q_i9
global d_M_28 d_M_29 d_M_32 d_M_33 d_M_34
%M_28---M_34����    double��
%�����������kN����M_28
% %����ʱ:MAX��L_i,5��
d_M_28 = max(str2num(char(L_i5(:,1))));  

%�����ѹ��kN��:M_29
% %����ʱ:F_1,2
d_M_29 = str2num(char(F_i2(1,1)));

%�������Һѹ��MPa��:M_32
% %����ʱ:MAX(J_i,17)
d_M_32 = max(str2num(char(J_i17)));

%�������Һѹ��MPa��:M_33
% %����ʱ:MAX(J_i,16)
d_M_33 = max(str2num(char(J_i16(:,1))) );

%���Ť�أ�kN.m��:M_34
% %����ʱ:Q_1,9
d_M_34 = str2num(char(Q_i9(1,1)));

d_M_28 = cellstr(strjust(num2str(d_M_28),'left'));
d_M_29 = cellstr(strjust(num2str(d_M_29),'left'));
d_M_32 = cellstr(strjust(num2str(d_M_32),'left'));
d_M_33 = cellstr(strjust(num2str(d_M_33),'left'));
d_M_34 = cellstr(strjust(num2str(d_M_34),'left'));
result_M_Data = [d_M_28,d_M_29,d_M_32,d_M_33,d_M_34];
set(hObject,'Data',result_M_Data)
