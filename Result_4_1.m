function varargout = Result_4_1(varargin)
% RESULT_4_1 MATLAB code for Result_4_1.fig
%      RESULT_4_1, by itself, creates a new RESULT_4_1 or raises the existing
%      singleton*.
%
%      H = RESULT_4_1 returns the handle to a new RESULT_4_1 or the handle to
%      the existing singleton*.
%
%      RESULT_4_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULT_4_1.M with the given input arguments.
%
%      RESULT_4_1('Property','Value',...) creates a new RESULT_4_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Result_4_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Result_4_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Result_4_1

% Last Modified by GUIDE v2.5 03-Mar-2020 19:35:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_4_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_4_1_OutputFcn, ...
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


% --- Executes just before Result_4_1 is made visible.
function Result_4_1_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','直井磨损扭矩计算');

global pass_Data c_Array
global M_i14 D_n3 D_n4 S_i1 S_i2 S_i3 K_i1 K_i3 B_i1 B_i3 O_i2 O_i9 F_i7
pass_Data = varargin{1};
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
%--------------------------------------------------------------------------
%计算M的值-----------------------------------------------------------------
table_D = pass_Data{3};
M_i14 = table_D(:,4);
M_i14 = M_i14(1,1);
D_n4={};
D_n4{end+1,1} = num2str( str2num(char(M_i14))/1000);
set(handles.y_4text9,'String',D_n4(1,1))
D_n3 = table_D(:,3);
%------------------------------------------------------------------------------------
%计算U需要用到的数据-----------------------------------------------------------------
table_S = pass_Data{11};
S_i1 = table_S(:,1);
S_i2 = table_S(:,2);
S_i3 = table_S(:,3);
table_K = pass_Data{7};
K_i3 = table_K(:,3);
K_i1 = table_K(:,1);
table_B = pass_Data{2};
B_i1 = table_B(:,1);
B_i3 = table_B(:,3);
%------------------------------------------------------------------------------------
%计算UU需要用到的数据----------------------------------------------------------------
table_O = pass_Data{9};
O_i2 = table_O(:,2);
O_i9 = table_O(:,9);
table_F =pass_Data{5};
F_i7 = table_F(:,7);

%判断之前是否计算过pass_Data---------------------------------------------------------------%
try
table_U = pass_Data{12};
ResM_4_1 = pass_Data{17};
Res_UU = pass_Data{30};
% if size(table_R) ~= 0 && size(table_R,2) == 6
    set(handles.y_4uitable2,'Data',table_U)
% end
% if size(ResM_4_1) ~= 0 && size(ResM_4_1,2) == 6
    set(handles.y_4text11,'String',char(ResM_4_1(1,2)))
    set(handles.y_4edit6,'String',char(ResM_4_1(1,3)))
    set(handles.y_4edit7,'String',char(ResM_4_1(1,5)))
    set(handles.y_4edit9,'String',char(ResM_4_1(1,6)))
    set(handles.y_4edit8,'String',char(ResM_4_1(1,4)))
% end
% if size(Res_UU) ~= 0 && size(Res_UU,2) == 4
    set(handles.y_4edit2,'String',char(Res_UU(1,1)))
    set(handles.y_4edit3,'String',char(Res_UU(1,2)))
    set(handles.y_4edit4,'String',char(Res_UU(1,3)))
    set(handles.y_4edit5,'String',char(Res_UU(1,4)))
% end
U_i1 = table_U(:,1);
U_i5 = table_U(:,5);
U_i6 = table_U(:,6);
%第一幅图
fig4_1 = figure(41);
set(fig4_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_1,'menubar','none');
set(fig4_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_1 = str2num(char(U_i1));
x_fig_1 = str2num(char(U_i5)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦阻力/kN','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第二幅图
fig4_2 = figure(42);
set(fig4_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_2,'menubar','none');
set(fig4_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_2 = str2num(char(U_i1));
x_fig_2 = str2num(char(U_i6)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_2,y_fig_2,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦扭矩/(kN·m)','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
catch
end
%------------------------------------------------------------------------------------------%

% Choose default command line output for Result_4_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Result_4_1 wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Result_4_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
try
varargout{1} = handles.output;
catch
end


% --- Executes on button press in y_4pushbutton1.
function y_4pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to y_4pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data S_i1 S_i2 S_i3 K_i1 K_i3 B_i1 B_i3 O_i2 O_i9 D_n3 F_i7
global fig4_1 fig4_2
bool_value = 1;
if size(get(handles.y_4text11,'String'),2) == 0 || size(get(handles.y_4edit6,'String'),2) == 0 || ...
        size(get(handles.y_4edit8,'String'),2) == 0 || size(get(handles.y_4edit9,'String'),2) == 0
    bool_value = 0;
    errordlg('请填写完整的扶正器数据！','错误')
end
if bool_value
%填写扶正器下入j井段开始点深度--------------------------------------------------
M_i18 = get(handles.y_4edit8,'String')
M_i19 = get(handles.y_4edit9,'String')
M_i17 = round( str2num(char(D_n3(end,1)))-str2num(char(M_i18))*str2num(char(M_i19))-20  )
set(handles.y_4edit7,'String',M_i17)
set(handles.y_4edit7,'Visible','on')
set(handles.y_4text13,'Visible','on')
%------------------------------------------------------------------------------
U_i1 = S_i1;
% U_i2 = S_i2(1,1);
% U_i3 = S_i3(1,1);
%通过S_i3确定M_i6所在的行数--------------------------------------------------------
for i=1:size(S_i3,1)
    if str2num(char(S_i3(i,1))) ~= 0
        hang_M_i6 = i
        break
    end
end

%重新计算U_i1 U_i2 U_i3--------------------------------------------------------
M_i17 = get(handles.y_4edit7,'String');
% M_i17 = round( num2str(D_n3(1,1))-num2str(M_i18(1,1))*num2str(M_i19(1,1))-20  );
%U_i1插入M_i17---------------------------------------------------------------------------
for i=1:size(U_i1,1)
    if str2num(char(U_i1(i,1))) >= str2num(M_i17)
        hang = i-1     %M_i17放在“hang”与“hang+1”之间（以U_i1为基础）
        break
    end
end
up_U_i1 = U_i1(1:hang,1);                           %M_i17之前的部分
down_U_i1 = U_i1(hang+2:end,1);                     %M_1,6之后的部分（测深数据"0""850""1250"不包括"850"这一行）
addData = str2num(M_i17);                           %从M_i17开始
up_U_i1{end+1,1} = num2str(addData-1)               %循环之前，先插入第a-1行     * M_i17变为‘hang+2’行
while addData < str2num(char(U_i1(hang_M_i6,1)))         %一直累加到M_1,6上一行
    up_U_i1{end+1,1} = num2str(addData);
    addData = addData+1;
end
U_i1 = [up_U_i1;down_U_i1];                          %U_i1计算完成，后续计算的行数都与U_i1相同

%计算U_i2--------------------------------------------------------------------
down_U_i2 = S_i2(hang_M_i6:end,1);                  %U_i2的b到k行,即M_i6对应的S_i2到最后一行
%基本思想：通过K表第一列的垂深与U_i1比较，从而确定K_i3的值
U_m16_hang = size(U_i1,1)-size(down_U_i2,1)+1;          %M_i16在U中的行数
for i=U_m16_hang-1:-1:1                             %计算U_i2上半部分  U_b,2+K_i+1,3*[U_i+1,1-U_i,1]*0.001
    for j = 1:size(K_i1,1)-1  
        if str2num(char(K_i1(j,1))) <= str2num(char(U_i1(i,1))) 
%                 && str2num(char(K_i1(j+1,1))) >= str2num(char(U_i1(i,1)))
            newK_i3 = str2num(char(K_i3(j,1)))
            break
        end
    end 
    new_U_i2 = str2num(char(down_U_i2(1,1))) + newK_i3 * ...
        (str2num(char(U_i1(i+1,1))) - str2num(char(U_i1(i,1)))) * 0.001;
    down_U_i2 = [{num2str(new_U_i2)};down_U_i2];
end
U_i2 = down_U_i2;

%计算U_i3--------------------------------------------------------------------
up_U_i3={};
for i=1:U_m16_hang-1
    up_U_i3{end+1,1} = '0';
end
down_U_i3 = S_i3(hang_M_i6:end,1);
U_i3 = [up_U_i3;down_U_i3];

%U_i4----------------------------------------------------------------------
U_i4 = {};
M_i14 = get(handles.y_4text9,'String');
% for i = 1:U_m16_hang-1  %循环赋值M_i14直到M_1,16上一行
for i = 1:hang+2-1              %循环赋值M_i14直到M_1,17上一行,'hang+2'为M_i17的行数
    U_i4{end+1,1} = char(M_i14);
end
try
    M_i16 = get(handles.y_4edit6,'String');
    if size(M_i16,1) == 0 || size(M_i16,2) == 0 
        msgbox('请输入扶正器外径！', '错误','error');
    else   %添加扶正器            %扶正器间距：M_i18   扶正器个数：M_i19
        if size(get(handles.y_4edit9,'String'),1)==0 || size(get(handles.y_4edit9,'String'),2)==0
            msgbox('请输入扶正器个数！', '错误','error');
        else
            if size(get(handles.y_4edit8,'String'),1)==0 || size(get(handles.y_4edit8,'String'),2)==0
                msgbox('请输入扶正器下入间距！', '错误','error');
            else
    %             for j = 1:(size(U_i1,1)-U_m16_hang+1)
                n = 1;  %从第1个扶正器开始
                m=0;    %下入间距计数
                U_i4{end+1,1} = num2str( str2num(char(M_i16))  );
                for j = 1:(size(U_i1,1)-(hang+2)+1)
    %                 while m == round(str2num(char(M_i18)))
                    if round(str2num(char(M_i18)))==m    %判断是否循环到插入扶正器间隔处
                        U_i4{end+1,1} = num2str( str2num(char(M_i16))  );
                        m=0;    %重置扶正器间隔
                        n=n+1;  %统计扶正器个数+1
                    else
                        U_i4{end+1,1} = char(M_i14);
                    end
                        m = m+1;
    %                 end
                    if n == str2num(char(M_i19))    %扶正器添加完毕，break跳出循环
                        break
                    end
                end
            end
        end
    end
    for k = 1:size(U_i1,1)-size(U_i4,1)   %继续循环，将后面U_i4补全（M_1,14）
        U_i4{end+1,1} = char(M_i14);
    end
catch
    msgbox('请检查扶正器插入间距及个数是否输入正确！', '错误','error');
end

%U_i5----------------------------------------------------------------------
U_i5 = {};
for k = 1:size(U_i1,1)
    U_i5{end+1,1} = '0';
end
for j = size(U_i1,1)-1:-1:1
    for i=1:size(B_i1,1)
        if strcmp(char(B_i1(i,1)),'裸眼') == 1
            B_i5 = 0.29;
            break
        elseif strcmp(char(B_i1(i,1)),'套管') == 1
            if str2num(char(U_i1(j,1))) <= str2num(char(B_i3(i,1)))
                B_i5 = 0.24;
            elseif str2num(char(U_i1(j,1))) > str2num(char(B_i3(i,1)))
                B_i5 = 0.29;
            end
            break
        end
    end
    %U_i+1,5+ABS(U_i,3)*B_i,5
    U_i5{j,1} = num2str( str2num(char(U_i5(j+1,1))) + abs(  str2num(char( U_i3(j,1) ))  )*B_i5  );
end

%U_i6----------------------------------------------------------------------
U_i6 = {};
for k = 1:size(U_i1,1)
    U_i6{end+1,1} = '0';
end
for j = size(U_i1,1)-1:-1:1
    for i=1:size(B_i1,1)
        if strcmp(char(B_i1(i,1)),'裸眼') == 1
            B_i5 = 0.29;
            break
        elseif strcmp(char(B_i1(i,1)),'套管') == 1
            if str2num(char(U_i1(j,1))) <= str2num(char(B_i3(i,1)))
                B_i5 = 0.24;
            elseif str2num(char(U_i1(j,1))) > str2num(char(B_i3(i,1)))
                B_i5 = 0.29;
            end
            break
        end
    end
    %U_i+1,6+ABS(U_i,3)*B_i,5/2
    U_i6{j,1} = num2str(     str2num(char(U_i6(j+1,1))) + abs(  str2num(char( U_i3(j,1) ))  )...
        *str2num(char(U_i4(j,1))) * B_i5/2      );
end

%计算UU最终显示界面---------------------------------------------------------
UU_1_2 = num2str(  max(str2num(char(U_i5))) ,'%.3f');
set(handles.y_4edit2,'String',UU_1_2)
UU_1_3 = num2str(  max(str2num(char(U_i6))) ,'%.3f' );
set(handles.y_4edit3,'String',UU_1_3)
%O_n+1,2/（MAX（U_i,6）+O_1,9）
UU_1_4 = num2str(   str2num(char(O_i2(end,1))) / (  max(str2num(char(U_i6))) + str2num(char(O_i9(1,1)))   )    );
set(handles.y_4edit4,'String',UU_1_4)
if str2num(UU_1_4) > str2num(char(F_i7(1,1)))
    set(handles.y_4edit5,'String','满足要求')
elseif str2num(UU_1_4) <= str2num(char(F_i7(1,1)))
    set(handles.y_4edit5,'String','不满足要求')
end

%U显示在table表中-----------------------------------------------------------
result_Data = [U_i1,U_i2,U_i3,U_i4,U_i5,U_i6];
set(handles.y_4uitable2,'Data',result_Data);
pass_Data{12} = result_Data;    %把U返回给main
pass_Data{17} = [get(handles.y_4text9,'String'),get(handles.y_4text11,'String'),get(handles.y_4edit6,'String')...
    get(handles.y_4edit8,'String'),get(handles.y_4edit7,'String'),get(handles.y_4edit9,'String')];
pass_Data{30} = [{UU_1_2},{UU_1_3},{UU_1_4},{get(handles.y_4edit5,'String')}];

%绘图-----------------------------------------------------------------------
%第一幅图
fig4_1 = figure(41);
set(fig4_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_1,'menubar','none');
set(fig4_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_1 = str2num(char(U_i1));
x_fig_1 = str2num(char(U_i5)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦阻力/kN','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第二幅图
fig4_2 = figure(42);
set(fig4_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_2,'menubar','none');
set(fig4_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_2 = str2num(char(U_i1));
x_fig_2 = str2num(char(U_i6)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_2,y_fig_2,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦扭矩/(kN·m)','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
end

function y_4edit1_Callback(hObject, eventdata, handles)
% hObject    handle to y_4edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4edit1 as text
%        str2double(get(hObject,'String')) returns contents of y_4edit1 as a double


% --- Executes during object creation, after setting all properties.
function y_4edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4edit2_Callback(hObject, eventdata, handles)
% hObject    handle to y_4edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4edit2 as text
%        str2double(get(hObject,'String')) returns contents of y_4edit2 as a double


% --- Executes during object creation, after setting all properties.
function y_4edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4edit3_Callback(hObject, eventdata, handles)
% hObject    handle to y_4edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4edit3 as text
%        str2double(get(hObject,'String')) returns contents of y_4edit3 as a double


% --- Executes during object creation, after setting all properties.
function y_4edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4edit4_Callback(hObject, eventdata, handles)
% hObject    handle to y_4edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4edit4 as text
%        str2double(get(hObject,'String')) returns contents of y_4edit4 as a double


% --- Executes during object creation, after setting all properties.
function y_4edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4edit5_Callback(hObject, eventdata, handles)
% hObject    handle to y_4edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4edit5 as text
%        str2double(get(hObject,'String')) returns contents of y_4edit5 as a double


% --- Executes during object creation, after setting all properties.
function y_4edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in y_4pushbutton2.
function y_4pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to y_4pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fig4_1 fig4_2
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
        Selection.Text = '五、直井摩阻扭矩计算结果';
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
        Tables = Document.Tables.Add(Selection.Range,2,6);    % 2行 4列
        DTI4_1 = Document.Tables.Item(1); % 或DTI = Tables;
        DTI4_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI4_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI4_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI4_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI4_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI4_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI4_1.Cell(1,1).Range.Text = '钻井套管外径（m）';
        DTI4_1.Cell(1,2).Range.Text = '是否添加扶正器（kN）';
        DTI4_1.Cell(1,3).Range.Text = '扶正器外径（m）';
        DTI4_1.Cell(1,4).Range.Text = '扶正器下入井段开始点（m）';
        DTI4_1.Cell(1,5).Range.Text = '扶正器下入间隔（m）';
        DTI4_1.Cell(1,6).Range.Text = '扶正器下入数量（个）';
%             DTI4_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI4_1.Cell(2,1).Range.Text = char(get(handles.y_4text9,'String'));
        DTI4_1.Cell(2,2).Range.Text = get(handles.y_4text11,'String');
        DTI4_1.Cell(2,3).Range.Text = char(get(handles.y_4edit6,'String'));
        DTI4_1.Cell(2,4).Range.Text = char(get(handles.y_4edit7,'String'));
        DTI4_1.Cell(2,5).Range.Text = char(get(handles.y_4edit8,'String'));
        DTI4_1.Cell(2,6).Range.Text = char(get(handles.y_4edit9,'String'));


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
        DTI4_2 = Document.Tables.Item(2); % 或DTI = Tables;
        DTI4_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI4_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI4_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI4_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI4_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI4_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI4_2.Cell(1,1).Range.Text = '计算参数';
        DTI4_2.Cell(1,2).Range.Text = '最大摩擦阻力（kN）';
        DTI4_2.Cell(1,3).Range.Text = '最大摩擦扭矩(kN·m)';
        DTI4_2.Cell(1,4).Range.Text = '综合抗扭安全系数';
        DTI4_2.Cell(1,5).Range.Text = '校核结果';
        %填写数据
        DTI4_2.Cell(2,1).Range.Text = '结果大小'; 
        DTI4_2.Cell(2,2).Range.Text = char(get(handles.y_4edit2,'String'));  
        DTI4_2.Cell(2,3).Range.Text = char(get(handles.y_4edit3,'String'));
        DTI4_2.Cell(2,4).Range.Text = char(get(handles.y_4edit4,'String'));
        DTI4_2.Cell(2,5).Range.Text = char(get(handles.y_4edit5,'String'));
        
         %导出图片-------------------
            Selection.Start = Content.end; % 设定光标位置为最后
            Selection.TypeParagraph;    %插入新的空段落
            
            hObject_fig4_1 = findobj(fig4_1);
            hObject_fig4_1 = hObject_fig4_1(1,1);
            
            hObject_fig4_2 = findobj(fig4_2);
            hObject_fig4_2 = hObject_fig4_2(1,1);
            
            hgexport(hObject_fig4_1, '-clipboard');
            Selection.Range.Paragraphs.Item(1).Range.Paste;
            
            Selection.Start = Content.end; % 设定光标位置为最后
            Selection.TypeParagraph;    %插入新的空段落       
            hgexport(hObject_fig4_2, '-clipboard');    %将图形复制到Microsoft? Windows粘贴板
            Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %将图形粘贴到当前文档里

        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
        Document.Save; % 保存文档
%             Document.Close; % 关闭文档
%             Word.Quit; % 退出word服务器
end

% % --- Executes when selected cell(s) is changed in y_4uitable1.
% function y_4uitable1_CellSelectionCallback(hObject, eventdata, handles)
% % hObject    handle to y_4uitable1 (see GCBO)
% % eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
% %	Indices: row and column indices of the cell(s) currently selecteds
% % handles    structure with handles and user data (see GUIDATA)
% global row_1 col_1;
% row_1=eventdata.Indices(1);
% col_1=eventdata.Indices(2);
% if col_1 == 2
%     [indx tf]=listdlg('ListString',{'是','否'},...
%     'Name','选择一个','OKString','确定','CancelString','取消',...
%     'SelectionMode','single','ListSize',[200 100]);
%     if (indx == 1)
%         hObject.Data(row_1,col_1) = {'是'};
%     elseif (indx == 2)
%         hObject.Data(row_1,col_1) = {'否'};
%     end
% end

% 
% % --- Executes during object creation, after setting all properties.
% function y_4uitable1_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to y_4uitable1 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% global M_i14
% handles.y_4uitable1.Data(:,1) = M_i14;
% handles.y_4uitable1.Data(:,2) = {'是'};
% handles.y_4uitable1.Data(2:end,3) = {'—'};
% handles.y_4uitable1.Data(2:end,4) = {'—'};
% handles.y_4uitable1.Data(2:end,5) = {'—'};
% handles.y_4uitable1.Data(2:end,6) = {'—'};
% 
% % --- Executes when entered data in editable cell(s) in y_4uitable1.
% function y_4uitable1_CellEditCallback(hObject, eventdata, handles)
% % hObject    handle to y_4uitable1 (see GCBO)
% % eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
% %	Indices: row and column indices of the cell(s) edited
% %	PreviousData: previous data for the cell(s) edited
% %	EditData: string(s) entered by the user
% %	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
% %	Error: error string when failed to convert EditData to appropriate value for Data
% % handles    structure with handles and user data (see GUIDATA)
% global row_1 col_1 D_n3
% if col_1 == 5 || col_1 == 6
%     if handles.y_4uitable1.Data(5,1)~=[] && handles.y_4uitable1.Data(6,1)~=[]
%         M_i17 = round( num2str( round( str2num(D_n3{1,1}) - str2num(char(M_i18))*str2num(char(M_i19)) -20  ) )   );
%         handles.y_4uitable1.Data(4,1) = M_i17;
%     end
% end
% 


function y_4edit6_Callback(hObject, eventdata, handles)
% hObject    handle to y_4edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4edit6 as text
%        str2double(get(hObject,'String')) returns contents of y_4edit6 as a double


% --- Executes during object creation, after setting all properties.
function y_4edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4edit7_Callback(hObject, eventdata, handles)
% hObject    handle to y_4edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4edit7 as text
%        str2double(get(hObject,'String')) returns contents of y_4edit7 as a double


% --- Executes during object creation, after setting all properties.
function y_4edit7_CreateFcn(hObject, eventdata, handles)

global D_n3 M_i18 M_i19
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'Visible','on')
%(D_n,3-M_1,18*M_1,19-20)近似取整
% while(1)
%     pause(1);
%     if str2num(handles.y_4edit8.String)~=[] && str2num(handles.y_4edit9.String)~=[]
%         M_i17 = round( num2str(D_n3(1,1))-num2str(M_i18(1,1))*num2str(M_i19(1,1))-20  );
%         set(hObject,'String',M_i17)
%         break
%     end
% end


function y_4edit8_Callback(hObject, eventdata, handles)
% hObject    handle to y_4edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4edit8 as text
%        str2double(get(hObject,'String')) returns contents of y_4edit8 as a double


% --- Executes during object creation, after setting all properties.
function y_4edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4edit9_Callback(hObject, eventdata, handles)
% hObject    handle to y_4edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4edit9 as text
%        str2double(get(hObject,'String')) returns contents of y_4edit9 as a double


% --- Executes during object creation, after setting all properties.
function y_4edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function y_4text9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4text9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% global D_n4
% set(hObject,'String',D_n4(1,1))


% --- Executes during object creation, after setting all properties.
function y_4text13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4text13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','on')


% --- Executes during object creation, after setting all properties.
function text16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
