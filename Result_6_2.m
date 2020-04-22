function varargout = Result_6_2(varargin)
% RESULT_6_2 MATLAB code for Result_6_2.fig
%      RESULT_6_2, by itself, creates a new RESULT_6_2 or raises the existing
%      singleton*.
%
%      H = RESULT_6_2 returns the handle to a new RESULT_6_2 or the handle to
%      the existing singleton*.
%
%      RESULT_6_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULT_6_2.M with the given input arguments.
%
%      RESULT_6_2('Property','Value',...) creates a new RESULT_6_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Result_6_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Result_6_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Result_6_2

% Last Modified by GUIDE v2.5 21-Feb-2020 23:17:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_6_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_6_2_OutputFcn, ...
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


% --- Executes just before Result_6_2 is made visible.
function Result_6_2_OpeningFcn(hObject, eventdata, handles, varargin)
global pass_Data c_Array M_i20 M_i21 M_i22 M_i23 M_i24 M_i25 I_i2
global D_i3 D_i4 D_i5
pass_Data = varargin{1};
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','定向井摩阻扭矩计算');

%隐藏/显示“数据重现”按钮------------------------------------------------------
set(handles.y_6_2pushbutton3,'Visible','off')
if size(pass_Data{39},1)~=0 && size(pass_Data{39},2)~=0
    set(handles.y_6_2pushbutton3,'Visible','on')
end

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
M_i20 = table_D(:,7);

%M_i21
M_i21={};
D_i4 = table_D(:,4);
D_i5 = table_D(:,5);
D_i6 = table_D(:,6);
D_i7 = table_D(:,7);
for j = 1:size(table_D,1)
    for i=1:size(table_C,1)  %遍历C表的行数
        %外径
        D4 = table_C(i,2);
        DDD4 = num2str(D4{1});
        DDD4 = str2num(DDD4);
        %钢级
        D7 = table_C(i,5);
        DD7 = cellstr(D7{1});
        DDD7 = num2str(DD7{1});
        %线重
        D6 = str2num(char(table_C(i,4)));
        DDD6 = num2str(D6,'%.2f');
        DDD6 = str2num(DDD6);
        %内径
        D5 = str2num(char(table_C(i,7)));
        DDD5 = num2str(D5,'%.2f');
        DDD5 = str2num(DDD5);

        %C表：第2列外径，第5列内径，第4列线重，第7列钢级
        %D_n4:外径，D_n7钢级，D_n6:线重，D_n5：内径
        if(((abs(DDD4-str2num(cell2mat(D_i4(j,1)))))<=0.001) & strcmp(DDD7,cell2mat(D_i7(j,1))) ...
            & ((abs(DDD6-str2num(cell2mat(D_i6(j,1)))))<=0.001) & (abs(  DDD5-str2num(cell2mat(D_i5(j,1))))   )<=0.001)
            newM_i21 = table_C(i,10);  %管材屈服强度
            M_i21{end+1,1} = char(newM_i21);
            break
        end
    end
end

%M_i22  =  4.39*10^(-6) *(              M_n,21/6.894757) ^2+0.0020 *(            M_n,21   /6.894757)-0.0719
newM_i22 = 4.39*10^(-6).*(str2num(char(M_i21))/6.894757).^2+0.0020.*(str2num(char(M_i21))./6.894757)-0.0719;
M_i22 = {};
for i=1:size(table_D,1)
    M_i22{end+1,1} = num2str(newM_i22(i,1));
end

%M_i23
newM_i23 = 0.001.*str2num(char(table_D(:,4)));
M_i23 = {};
for i=1:size(table_D,1)
    M_i23{end+1,1} = num2str(newM_i23(i,1));
end

%M_i24
M = pass_Data{41};
if size(M,1)==0 || size(M,2)==0
    msgbox('请先完成旋转扭矩计算！', '错误','error');
else
    M_i24 = M{1,2};
    table_M = [M_i20,M_i21,M_i22,M_i23];
    set(handles.y_6_2uitable1,'Data',table_M)
    set(handles.y_6_2text4,'String',M_i24)
end

% Choose default command line output for Result_6_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Result_6_2 wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Result_6_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
try
varargout{1} = handles.output;
catch
end



function y_6_2edit1_Callback(hObject, eventdata, handles)
% hObject    handle to y_6_2edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_6_2edit1 as text
%        str2double(get(hObject,'String')) returns contents of y_6_2edit1 as a double


% --- Executes during object creation, after setting all properties.
function y_6_2edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_6_2edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in y_6_2pushbutton1.
function y_6_2pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to y_6_2pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data M_i20 M_i21 M_i22 M_i23 M_i24 M_i25
global fig62_1 fig62_2 fig62_3 fig62_4
global X_b
M_i25 = get(handles.y_6_2edit1,'String');
logical = 0;
if size(M_i25,1)==0 || size(M_i25,2)==0
    msgbox('请输入机械钻速！', '错误','error');
    logical = 1;
end
if logical == 0 %钻速判断完毕，开始计算
try  %开始计算
h6_2=msgbox('请稍后，计算中……','提示');
%计算过程中需要用到的值------------------------------------------------------------------
table_V = pass_Data{37};
V_i1 = table_V(:,1);
V_i2 = table_V(:,2);
V_i4 = table_V(:,4);
table_B = pass_Data{2};
B_i1 = table_B(:,1);
B_i2 = table_B(:,2);
B_i3 = table_B(:,3);
B_i4 = table_B(:,4);
table_D = pass_Data{3};
D_i3 = table_D(:,3);
D_i4 = table_D(:,4);
D_i5 = table_D(:,5);
table_J = pass_Data{31};
J_i3 = table_J(:,3);
%X_i1,X_i2,X_i3-------------------------------------------------------------------------
X_i1 = V_i1;
X_i2 = V_i2;
X_i3 = V_i4;
%X_i4-----------------------------------------------------------------------------------
X_i4 = {};
for i=1:size(V_i1,1)
    if  strcmp(B_i1{1,1},'套管')  == 1
        if str2num(char(X_i1(i,1))) <= str2num(char(B_i2(1,1)))
            X_i4{end+1,1} = '0.24';
        elseif str2num(char(X_i1(i,1))) > str2num(char(B_i2(1,1)))
            X_i4{end+1,1} = '0.29';
        end
    elseif strcmp(B_i1{1,1},'裸眼')  == 1
        X_i4{end+1,1} = '0.29';
    end
end
%X_i5-----------------------------------------------------------------------------------
X_i5 = {};
for j = 1:size(V_i1,1)
    for i= 1:size(B_i3,1)
        if str2num(char(X_i1(j,1))) <= str2num(char(B_i3(i,1)))
            X_i5{end+1,1} = num2str( str2num(char(B_i4(i,1)))*0.001/2  );
            break
        elseif str2num(char(B_i3(i,1))) <= str2num(char(X_i1(j,1))) && str2num(char(X_i1(j,1))) <= str2num(char(B_i3(i+1,1)))
            X_i5{end+1,1} = num2str( str2num(char(B_i4(i+1,1)))*0.001/2  );
            break
        end
    end
end

%X_i6-----------------------------------------------------------------------------------
for i = 1:size(V_i1,1)
    if str2num(char(V_i4(i,1))) ~= 0
        X_b = i-1;
        break
    end
end
X_i6 = {};
for j = 1:size(V_i1,1)
    for i = 1:size(B_i3,1)
        if str2num(char(X_i1(j,1))) < str2num(char(X_i1(X_b,1)))
            X_i6{end+1,1} = '0';
            break
        elseif str2num(char(X_i1(j,1))) >= str2num(char(X_i1(X_b,1)))
            X_i6{end+1,1} = num2str( str2num(char(X_i1(j,1))) - str2num(char(X_i1(X_b,1)))  );
            break
        end
    end
end

%X_i7-----------------------------------------------------------------------------------
X_i7 = cellstr(strjust(num2str( 60.* str2num(char(M_i24)) .* str2num(char(X_i6)) ./ str2num(char(M_i25)) ),'left'));

%X_i8-----------------------------------------------------------------------------------
%IF(D_i-1,3<X_i1≤D_i3,"=PI()*X_i,7*M_i,23")
X_i8 = {};
for j = 1:size(V_i1,1)
    for i=1:size(D_i3,1)
        if str2num(char(X_i1(i,1))) <= str2num(char(D_i3(i,1)))
            X_i8{end+1,1} = num2str( pi .* str2num(char(X_i7(j,1))) .* str2num(char(M_i23(i,1)))  );
            break
        elseif str2num(char(D_i3(i,1))) <= str2num(char(X_i1(i,1))) && str2num(char(X_i1(i,1))) <= str2num(char(D_i3(i+1,1)))
            X_i8{end+1,1} =num2str(  pi .* str2num(char(X_i7(j+1,1))) .* str2num(char(M_i23(i,1)))  );
            break
        end
    end
end

%X_i9-----------------------------------------------------------------------------------
%IF(D_i-1,3<X_i1≤D_i,3,"=X_i-1,8+M_i,22*10^(-12)*X_i,4*ABS(X_i,3*1000)*(X_i,8-X_i-1,8)")
X_i9 = {'0'};
for j = 2:size(V_i1,1)
    for i=1:size(D_i3,1)
        if str2num(char(X_i1(j,1))) <= str2num(char(D_i3(i,1)))
            X_i9{end+1,1} = num2str( str2num(char(X_i9(j-1,1))) + str2num(char(M_i22(i,1)))*(10^(-12)) *...
                str2num(char(X_i4(j,1))) * abs(str2num(char(X_i3(j,1)))*1000)...
                *(   str2num(char(X_i8(j,1))) - str2num(char(X_i8(j-1,1)))   )   );
            break
        end
    end
end

%X_i10-----------------------------------------------------------------------------------
%AA：X_i9    rr：J_i3*0.001   RR：X_i5
X_i10={};
for i = 1:size(V_i1,1)
    for j = 1:size(D_i4,1)
        if str2num(char(J_i3(j+1,1))) <= (str2num(char(D_i4(j,1)))/2)
            RR = str2num(char(X_i5(i,1)));
            AA = str2num(char(X_i9(i,1)));
            rr = str2num(char(J_i3(j,1))) * 0.001;
            break
        end
    end
    X_i10{end+1,1}= num2str(roundn(double(   get_metreK(RR,AA,rr)   ),-16),16);
%     num2str(roundn(double(   get_metreK(RR,AA,rr)   ),-16),16);
end

%X_i11-----------------------------------------------------------------------------------
X_i11 = {};
for j = 1:size(V_i1,1)
    for i=1:size(D_i3,1)
        if str2num(char(X_i1(i,1))) <= str2num(char(D_i3(i,1)))
            X_i11{end+1,1} = num2str( (str2num(char(D_i4(i,1)))-str2num(char(D_i5(i,1))))/2   );
            break
        elseif str2num(char(D_i3(i,1))) <= str2num(char(X_i1(i,1))) && str2num(char(X_i1(i,1))) <= str2num(char(D_i3(i+1,1)))
            X_i11{end+1,1} = num2str( (str2num(char(D_i4(i,1)))-str2num(char(D_i5(i,1))))/2   );
            break
        end
    end
end
%X_i12-----------------------------------------------------------------------------------
%IF(D_i-1,3<X_i1≤D_i3,"=D_i,4/2+X_i,10*1000-X_i,5*1000")
X_i12 = {};
for j = 1:size(V_i1,1)
    for i=1:size(D_i3,1)
        if str2num(char(X_i1(j,1))) <= str2num(char(D_i3(i,1)))
            X_i12{end+1,1} = num2str( str2num(char(D_i4(i,1)))/2 + str2num(char(X_i10(j,1)))*1000 - str2num(char(X_i5(j,1)))*1000   );
            break
        elseif str2num(char(D_i3(i,1))) <= str2num(char(X_i1(i,1))) && str2num(char(X_i1(i,1))) <= str2num(char(D_i3(i+1,1)))
            X_i12{end+1,1} = num2str( str2num(char(D_i4(i,1)))/2 + str2num(char(X_i10(j,1)))*1000 - str2num(char(X_i5(j,1)))*1000   );
            break
        end
    end
end
%X_i13，X_i14，X_i15，X_i16，X_i17-----------------------------------------------------------------------------------
X_i13 = cellstr(num2str( str2num(char(X_i11)) - str2num(char(X_i12)) ));
X_i14 = cellstr(num2str( 17.27 .* str2num(char(X_i13)) - 81.86 ));
X_i15 = cellstr(num2str( ( str2num(char(X_i14(1,1))) - str2num(char(X_i14)) ) ./ str2num(char(X_i14(1,1)) ) .*100 ));
X_i16 = cellstr(num2str( -42.11 .* str2num(char(X_i13)).^2 + 1015.29 .* str2num(char(X_i13)) -2802.67 ));
X_i17 = cellstr(num2str( ( str2num(char(X_i16(1,1))) - str2num(char(X_i16)) ) ./ str2num(char(X_i16(1,1))) .* 100 ));

%显示及返回主界面计算结果--------------------------------------------------------------------------------------------
result_X_Data = [X_i1,X_i2,X_i3,X_i4,X_i5,X_i6,X_i7,X_i8,X_i9,X_i10,X_i11,X_i12,X_i13,X_i14,X_i15,X_i16,X_i17,];
result_M_Data1 = [M_i20,M_i21,M_i22,M_i23];
result_M_Data2 = [{M_i24},{M_i25}];
set(handles.y_6_2uitable2,'Data',result_X_Data)
pass_Data{39} = result_X_Data;
pass_Data{43} = result_M_Data1;
pass_Data{49} = result_M_Data2;

%底部数据计算及显示--------------------------------------------------------------------------------------------------
bottom1 = [char(X_i1(X_b,1)),'~',char(X_i1(end))];
bottom2 = num2str( max(str2num(char(X_i12)))  );
bottom3 = num2str( min(str2num(char(X_i14)))  );
bottom4 = num2str( max(str2num(char(X_i15)))  );
bottom5 = num2str( min(str2num(char(X_i16)))  );
bottom6 = num2str( max(str2num(char(X_i17)))  );
set(handles.y_6_2text7,'String',bottom1)
set(handles.y_6_2text9,'String',bottom2)
set(handles.y_6_2text11,'String',bottom3)
set(handles.y_6_2text13,'String',bottom4)
set(handles.y_6_2text15,'String',bottom5)
set(handles.y_6_2text17,'String',bottom6)

%绘图----------------------------------------------------------------------
delete(fig62_1)
delete(fig62_2)
delete(fig62_3)
delete(fig62_4)
%第一幅图
fig62_1 = figure(621);
set(fig62_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig62_1,'menubar','none');
set(fig62_1,'NumberTitle', 'off', 'Name', '磨损深度');
hold on;
y_fig62_1 = str2num(char(X_i1));
x_fig62_1 = str2num(char(X_i12)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig62_1,y_fig62_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱磨损深度（mm）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第二幅图
fig62_2 = figure(622);
set(fig62_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig62_2,'menubar','none');
set(fig62_2,'NumberTitle', 'off', 'Name', '抗挤强度');
hold on;
y_fig62_2 = str2num(char(X_i1));
x_fig62_2 = str2num(char(X_i14)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig62_2,y_fig62_2,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱极限剩余抗挤强度（kN）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第三幅图
fig62_3 = figure(623);
set(fig62_3,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig62_3,'menubar','none');
set(fig62_3,'NumberTitle', 'off', 'Name', '抗拉强度');
hold on;
y_fig62_3 = str2num(char(X_i1));
x_fig62_3 = str2num(char(X_i16)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig62_3,y_fig62_3,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱极限剩余抗拉强度（kN）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第四幅图
fig62_4 = figure(624);
set(fig62_4,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig62_4,'menubar','none');
set(fig62_4,'NumberTitle', 'off', 'Name', '强度降低百分比');
hold on;
y_fig62_4 = str2num(char(X_i1));
x_fig62_4_1 = str2num(char(X_i15)); 
x_fig62_4_2 = str2num(char(X_i17)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig62_4_1,y_fig62_4,'-b','LineWidth',1.5)
plot(x_fig62_4_2,y_fig62_4,'-r','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱极限剩余抗拉强度（kN）','FontSize',10);
ylabel('井深/m','FontSize',10);
legend({'抗挤强度降低百分比','抗拉强度降低百分比'},'Orientation','horizontal','Location','southoutside')
grid on;
hold off;

catch
    delete(h6_2);
    msgbox('计算错误，请先计算轴向力和摩擦阻力！', '错误','error');
end
delete(h6_2);  %删除对话框

handles.output = pass_Data;% 将数据发送到 handles.output 中。
%当遇到 uiresume 时程序继续运行，执行 OutputFcn ，将修改之后的值通过 handles.output 输出
guidata(hObject, handles);  % 当 handles 结构体中的数据发生改变时，必须使用 guidata 更新 handles 结构体
uiresume(handles.figure1)   %继续执行被uiwait中断的程序
end

% --- Executes on button press in y_6_2pushbutton2.
function y_6_2pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to y_6_2pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M_i20 M_i21 M_i22 M_i23 M_i24 M_i25 fig62_1 fig62_2 fig62_3 fig62_4
if size(get(handles.y_6_2uitable2,'Data'),1)==0
    msgbox('没有计算结果!','确认','error');
else
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
            end;
            Word.Visible = 1; % 或set(Word, 'Visible', 1);

            % 若测试文件存在，打开该测试文件，否则，新建一个文件，并保存，文件名为测试.docx
            if exist(filespec_user,'file');
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
            Selection.Text = '七、定向井磨损缺陷评价及剩余强度分析';
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
            DTI62_1 = Document.Tables.Item(1); % 或DTI = Tables;
            DTI62_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
            DTI62_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
            DTI62_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
            DTI62_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI62_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
            DTI62_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
            % 指定各单元格内容
            DTI62_1.Cell(1,1).Range.Text = '钻井套管钢级';
            DTI62_1.Cell(1,2).Range.Text = '套管屈服强度（MPa）';
            DTI62_1.Cell(1,3).Range.Text = '套管磨损系数(×10^(-12)Pa^(-1))';
            DTI62_1.Cell(1,4).Range.Text = '钻井套管外径（m）';
            DTI62_1.Cell(1,5).Range.Text = '转速（r/min）';
            DTI62_1.Cell(1,6).Range.Text = '机械钻速（m/h）';

            %填写数据
            DTI62_1.Cell(2,1).Range.Text = char(M_i20);
            DTI62_1.Cell(2,2).Range.Text = char(M_i21);
            DTI62_1.Cell(2,3).Range.Text = char(M_i22);
            DTI62_1.Cell(2,4).Range.Text = char(M_i23);
            DTI62_1.Cell(2,5).Range.Text = char(M_i24);
            DTI62_1.Cell(2,6).Range.Text = char(M_i25);

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

            %绘制数据表格-------------------------------------------------------------------------------------------------------------------
            Selection.Font.Size = 11;   %设置表格中字体大小为11
            Tables = Document.Tables.Add(Selection.Range,6,2);    % 6 行 2列
            DTI62_2 = Document.Tables.Item(2); % 或DTI = Tables;
            DTI62_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
            DTI62_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
            DTI62_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
            DTI62_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI62_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
            DTI62_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
            % 指定各单元格内容-------------------------------------------------------------------------------------------------------------
            DTI62_2.Cell(1,1).Range.Text = '套管钻井磨损井段（m）';
            DTI62_2.Cell(2,1).Range.Text = '套管钻井管柱最大磨损深度（mm）';
            DTI62_2.Cell(3,1).Range.Text = '均匀磨损极限剩余抗挤强度（MPa）';
            DTI62_2.Cell(4,1).Range.Text = '抗挤强度降低百分比（%）';
            DTI62_2.Cell(5,1).Range.Text = '均匀磨损极限剩余抗拉强度（kN）';
            DTI62_2.Cell(6,1).Range.Text = '抗拉强度降低百分比（%）';
            %填写数据----------------------------------------------------------------------------------------------------------------------
            DTI62_2.Cell(1,2).Range.Text = char(get(handles.y_6_2text7,'String'));  
            DTI62_2.Cell(2,2).Range.Text = char(get(handles.y_6_2text9,'String'));    
            DTI62_2.Cell(3,2).Range.Text = char(get(handles.y_6_2text11,'String')); 
            DTI62_2.Cell(4,2).Range.Text = char(get(handles.y_6_2text13,'String'));
            DTI62_2.Cell(5,2).Range.Text = char(get(handles.y_6_2text15,'String')); 
            DTI62_2.Cell(6,2).Range.Text = char(get(handles.y_6_2text17,'String')); 
            %导出图片----------------------------------------------------------------------------------------------------------------------
            Selection.Start = Content.end; % 设定光标位置为最后
            Selection.TypeParagraph;    %插入新的空段落

            hObject_fig62_1 = findobj(fig62_1);
            hObject_fig62_1 = hObject_fig62_1(1,1);

            hObject_fig62_2 = findobj(fig62_2);
            hObject_fig62_2 = hObject_fig62_2(1,1);

            hObject_fig62_3 = findobj(fig62_3);
            hObject_fig62_3 = hObject_fig62_3(1,1);

            hObject_fig62_4 = findobj(fig62_4);
            hObject_fig62_4 = hObject_fig62_4(1,1);

            hgexport(hObject_fig62_1, '-clipboard');
            Selection.Range.Paragraphs.Item(1).Range.Paste;

            Selection.Start = Content.end; % 设定光标位置为最后
            Selection.TypeParagraph;    %插入新的空段落       
            hgexport(hObject_fig62_2, '-clipboard');    %将图形复制到Microsoft? Windows粘贴板
            Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %将图形粘贴到当前文档里

            Selection.Start = Content.end; % 设定光标位置为最后
            Selection.TypeParagraph;    %插入新的空段落   
            hgexport(hObject_fig62_3, '-clipboard'); 
            Selection.Range.Paragraphs.Item(1).Range.Paste;

            Selection.Start = Content.end; % 设定光标位置为最后
            Selection.TypeParagraph;    %插入新的空段落   
            hgexport(hObject_fig62_4, '-clipboard'); 
            Selection.Range.Paragraphs.Item(1).Range.Paste;

            Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
            Document.Save; % 保存文档
    %             Document.Close; % 关闭文档
    %             Word.Quit; % 退出word服务器
    end
end

% --- Executes on button press in y_6_2pushbutton3.
function y_6_2pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to y_6_2pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data X_b fig62_1 fig62_2 fig62_3 fig62_4
%如果之前计算过数据，点击数据重现-------------------------------------
set(handles.y_6_2pushbutton3,'Visible','off')   %点击后按钮消失
table_M2 = pass_Data{49}
M_i25 = table_M2(:,2);
set(handles.y_6_2edit1,'String',char(M_i25))
mainBack_Data = pass_Data{39};
V_Data = pass_Data{37};
V_i1 = V_Data(:,1);
if size(mainBack_Data,1)~=0 && size(mainBack_Data,2)~=0
    X_i1 = mainBack_Data(:,1);
    X_i12 = mainBack_Data(:,12);
    X_i14 = mainBack_Data(:,14);
    X_i15 = mainBack_Data(:,15);
    X_i16 = mainBack_Data(:,16);
    X_i17 = mainBack_Data(:,17);
    %底部数据计算及显示--------------------------------------------------------------
    bottom1 = [X_i1(X_b,1),'~',X_i1(end)];
    bottom2 = num2str( max(str2num(char(X_i12)))  );
    bottom3 = num2str( min(str2num(char(X_i14)))  );
    bottom4 = num2str( max(str2num(char(X_i15)))  );
    bottom5 = num2str( min(str2num(char(X_i16)))  );
    bottom6 = num2str( max(str2num(char(X_i17)))  );
    set(handles.y_6_2text7,'String',cell2mat(bottom1))
    set(handles.y_6_2text9,'String',bottom2)
    set(handles.y_6_2text11,'String',bottom3)
    set(handles.y_6_2text13,'String',bottom4)
    set(handles.y_6_2text15,'String',bottom5)
    set(handles.y_6_2text17,'String',bottom6)
    set(handles.y_6_2uitable2,'Data',mainBack_Data)
    %绘图---------------------------------------------------------------------------
    %第一幅图
    fig62_1 = figure(621);
    set(fig62_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig62_1,'menubar','none');
    set(fig62_1,'NumberTitle', 'off', 'Name', '磨损深度');
    hold on;
    y_fig62_1 = str2num(char(X_i1));
    x_fig62_1 = str2num(char(X_i12)); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
    plot(x_fig62_1,y_fig62_1,'-b','LineWidth',1.5)
    xlabel('钻至井底时不同井深截面处套管柱磨损深度（mm）','FontSize',10);
    ylabel('井深/m','FontSize',10);
    grid on;
    hold off;
    %第二幅图
    fig62_2 = figure(622);
    set(fig62_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig62_2,'menubar','none');
    set(fig62_2,'NumberTitle', 'off', 'Name', '抗挤强度');
    hold on;
    y_fig62_2 = str2num(char(X_i1));
    x_fig62_2 = str2num(char(X_i14)); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
    plot(x_fig62_2,y_fig62_2,'-b','LineWidth',1.5)
    xlabel('钻至井底时不同井深截面处套管柱极限剩余抗挤强度（kN）','FontSize',10);
    ylabel('井深/m','FontSize',10);
    grid on;
    hold off;
    %第三幅图
    fig62_3 = figure(623);
    set(fig62_3,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig62_3,'menubar','none');
    set(fig62_3,'NumberTitle', 'off', 'Name', '抗拉强度');
    hold on;
    y_fig62_3 = str2num(char(X_i1));
    x_fig62_3 = str2num(char(X_i16)); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
    plot(x_fig62_3,y_fig62_3,'-b','LineWidth',1.5)
    xlabel('钻至井底时不同井深截面处套管柱极限剩余抗拉强度（kN）','FontSize',10);
    ylabel('井深/m','FontSize',10);
    grid on;
    hold off;
    %第四幅图
    fig62_4 = figure(624);
    set(fig62_4,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig62_4,'menubar','none');
    set(fig62_4,'NumberTitle', 'off', 'Name', '强度降低百分比');
    hold on;
    y_fig62_4 = str2num(char(X_i1));
    x_fig62_4_1 = str2num(char(X_i15)); 
    x_fig62_4_2 = str2num(char(X_i17)); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
    plot(x_fig62_4_1,y_fig62_4,'-b','LineWidth',1.5)
    plot(x_fig62_4_2,y_fig62_4,'-r','LineWidth',1.5)
    xlabel('钻至井底时不同井深截面处套管柱极限剩余强度降低百分比（%）','FontSize',10);
    ylabel('井深/m','FontSize',10);
    legend({'抗挤强度降低百分比','抗拉强度降低百分比'},'Orientation','horizontal','Location','southoutside')
    grid on;
    hold off;
end

% --- Executes during object creation, after setting all properties.
function y_6_2text4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_6_2text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global pass_Data
try
M = pass_Data{41};
M_i24 = M{1,2};
set(hObject,'String',M_i24)
catch
end


% --- Executes during object creation, after setting all properties.
function y_6_2pushbutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_6_2pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global pass_Data
Back_Data = pass_Data{39};
set(hObject,'Visible','off')
if size(Back_Data,1)~=0 && size(Back_Data,2)~=0
    set(hObject,'Visible','on')
end
