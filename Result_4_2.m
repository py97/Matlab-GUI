function varargout = Result_4_2(varargin)
% RESULT_4_2 MATLAB code for Result_4_2.fig
%      RESULT_4_2, by itself, creates a new RESULT_4_2 or raises the existing
%      singleton*.
%
%      H = RESULT_4_2 returns the handle to a new RESULT_4_2 or the handle to
%      the existing singleton*.
%
%      RESULT_4_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULT_4_2.M with the given input arguments.
%
%      RESULT_4_2('Property','Value',...) creates a new RESULT_4_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Result_4_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Result_4_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Result_4_2

% Last Modified by GUIDE v2.5 04-Jan-2020 16:25:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_4_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_4_2_OutputFcn, ...
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


% --- Executes just before Result_4_2 is made visible.
function Result_4_2_OpeningFcn(hObject, eventdata, handles, varargin)
global pass_Data 
global B_i1 B_i2
global D_i3 D_i4 F_i7 M_i14
global Q_i2 Q_i9
global T_i1 T_i2 T_i6 T_i13
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','定向井摩阻扭矩计算');
c_Array=load('taoguanDB.mat');
table_C = c_Array.taoguanDB;
%处理“   —”数据变为“0”-------------------------------------------------
for i = 1:size(table_C,1)
    if isempty(str2num(char(table_C(i,2)))) ~= 0
        table_C{i,2} = '0';
    end
    if isempty(str2num(char(table_C(i,3)))) ~= 0
        table_C{i,3} = '0';
    end
    if isempty(str2num(char(table_C(i,4)))) ~= 0
        table_C{i,4} = '0';
    end
    if isempty(str2num(char(table_C(i,6)))) ~= 0
        table_C{i,6} = '0';
    end
    if isempty(str2num(char(table_C(i,7)))) ~= 0
        table_C{i,7} = '0';
    end
    if isempty(str2num(char(table_C(i,8)))) ~= 0
        table_C{i,8} = '0';
    end
    if isempty(str2num(char(table_C(i,9)))) ~= 0
        table_C{i,9} = '0';
    end
    if isempty(str2num(char(table_C(i,10)))) ~= 0
        table_C{i,10} = '0';
    end
    if isempty(str2num(char(table_C(i,11)))) ~= 0
        table_C{i,11} = '0';
    end
    if isempty(str2num(char(table_C(i,12)))) ~= 0
        table_C{i,12} = '0';
    end
    if isempty(str2num(char(table_C(i,13)))) ~= 0
        table_C{i,13} = '0';
    end
    if isempty(str2num(char(table_C(i,14)))) ~= 0
        table_C{i,14} = '0';
    end
    if isempty(str2num(char(table_C(i,15)))) ~= 0
        table_C{i,15} = '0';
    end
    if isempty(str2num(char(table_C(i,16)))) ~= 0
        table_C{i,16} = '0';
    end
    if isempty(str2num(char(table_C(i,17)))) ~= 0
        table_C{i,17} = '0';
    end
    if isempty(str2num(char(table_C(i,18)))) ~= 0
        table_C{i,18} = '0';
    end
    if isempty(str2num(char(table_C(i,19)))) ~= 0
        table_C{i,19} = '0';
    end
    if isempty(str2num(char(table_C(i,20)))) ~= 0
        table_C{i,20} = '0';
    end
    if isempty(str2num(char(table_C(i,21)))) ~= 0
        table_C{i,21} = '0';
    end
    if isempty(str2num(char(table_C(i,22)))) ~= 0
        table_C{i,22} = '0';
    end
    if isempty(str2num(char(table_C(i,23)))) ~= 0
        table_C{i,23} = '0';
    end
    if isempty(str2num(char(table_C(i,24)))) ~= 0
        table_C{i,24} = '0';
    end
    if isempty(str2num(char(table_C(i,25)))) ~= 0
        table_C{i,25} = '0';
    end
    if isempty(str2num(char(table_C(i,26)))) ~= 0
        table_C{i,26} = '0';
    end
    if isempty(str2num(char(table_C(i,27)))) ~= 0
        table_C{i,27} = '0';
    end
    if isempty(str2num(char(table_C(i,28)))) ~= 0
        table_C{i,28} = '0';
    end
    if isempty(str2num(char(table_C(i,30)))) ~= 0
        table_C{i,30} = '0';
    end
    if isempty(str2num(char(table_C(i,31)))) ~= 0
        table_C{i,31} = '0';
    end
    if isempty(str2num(char(table_C(i,32)))) ~= 0
        table_C{i,32} = '0';
    end
    if isempty(str2num(char(table_C(i,33)))) ~= 0
        table_C{i,33} = '0';
    end
    if isempty(str2num(char(table_C(i,34)))) ~= 0
        table_C{i,34} = '0';
    end
    if isempty(str2num(char(table_C(i,35)))) ~= 0
        table_C{i,35} = '0';
    end
    if isempty(str2num(char(table_C(i,36)))) ~= 0
        table_C{i,36} = '0';
    end
    if isempty(str2num(char(table_C(i,37)))) ~= 0
        table_C{i,37} = '0';
    end
    if isempty(str2num(char(table_C(i,38)))) ~= 0
        table_C{i,38} = '0';
    end
    if isempty(str2num(char(table_C(i,39)))) ~= 0
        table_C{i,39} = '0';
    end
end
pass_Data = varargin{1};
table_T = pass_Data{36};
T_i1 = table_T(:,1);
T_i2 = table_T(:,2);
T_i6 = table_T(:,6);
T_i13 = table_T(:,13);
if size(T_i1,1) == 0 || size(T_i2,1) == 0 || size(T_i6,1) == 0 ||size(T_i13,1) == 0
    msgbox('请先完成二维定向井屈曲计算！', '错误','error');
end
%计算M的值-------------------------------------------------------------------
table_D = pass_Data{3};
M_i14 = table_D(:,4);
M_i14 = M_i14(end,1);
D_i4={};
D_i4{end+1,1} = num2str( str2num(char(M_i14))/1000);    %/1000为单位换算
M_i14 = D_i4;
set(handles.y_4_2text13,'String',D_i4(1,1))
D_i3 = table_D(:,3);
%计算V需要用到的值-----------------------------------------------------------
table_B = pass_Data{2};
B_i1 = table_B(:,1);
B_i2 = table_B(:,2);
%计算VV需要用到的数据----------------------------------------------------------------
table_Q = pass_Data{34};
Q_i2 = table_Q(:,2);
Q_i9 = table_Q(:,9);
table_F =pass_Data{5};
F_i7 = table_F(:,7);

%判断之前是否计算过pass_Data---------------------------------------------------------------%
try
table_V = pass_Data{37};
ResM_4_2 = pass_Data{42};
Res_VV = pass_Data{38};
% if size(table_R) ~= 0 && size(table_R,2) == 6
    set(handles.y_4_2uitable1,'Data',table_V)
% end
% if size(ResM_4_2) ~= 0 && size(ResM_4_2,2) == 6
    set(handles.y_4_2edit1,'String',char(ResM_4_2(1,2)))
    set(handles.y_4_2edit2,'String',char(ResM_4_2(1,3)))
    set(handles.y_4_2edit3,'String',char(ResM_4_2(1,5)))
    set(handles.y_4_2edit4,'String',char(ResM_4_2(1,6)))
    set(handles.y_4_2text17,'String',char(ResM_4_2(1,4)))
% end
% if size(Res_VV) ~= 0 && size(Res_VV,2) == 4
    set(handles.y_4_2text5,'String',char(Res_VV(1,1)))
    set(handles.y_4_2text7,'String',char(Res_VV(1,2)))
    set(handles.y_4_2text9,'String',char(Res_VV(1,3)))
    set(handles.y_4_2text11,'String',char(Res_VV(1,4)))
% end
V_i1 = table_V(:,1);
V_i6 = table_V(:,6);
V_i7 = table_V(:,7);
%绘图---------------------------------------------------------------------------------------
fig42_1 = figure(421);
set(fig42_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig42_1,'menubar','none');
set(fig42_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_42_1 = str2num(char(V_i1));
x_fig_42_1 = str2num(char(V_i6)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_42_1,y_fig_42_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦阻力(kN)','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;

fig42_2 = figure(422);
set(fig42_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig42_2,'menubar','none');
set(fig42_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_42_2 = str2num(char(V_i1));
x_fig_42_2 = str2num(char(V_i7)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_42_2,y_fig_42_2,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦阻力(kN)','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
catch
end
%------------------------------------------------------------------------------------------%

% Choose default command line output for Result_4_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Result_4_2 wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Result_4_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in y_4_2pushbutton1.
function y_4_2pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to y_4_2pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data D_i3 M_i14 M_i15
global B_i1 B_i2
global Q_i2 Q_i9
global T_i1 T_i2 T_i6 T_i13
global VV_i2 VV_i3 VV_i4 VV_i5
global fig42_1 fig42_2
bool_value = 1;
if size(get(handles.y_4_2edit1,'String'),2) == 0 || size(get(handles.y_4_2edit2,'String'),2) == 0 || ...
        size(get(handles.y_4_2edit3,'String'),2) == 0 || size(get(handles.y_4_2edit4,'String'),2) == 0
    bool_value = 0;
    errordlg('请填写完整的扶正器数据！','错误')
end
if bool_value
%扶正器外径--------------------------------------------------------------------------
M_i16 = get(handles.y_4_2edit2,'String');
%计算并填写扶正器下入井段开始点深度--------------------------------------------------
M_i18 = get(handles.y_4_2edit3,'String');
M_i19 = get(handles.y_4_2edit4,'String');
M_i17 = cellstr( num2str( round( str2num(char(D_i3(end,1)))-str2num(char(M_i18))*str2num(char(M_i19))-20  ) ));
set(handles.y_4_2text17,'String',char(M_i17))
%V_i1,V_i2,V_i3,V_i4-----------------------------------------------------------------
V_i1 = T_i1;
V_i2 = T_i2;
V_i3 = T_i6;
V_i4 = T_i13;

%V_i5--------------------------------------------------------------------------------
V_i5 = zeros(size(V_i1)) + str2num(char(M_i14));   %先将V_i5建立为全M_i14的矩阵
%扶正器外径：M_i16   扶正器下入深度：M_i17   扶正器间距：M_i18   扶正器个数：M_i19
%---测深从0开始---    
V_i5(round(str2num(char(M_i17)))+1,1) = str2num(char(M_i16));    %起始点先插入一个扶正器
n = 1;  %扶正器计数
m = 0;  %下入间隔计数
for i = str2num(char(M_i17)):size(V_i1,1)
    m = m+1;
    if m==round(str2num(char(M_i18)))    %判断是否循环到插入扶正器间隔处
        if n ~= str2num(char(M_i19))    %判断扶正器个数（扶正器是否插入完毕）
            V_i5(i,1) = str2num(char(M_i16));
            m = 0;    %重新计数下入间隔
            n = n+1;
        else
            break
        end
    end
end
V_i5 = cellstr(num2str(V_i5));

%V_i6------------------------V_i+1,6+ABS(V_i,4)*B_i,5--------------------------------
%V_i7--------------------V_i+1,7+ABS(V_i,4)*V_i,5*B_i,5/2----------------------------
V_i6 = zeros(size(V_i1));
V_i7 = zeros(size(V_i1));
for j = size(V_i6,1):-1:2
    for i=1:size(B_i1,1)    %这里B_i5需要判断所处的井段
        if strcmp(char(B_i1(i,1)),'裸眼') == 1
            B_i5 = 0.29;
            break
        elseif strcmp(char(B_i1(i,1)),'套管') == 1
            if str2num(char(V_i1(j,1))) <= str2num(char(B_i2(i,1)))
                B_i5 = 0.24;
            elseif str2num(char(V_i1(j,1))) > str2num(char(B_i2(i,1)))
                B_i5 = 0.29;
            end
            break
        end
    end
    V_i6(j-1,1) = V_i6(j,1) + abs(str2num(char(V_i4(j-1,1)))) * B_i5;
    V_i7(j-1,1) = V_i7(j,1) + abs(str2num(char(V_i4(j-1,1)))) * str2num(char(V_i5(j,1))) * B_i5 / 2;
end
V_i6 = cellstr(num2str(V_i6));
V_i7 = cellstr(num2str(V_i7));

%最终界面显示--------------------------------------------------------------------
VV_i2 = num2str(max(str2num(char(V_i6))));
VV_i3 = num2str(max(str2num(char(V_i7))));
VV_i4 = num2str( str2num(char(Q_i2(end,1))) ./ (max(str2num(char(V_i7))) + str2num(char(Q_i9(1,1))))  );
if str2num(VV_i4) > 1.15
    VV_i5 = '满足要求';
else
    VV_i5 = '不满足要求';
end
set(handles.y_4_2text5,'String',VV_i2)
set(handles.y_4_2text7,'String',VV_i3)
set(handles.y_4_2text9,'String',VV_i4)
set(handles.y_4_2text11,'String',VV_i5)
Data_V = [V_i1,V_i2,V_i3,V_i4,V_i5,V_i6,V_i7];
set(handles.y_4_2uitable1,'Data',Data_V)

%写pass_Data值------------------------------------------------------------------------------
M_i15 = get(handles.y_4_2edit1,'String');
pass_Data{42} = [M_i14,M_i15,M_i16,M_i17,M_i18,M_i19];
pass_Data{37} = Data_V;
pass_Data{38} = [cellstr(VV_i2),cellstr(VV_i3),{VV_i4},{VV_i5}];

%绘图---------------------------------------------------------------------------------------
fig42_1 = figure(421);
set(fig42_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig42_1,'menubar','none');
set(fig42_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_42_1 = str2num(char(V_i1));
x_fig_42_1 = str2num(char(V_i6)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_42_1,y_fig_42_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦阻力(kN)','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;

fig42_2 = figure(422);
set(fig42_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig42_2,'menubar','none');
set(fig42_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_42_2 = str2num(char(V_i1));
x_fig_42_2 = str2num(char(V_i7)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_42_2,y_fig_42_2,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦阻力(kN)','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;

handles.output = pass_Data;% 将数据发送到 handles.output 中。
%当遇到 uiresume 时程序继续运行，执行 OutputFcn ，将修改之后的值通过 handles.output 输出
guidata(hObject, handles);  % 当 handles 结构体中的数据发生改变时，必须使用 guidata 更新 handles 结构体
uiresume(handles.figure1)   %继续执行被uiwait中断的程序
end

% --- Executes on button press in y_4_2pushbutton2.
function y_4_2pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to y_4_2pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fig42_1 fig42_2 pass_Data
%导出报告-------------------------------------------------------------------
filter = {'*.docx';'*.*'};
[Filename,Pathname] = uiputfile(filter,'另存为','data.docx');  %创建文件保存对话框
if (Filename==0 & Pathname==0)
    msgbox('您没有导出报告!','确认','error');
else
    str=[Pathname Filename];
    %生成Word文档
    filespec_user = [str];  % 设定测试Word文件名和路径
    % 判断Word是否已经打开，若已打开，就在打开的Word中进行操作，否则就打开Word
    try
        % 若Word服务器已经打开，返回其句柄Word
        Word = actxGetRunningServer('Word.Application');
    catch
    % 否则，创建一个Microsoft Word服务器，返回句柄Word
        Word = actxserver('Word.Application');
    end
    Word.Visible = 1; % 或set(Word, 'Visible', 1);

    % 若测试文件存在，打开该测试文件，否则，新建一个文件，并保存，文件名为测试.docx
    if exist(filespec_user,'file')
        Document = Word.Documents.Open(filespec_user);
    % Document = invoke(Word.Documents,'Open',filespec_user);
    else
        Document = Word.Documents.Add;
    % Document = invoke(Word.Documents, 'Add');
        Document.SaveAs2(filespec_user);
    end

    % 设定光标位置从头开始
    Content = Document.Content;
    Selection = Word.Selection;
    Paragraphformat = Selection.ParagraphFormat;

    % 设定页面大小
    Document.PageSetup.TopMargin = 60; % 单位像素
    Document.PageSetup.BottomMargin = 45;
    Document.PageSetup.LeftMargin = 45;
    Document.PageSetup.RightMargin = 45;

    %板块
    Selection.Text = '五、定向井摩阻扭矩计算结果';
    Selection.Font.Size = 14;
    Selection.Font.Bold = 1; 
    Selection.MoveDown;
    Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
    Selection.TypeParagraph;    %插入新的空段落
    Selection.Text = '已知：';
    Selection.Font.Size = 12;
    Selection.Font.Bold = 1; 
    Selection.MoveDown;
    Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
    Selection.TypeParagraph;    %插入新的空段落      
    Selection.Start = Content.end; % 设定光标位置为最后
    Selection.Font.Bold = 0; 

    %绘制数据表格
    Selection.Font.Size = 11;   %设置表格中字体大小为11
    Tables = Document.Tables.Add(Selection.Range,2,6);    % 2行 6列
    DTI42_1 = Document.Tables.Item(1); % 或DTI = Tables;
    DTI42_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
    DTI42_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
    DTI42_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
    DTI42_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI42_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
    DTI42_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
    % 指定各单元格内容
    DTI42_1.Cell(1,1).Range.Text = '钻井套管外径（m）';
    DTI42_1.Cell(1,2).Range.Text = '是否添加扶正器（kN）';
    DTI42_1.Cell(1,3).Range.Text = '扶正器外径（m）';
    DTI42_1.Cell(1,4).Range.Text = '扶正器下入井段开始点（m）';
    DTI42_1.Cell(1,5).Range.Text = '扶正器下入间隔（m）';
    DTI42_1.Cell(1,6).Range.Text = '扶正器下入数量（个）';
%             DTI4_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

    M_4_2 = pass_Data{42};
    %填写数据
    DTI42_1.Cell(2,1).Range.Text = char(M_4_2(1,1));
    DTI42_1.Cell(2,2).Range.Text = char(M_4_2(1,2));
    DTI42_1.Cell(2,3).Range.Text = char(M_4_2(1,3));
    DTI42_1.Cell(2,4).Range.Text = char(M_4_2(1,4));
    DTI42_1.Cell(2,5).Range.Text = char(M_4_2(1,5));
    DTI42_1.Cell(2,6).Range.Text = char(M_4_2(1,6));

    %”求得“模块
    Selection.Start = Content.end; % 设定光标位置为最后
    Selection.TypeParagraph;    %插入新的空段落
    Selection.Text = '求得：';
    Selection.Font.Size = 12;
    Selection.Font.Bold = 0; 
    Selection.MoveDown;
    Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
    Selection.TypeParagraph;    %插入新的空段落      
    Selection.Start = Content.end; % 设定光标位置为最后
    Selection.Font.Bold = 0; 
    
    %绘制数据表格
    Selection.Font.Size = 11;   %设置表格中字体大小为11
    Tables = Document.Tables.Add(Selection.Range,2,5);    % 2 行 3列
    DTI42_2 = Document.Tables.Item(2); % 或DTI = Tables;
    DTI42_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
    DTI42_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
    DTI42_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
    DTI42_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI42_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
    DTI42_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中

    % 指定各单元格内容
    DTI42_2.Cell(1,1).Range.Text = '计算参数';
    DTI42_2.Cell(1,2).Range.Text = '最大摩擦阻力（kN）';
    DTI42_2.Cell(1,3).Range.Text = '最大摩擦扭矩(kN·m)';
    DTI42_2.Cell(1,4).Range.Text = '综合抗扭安全系数';
    DTI42_2.Cell(1,5).Range.Text = '校核结果';
    
    VV_Data = pass_Data{38};
    %填写数据
    DTI42_2.Cell(2,1).Range.Text = '结果大小'; 
    DTI42_2.Cell(2,2).Range.Text = char(VV_Data(1,1));  
    DTI42_2.Cell(2,3).Range.Text = char(VV_Data(1,2));  
    DTI42_2.Cell(2,4).Range.Text = char(VV_Data(1,3));  
    DTI42_2.Cell(2,5).Range.Text = char(VV_Data(1,4));  
    
    %导出图片
    Selection.Start = Content.end; % 设定光标位置为最后
    Selection.TypeParagraph;    %插入新的空段落

    hObject_fig42_1 = findobj(fig42_1);
    hObject_fig42_1 = hObject_fig42_1(1,1);

    hObject_fig42_2 = findobj(fig42_2);
    hObject_fig42_2 = hObject_fig42_2(1,1);

    hgexport(hObject_fig42_1, '-clipboard');
    Selection.Range.Paragraphs.Item(1).Range.Paste;

    Selection.Start = Content.end; % 设定光标位置为最后
    Selection.TypeParagraph;    %插入新的空段落       
    hgexport(hObject_fig42_2, '-clipboard');    %将图形复制到Microsoft? Windows粘贴板
    Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %将图形粘贴到当前文档里

    Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
    Document.Save; % 保存文档
end

function y_4_2edit1_Callback(hObject, eventdata, handles)
% hObject    handle to y_4_2edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4_2edit1 as text
%        str2double(get(hObject,'String')) returns contents of y_4_2edit1 as a double


% --- Executes during object creation, after setting all properties.
function y_4_2edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4_2edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4_2edit2_Callback(hObject, eventdata, handles)
% hObject    handle to y_4_2edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4_2edit2 as text
%        str2double(get(hObject,'String')) returns contents of y_4_2edit2 as a double


% --- Executes during object creation, after setting all properties.
function y_4_2edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4_2edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4_2edit3_Callback(hObject, eventdata, handles)
% hObject    handle to y_4_2edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4_2edit3 as text
%        str2double(get(hObject,'String')) returns contents of y_4_2edit3 as a double


% --- Executes during object creation, after setting all properties.
function y_4_2edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4_2edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4_2edit4_Callback(hObject, eventdata, handles)
% hObject    handle to y_4_2edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4_2edit4 as text
%        str2double(get(hObject,'String')) returns contents of y_4_2edit4 as a double


% --- Executes during object creation, after setting all properties.
function y_4_2edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4_2edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function y_4_2text13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4_2text13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
