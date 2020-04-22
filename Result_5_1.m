function varargout = Result_5_1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_5_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_5_1_OutputFcn, ...
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


function Result_5_1_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','���ƹ�����������');
global pass_Data table_F table_K table_I table_O
global K_i4 F_i2 I_i8 I_i9 O_i9 F_i4 F_i6 F_i7 

pass_Data = varargin{1};
table_F = pass_Data{5};
table_I = pass_Data{6};
table_K = pass_Data{7};
table_O = pass_Data{9};

K_i4 =  table_K(:,4);
F_i2 =  table_F(:,2);
F_i4 =  table_F(:,4);
F_i6 =  table_F(:,6);
F_i7 =  table_F(:,7);
I_i8 =  table_I(:,8);
I_i9 =  table_I(:,9);
O_i9 =  table_O(:,9);

%�ж�֮ǰ�Ƿ�����pass_Data---------------------------------------------------------------%
try
table_Z1 = pass_Data{23};
table_Z2 = pass_Data{21};
ResM_5_1 = pass_Data{22};
% if size(table_Z1) ~= 0 && size(table_Z1,2) == 8
    set(handles.M_uitable1,'Data',ResM_5_1)
% end
% if size(table_Z2) ~= 0 && size(table_Z2,2) == 4
    set(handles.Z1_uitable2,'Data',table_Z1)
% end
% if size(ResM_5_1) ~= 0 && size(ResM_5_1,2) == 5
    set(handles.Z2_uitable3,'Data',table_Z2)
% end
catch
end
%------------------------------------------------------------------------------------------%

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Result_5_1_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


%����-------------------------------------------------------------------------------------------------------------------------
function pushbutton1_Callback(hObject, eventdata, handles)
global K_i4 F_i2 I_i8 I_i9  O_i9 F_i4 F_i6 F_i7
global pass_Data
% clear logic_judge
% logic_judge=0;
%�ж������Ƿ���������	

%����------------------------------------------------------------------------------------------------------------------------
%M_28---M_34����    double��
%�����������kN����M_28
%ֱ��ʱ:MAX��K_i,4��
z_M_28 = max(str2num(char(K_i4(:,1))))   
% %����ʱ:MAX��L_i,5��
% d_M_28 = max(str2num(char(L_i5(:,1))))  

%�����ѹ��kN��:M_29
%ֱ��ʱ:F_1,2
z_M_29 = str2num(char(F_i2(1,1)))   
% %����ʱ:F_1,2
% d_M_29 = str2num(char(F_i2(1,1)))  

%�������Һѹ��MPa��:M_32
%ֱ��ʱ:MAX(I_i,9)
z_M_32 = str2num(char(I_i9(end,1)))   
% %����ʱ:MAX(J_i,17)
% d_M_32 = str2num(char(T_i12(end,1)))

%�������Һѹ��MPa��:M_33
%ֱ��ʱ:MAX(I_i,8)
z_M_33 = max(str2num(char(I_i8(:,1))) )  
% %����ʱ:MAX(J_i,16)
% d_M_33 = max(str2num(char(J_i16(:,1))) );

%���Ť�أ�kN.m��:M_34
%ֱ��ʱ:O_1,9
z_M_34 = str2num(char(O_i9(1,1))) 
% %����ʱ:Q_1,9
% d_M_34 = str2num(char(Q_i9(1,1))) 

%Z����---------------------------------------------------------------------------------------------------------------------
%ƫ������:Z_i1
Z_i1 = {'ƫ������'}

%�׹ܳߴ磨mm��:Z_i2
Z_i2 = 139.7

%�ֲ�:Z_i3
%P110
Z_i3 = {'P110'}

%�ܲ�����ǿ�ȣ�MPa��:Z_i4
Z_i4 = 758

%�ܲļ��޿���ǿ�ȣ�MPa��:Z_i5
Z_i5 = 945

%�������ǣ��㣩:Z_i6
Z_i6 = 1.7899

%������нǣ��㣩:Z_i7
Z_i7 = 3

%������нǣ��㣩:Z_i8
Z_i8 = 10

%�׹�������Ť��ЧӦ��(MPa):Z_i9
%0.5885*M_1,34^2-0.4134*M_1,34+0.5562*M_1,28
Z_i9 = 0.5885*z_M_34^2-0.4134*z_M_34+0.5562*z_M_28

%�׹�������Ť����Ӧ��(MPa):Z_i10
%       Z_1,5-0.5885*M_1,34^2+0.4134*M_1,34
Z_i10 = Z_i5-0.5885*z_M_34^2 +0.4134*z_M_34

%�׹�������Ť��ȫϵ��:Z_i11
%Z_1,10/Z_1,9
Z_i11 = Z_i10/Z_i9

%�׹�����ѹŤ��ЧӦ��(MPa):Z_i12
%       0.5472*M_1,34^2+6.3056*M_1,34+0.5562*M_1,29
Z_i12 = 0.5472*z_M_34^2+6.3056*z_M_34+0.5562*z_M_29

%�׹�����ѹŤ����Ӧ��(MPa):Z_i13
%       Z_1,4-0.5472*M_1,34^2-6.3056*M_1,34
Z_i13 = Z_i4-0.5472*z_M_34^2-6.3056*z_M_34

%�׹�����ѹŤ��ȫϵ��:Z_i14
%       Z_1,13/Z_1,12
Z_i14 = Z_i13/Z_i12

%�׹����Ƶ�Ч�ܷ�Ӧ��(MPa):Z_i15
%       0.0002*M_1,33^3*0.0373*M_1,33^2+6.4113*M_1,33
Z_i15 = 0.0002*z_M_33^3*0.0373*z_M_33^2+6.4113*z_M_33

%�׹����Ƽ����ܷ�Ӧ��(MPa):Z_i16
%Z_1,4
Z_i16 = Z_i4

%�׹��ڲ�Һѹ���ƾ������(mm):Z_i17
%       0.00002*M_1,33^3-0.0015*M_1,33^2+0.0319*M_1,33-0.1321
Z_i17 = 0.00002*z_M_33^3-0.0015*z_M_33^2+0.0319*z_M_33-0.1321

%�׹������ܷⰲȫϵ��:Z_i18
%Z_1,16/Z_1,15
Z_i18 = Z_i16/Z_i15

%�׹����ƿɿ���У�˽��:Z_i19
%IF((Z_1,11>F_1,4)*                 AND(Z_1,14>F_1,7)*AND(Z_1,18>F_1,6),"����Ҫ��")
if Z_i11 > str2num(char(F_i4(1,1))) && Z_i14 > str2num(char(F_i7(1,1))) && Z_i18 > str2num(char(F_i6(1,1)))
    Z_i19 = {'��������Ҫ��'}
else
    Z_i19 = {'������ӹ���������'}
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

z_M_28 = cellstr(strjust(num2str(z_M_28),'left'));
z_M_29 = cellstr(strjust(num2str(z_M_29),'left'));
z_M_32 = cellstr(strjust(num2str(z_M_32),'left'));
z_M_33 = cellstr(strjust(num2str(z_M_33),'left'));
z_M_34 = cellstr(strjust(num2str(z_M_34),'left'));
result_M_Data = [z_M_28,z_M_29,z_M_32,z_M_33,z_M_34];
set(handles.M_uitable1,'Data',result_M_Data);
pass_Data{22} = result_M_Data;

Z_i2 = cellstr(strjust(num2str(Z_i2),'left'));  
Z_i4 = cellstr(strjust(num2str(Z_i4),'left'));
Z_i5 = cellstr(strjust(num2str(Z_i5),'left'));
Z_i6 = cellstr(strjust(num2str(Z_i6),'left'));
Z_i7 = cellstr(strjust(num2str(Z_i7),'left'));
Z_i8 = cellstr(strjust(num2str(Z_i8),'left'));
result_Z1_Data = [Z_i1,Z_i2,Z_i3,Z_i4,Z_i5,Z_i6,Z_i7,Z_i8];
set(handles.Z1_uitable2,'Data',result_Z1_Data);
pass_Data{23} = result_Z1_Data;

result_Z2_Data = [Z_i9;Z_i10;Z_i11;Z_i12;Z_i13;Z_i14;Z_i15;Z_i16;Z_i17;Z_i18;Z_i19];
set(handles.Z2_uitable3,'Data',result_Z2_Data)
pass_Data{21} = result_Z2_Data;


%����ͼ��----------------------------------------------------------------------------------------------------------------------
function P_OutBut_5_1_Callback(hObject, eventdata, handles)
table_Data1 = get(handles.M_uitable1,'Data');
table_Data2 = get(handles.Z1_uitable2,'Data');
table_Data3 = get(handles.Z2_uitable3,'Data');
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
        Selection.Text = '����ֱ�����ƹ�����ѧ������';
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
        DTI5_1 = Document.Tables.Item(1); % ��DTI = Tables;
        DTI5_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
        DTI5_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
        DTI5_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
        DTI5_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI5_1.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
        DTI5_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
        % ָ������Ԫ������
        DTI5_1.Cell(1,1).Range.Text = '�����������kN��';
        DTI5_1.Cell(1,2).Range.Text = '�����ѹ��kN��';
        DTI5_1.Cell(1,3).Range.Text = '�������Һѹ��MPa��';
        DTI5_1.Cell(1,4).Range.Text = '�������Һѹ��MPa��';
        DTI5_1.Cell(1,5).Range.Text = '���Ť�أ�kN.m��';
%             DTI5_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %��д����
        DTI5_1.Cell(2,1).Range.Text = char(table_Data1(1,1));
        DTI5_1.Cell(2,2).Range.Text = char(table_Data1(1,2));
        DTI5_1.Cell(2,3).Range.Text = char(table_Data1(1,3));
        DTI5_1.Cell(2,4).Range.Text = char(table_Data1(1,4));
        DTI5_1.Cell(2,5).Range.Text = char(table_Data1(1,5));

        %�ڶ�����֪���
        Selection.Start = Content.end; % �趨���λ��Ϊ���
        Selection.TypeParagraph;    %�����µĿն���  
        %�������ݱ��
        Selection.Font.Size = 11;   %���ñ���������СΪ11
        Tables = Document.Tables.Add(Selection.Range,2,8);    % 2�� 5��
        DTI5_2 = Document.Tables.Item(2); % ��DTI = Tables;
        DTI5_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
        DTI5_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
        DTI5_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
        DTI5_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI5_2.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
        DTI5_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
        % ָ������Ԫ������
        DTI5_2.Cell(1,1).Range.Text = '��������';
        DTI5_2.Cell(1,2).Range.Text = '�׹ܳߴ磨mm��';
        DTI5_2.Cell(1,3).Range.Text = '�ֲ�';
        DTI5_2.Cell(1,4).Range.Text = '�ܲ�����ǿ�ȣ�MPa��';
        DTI5_2.Cell(1,5).Range.Text = '�ܲļ��޿���ǿ�ȣ�MPa��';
        DTI5_2.Cell(1,6).Range.Text = '�������ǣ��㣩';
        DTI5_2.Cell(1,7).Range.Text = '������нǣ��㣩';
        DTI5_2.Cell(1,8).Range.Text = '������нǣ��㣩';
%             DTI5_2.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %��д����
        DTI5_2.Cell(2,1).Range.Text = char(table_Data2(1,1));
        DTI5_2.Cell(2,2).Range.Text = char(table_Data2(1,2));
        DTI5_2.Cell(2,3).Range.Text = char(table_Data2(1,3));
        DTI5_2.Cell(2,4).Range.Text = char(table_Data2(1,4));
        DTI5_2.Cell(2,5).Range.Text = char(table_Data2(1,5));
        DTI5_2.Cell(2,6).Range.Text = char(table_Data2(1,6));
        DTI5_2.Cell(2,7).Range.Text = char(table_Data2(1,7));
        DTI5_2.Cell(2,8).Range.Text = char(table_Data2(1,8));
        
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
        DTI5_3 = Document.Tables.Item(3); % ��DTI = Tables;
        DTI5_3.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
        DTI5_3.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
        DTI5_3.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
        DTI5_3.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI5_3.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
        DTI5_3.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
        
        % ָ������Ԫ������
        DTI5_3.Cell(1,1).Range.Text = '�׹�������Ť��ЧӦ��(MPa)';
        DTI5_3.Cell(2,1).Range.Text = '�׹�������Ť����Ӧ��(MPa)';
        DTI5_3.Cell(3,1).Range.Text = '�׹�������Ť��ȫϵ��';
        DTI5_3.Cell(4,1).Range.Text = '�׹�����ѹŤ��ЧӦ��(MPa)';
        DTI5_3.Cell(5,1).Range.Text = '�׹�����ѹŤ����Ӧ��(MPa)';
        DTI5_3.Cell(6,1).Range.Text = '�׹�����ѹŤ��ȫϵ��';
        DTI5_3.Cell(7,1).Range.Text = '�׹����Ƶ�Ч�ܷ�Ӧ��(MPa)';
        DTI5_3.Cell(8,1).Range.Text = '�׹����Ƽ����ܷ�Ӧ��(MPa)';
        DTI5_3.Cell(9,1).Range.Text = '�׹��ڲ�Һѹ���ƾ������(mm)';
        DTI5_3.Cell(10,1).Range.Text = '�׹������ܷⰲȫϵ��';
        DTI5_3.Cell(11,1).Range.Text = '�׹����ƿɿ���У�˽��';
        %��д����
        DTI5_3.Cell(1,2).Range.Text = char(table_Data3(1,1));
        DTI5_3.Cell(2,2).Range.Text = char(table_Data3(2,1));
        DTI5_3.Cell(3,2).Range.Text = char(table_Data3(3,1));
        DTI5_3.Cell(4,2).Range.Text = char(table_Data3(4,1));
        DTI5_3.Cell(5,2).Range.Text = char(table_Data3(5,1));
        DTI5_3.Cell(6,2).Range.Text = char(table_Data3(6,1));
        DTI5_3.Cell(7,2).Range.Text = char(table_Data3(7,1));
        DTI5_3.Cell(8,2).Range.Text = char(table_Data3(8,1));
        DTI5_3.Cell(9,2).Range.Text = char(table_Data3(9,1));
        DTI5_3.Cell(10,2).Range.Text = char(table_Data3(10,1));
        DTI5_3.Cell(11,2).Range.Text = char(table_Data3(11,1));
        
        Selection.Start = Content.end; % �趨���λ��Ϊ���
        Selection.TypeParagraph;    %�����µĿն���       
        
        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % ������ͼ��ʽΪҳ��
        Document.Save; % �����ĵ�
end
