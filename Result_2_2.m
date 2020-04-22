function varargout = Result_2_2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_2_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_2_2_OutputFcn, ...
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

function Result_2_2_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','定向井扭矩计算');

global pass_Data c_Array table_A table_B table_C table_D table_E table_F table_J table_L
global A_i1 A_i2 A_i3 A_i4 
global B_i1 B_i2 B_i3 B_i4 B_i5 
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global E_i1 E_i2 E_i3 
global F_i1 F_i2 F_i3 F_i4 F_i5 F_i6
global M_i1 M_i3 M_i4
global J_i1 J_i2 J_i3 J_i4 J_i5 J_i6 J_i7 J_i8 J_i9 J_i10 J_i11 J_i12 J_i13 J_i14 J_i15 J_i16 J_i17 J_i18 J_i19 J_i20
global L_i1 L_i2 L_i3 L_i4 L_i5 L_i6 L_i7 L_i8 L_i9 L_i10 L_i11 L_i12 L_i13 L_i14 L_i15 L_i16 

c_Array=load('taoguanDB.mat');
table_C = c_Array.taoguanDB;
% class(table_C):       table_C:string
pass_Data = varargin{1};
table_A = pass_Data{1};
% class(table_A)        table_A table_B table_D table_E table_F:cell
table_B = pass_Data{2};
table_D = pass_Data{3};
table_E = pass_Data{4};
table_F = pass_Data{5};
table_J = pass_Data{31};
table_L = pass_Data{32};

A_i1 = table_A(:,1);A_i2 = table_A(:,2);A_i3 = table_A(:,3);A_i4 = table_A(:,4);

B_i1 = table_B(:,1);B_i2 = table_B(:,2);B_i3 = table_B(:,3);B_i4 = table_B(:,4);B_i5 = table_B(:,5);

D_i1 = table_D(:,1);D_i2 = table_D(:,2);D_i3 = table_D(:,3);D_i4 = table_D(:,4);D_i5 = table_D(:,5);
D_i6 = table_D(:,6);D_i7 = table_D(:,7);D_i8 = table_D(:,8);

E_i1 = table_E(:,1);E_i2 = table_E(:,2);E_i3 = table_E(:,3);

F_i1 = table_F(:,1);F_i2 = table_F(:,2);F_i3 = table_F(:,3);F_i4 = table_F(:,4);F_i5 = table_F(:,5);F_i6 = table_F(:,6);

M_i1 = F_i2(1,1);
M_i3 = B_i4(end,1);
M_i4 = {'1.15'};
set(handles.M_12,'string',M_i1) 
set(handles.M_32,'string',M_i3) 
set(handles.M_42,'string',M_i4) 

J_i1 =  table_J(:,1); J_i2 =  table_J(:,2); J_i3 =  table_J(:,3); J_i4 =  table_J(:,4); J_i5 =  table_J(:,5);
J_i6 =  table_J(:,6); J_i7 =  table_J(:,7); J_i8 =  table_J(:,8); J_i9 =  table_J(:,9);J_i10 = table_J(:,10);
J_i11 = table_J(:,11);J_i12 = table_J(:,12);J_i13 = table_J(:,13);J_i14 = table_J(:,14);J_i15 = table_J(:,15);
J_i16 = table_J(:,16);J_i17 = table_J(:,17);J_i18 = table_J(:,18);J_i19 = table_J(:,19);J_i20 = table_J(:,20);

L_i1 =  table_L(:,1); L_i2 =  table_L(:,2); L_i3 =  table_L(:,3); L_i4 =  table_L(:,4); L_i5 =  table_L(:,5);
L_i6 =  table_L(:,6); L_i7 =  table_L(:,7); L_i8 =  table_L(:,8); L_i9 =  table_L(:,9);L_i10 = table_L(:,10);
L_i11 = table_L(:,11);L_i12 = table_L(:,12);L_i13 = table_L(:,13);L_i14 = table_L(:,14);L_i15 = table_L(:,15);
L_i16 = table_L(:,16);

%判断之前是否计算过pass_Data--------------------------------------------------
try
table_Q = pass_Data{34};
ResM_2_2 = pass_Data{41};
% if size(ResM_2_2) ~= 0 && size(ResM_2_2,2) == 4
%     set(handles.M_12,'String',char(ResM_2_2(1,1)))
    set(handles.M_22,'String',char(ResM_2_2(1,2)))
%     set(handles.M_32,'String',char(ResM_2_2(1,3)))
%     set(handles.M_42,'String',char(ResM_2_2(1,4)))
% end
% if size(table_O) ~= 0 && size(table_O,2) == 13
    set(handles.Result_Data_2_2,'Data',table_Q)
% end
Q_i4 = table_Q(:,4);
Q_i5 = table_Q(:,5);
Q_i9 = table_Q(:,9);
Q_i10 = table_Q(:,10);
Q_i11 = table_Q(:,11);
Q_i12 = table_Q(:,12);
Q_i13 = table_Q(:,13);
set(handles.y_2_2text12,'String',num2str(str2num(char(Q_i4(1,1)))))
set(handles.y_2_2text14,'String',num2str(str2num(char(Q_i5(end,1)))))
set(handles.y_2_2text16,'String',num2str(str2num(char(Q_i9(1,1)))))
set(handles.y_2_2text18,'String',num2str(str2num(char(Q_i10(1,1)))))
set(handles.y_2_2text20,'String',num2str(str2num(char(Q_i11(1,1)))))
set(handles.y_2_2text22,'String',char(Q_i12(1,1)))
set(handles.y_2_2text24,'String',char(Q_i13(1,1)))
catch
end
%--------------------------------------------------------------------------------

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Result_2_2_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

%计算按钮
function P_ResBut_2_2_2_Callback(hObject, eventdata, handles)
global pass_Data c_Array table_C
global A_i1 A_i2
global D_i3 D_i4 D_i5 D_i6 D_i7
global E_i1
global F_i1
global M_i1 M_i2 M_i3 M_i4
global J_i3 J_i4 J_i8
global L_i5
global Q_i4 Q_i5 Q_i9 Q_i10 Q_i11 Q_i12 Q_i13 %导出报告需要用到
clear logic_judge
logic_judge=0;

c_Array=load('taoguanDB.mat');
table_C = c_Array.taoguanDB;
%处理“   —”数据变为“0”
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

%判断数据是否输入完整		
for i=1:size(A_i2)  
    if strcmp('',char(A_i2(i,1)))
        msgbox('请检查井眼轨道参数', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(E_i1)  
    if strcmp('',char(E_i1(1,1)))
        msgbox('请检查钻井液性能参数', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(J_i3)  
    if strcmp('',char(J_i3(i,1)))
        msgbox('请先计算定向井轴向力', '错误','error');
        logic_judge=1;
        break
    end
end

for i=1:size(J_i4)  
    if strcmp('',char(J_i4(i,1)))
        msgbox('请先计算定向井轴向力', '错误','error');
        logic_judge=1;
        break
    end
end

for i=1:size(F_i1)  
    if strcmp('',char(F_i1(1,1)))
        msgbox('请检查相关基础数据', '错误','error');
        logic_judge=1;
        break
    end
end

for i=1:size(J_i8)  
    if strcmp('',char(J_i8(i,1)))
        msgbox('请先计算定向井轴向力', '错误','error');
        logic_judge=1;
        break
    end
end

for i=1:size(L_i5)  
    if strcmp('',char(L_i5(i,1)))
        msgbox('请先计算定向井轴向力', '错误','error');
        logic_judge=1;
        break
    end
end

M_i2 = get(handles.M_22,'String');
if size(M_i2,1)==0 || size(M_i2,2)==0
    logic_judge=1;
    msgbox('请先输入套管转速！', '错误','error');
end
%二维定向井旋转扭矩计算中间参数（矩阵P）------------------------------------------------------------------------------------											
%井斜角度系数:P_i1
if logic_judge==0
P_i1 = {};    
for i = 1:size(A_i1,1)
    if str2num(char(A_i2(i,1))) <= 0.0001
        P_i1{i,1} = '0.00019';
    elseif str2num(char(A_i2(i,1)))>0 && str2num(char(A_i2(i,1))) <= 6
        P_i1{i,1} = '0.00031';
    elseif str2num(char(A_i2(i,1))) > 6 && str2num(char(A_i2(i,1))) <= 15
        P_i1{i,1} = '0.00038';
    elseif str2num(char(A_i2(i,1))) > 15
        P_i1{i,1} = '0.00048';
    end
end

%泥浆重度:P_i2
%9810*E_1,1
E_11 = str2num(char(E_i1(1,1)));
for i = 1:size(A_i1)
    P_i2(i,1) = 9810*E_11;
end
P_i2 = cellstr(num2str(P_i2));

%经验系数:P_i3
P_i3 = {};
for i = 1:size(A_i1)
    P_i3{i,1} = '0.48';
end

%套管材料的剪切模量:P_i4
P_i4={};
for i = 1:size(A_i1)
    P_i4{i,1} = '82300';
end

%套管柱截面积:P_i5
%PI()*(J_i,3^2-J_i,4^2)*10^(-6)
P_i5 = pi.*(  str2num(char(J_i3)).^2 - str2num(char(J_i4)).^2   ).*10^(-6);
P_i5 = cellstr(num2str(P_i5));

%套管柱容重:P_i6
%9810*F_1,1
for i = 1:size(A_i1)
    P_i6(i,1) = 9810*str2num(char(F_i1(1,1)));
end
P_i6 = cellstr(num2str(P_i6));

%极惯性矩:P_i7
%PI()*(J_i,3^4-J_i,4^4)/2*10^(-12)
P_i7 = pi.*(  str2num(char(J_i3)).^4 - str2num(char(J_i4)).^4  )./2.*10^(-12);
P_i7 = cellstr(num2str(P_i7));

%第四强度理论拉应力:P_i8
P_i8 = J_i8;

%最大拉应力:P_i9
%0.001*MAX(L_i,5)/P_i,5
l_5 = max(str2num(char(L_i5(:,1))));
P_i9 = 0.001 .* l_5 ./ str2num(char(P_i5));
P_i9 = cellstr(num2str(P_i9));

%第四强度理论压应力:P_i10
%J_i,8
P_i10 = J_i8;

%最大压应力:P_i11
%0.001*M_1,1/P_i,5
P_i11 = 0.001 .* str2num(char(M_i1(1,1))) ./ str2num(char(P_i5));
P_i11 = cellstr(num2str(P_i11));


%二维定向井计算结果参数（矩阵Q）--------------------------------------------------------------------------------------------
%测深:Q_i1
Q_i1 = A_i1;

%接头螺纹抗拉强度,接头螺纹抗内压强度,套管抗挤强度,管材屈服强度
%先找出D表对应C表的数据
newQ_i2 = {};
newQ_i3 = {};
for j = 1:size(D_i4,1)
    for i=1:size(table_C,1)  %遍历C表的行数，确定I_i4~I_i7
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
            Q_i2 = table_C(i,39);  
            newQ_i2{end+1,1} = char(Q_i2);
            Q_i3 = table_C(i,36);  
            newQ_i3{end+1,1} = char(Q_i3);
            break
        end
    end
end
    
%套管抗扭屈服强度:Q_i2
Q_i2 = {};
for i = 1:size(A_i1)
    for j = 1:size(D_i3)
        if str2num(char(Q_i1(1,1))) <= str2num(char(D_i3(1,1)))
            Q_i2{i,1} = char(newQ_i2(1,1));
            break
        elseif str2num(char(D_i3(j,1))) < str2num(char(Q_i1(i,1))) <= str2num(char(D_i3(j+1,1)))
            Q_i2{i,1} = char(newQ_i2(i,1));
            break
        else
            continue
        end
    end
end
Q_i2(1,1) = Q_i2(2,1);

%紧扣扭矩:Q_i3
Q_i3 = {};
for i = 1:size(A_i1)
    for j = 1:size(D_i3)
        if str2num(char(Q_i1(1,1))) <= str2num(char(D_i3(1,1)))
            Q_i3{i,1} = char(newQ_i3(1,1));
            break
        elseif str2num(char(D_i3(j,1))) < str2num(char(Q_i1(i,1))) <= str2num(char(D_i3(j+1,1)))
            Q_i3{i,1} = char(newQ_i3(i,1));
            break
        else
            continue
        end
    end
end
Q_i3(1,1) = Q_i3(2,1);

%井口套管屈服扭矩:Q_i4
%P_1,7*SQRT(P_1,8^2-P_1,9^2)*10^6/[SQRT(3)*J_1,3]
Q_i4 = {};
Q_i4{end+1,1} = strjust(  num2str( str2num(char(P_i7(1,1)))* sqrt(str2num(char(P_i8(1,1)))^2-str2num(char(P_i9(1,1)))^2) ...
    *10^6/( sqrt(3)*str2num(char(J_i3(1,1))) ) ),'left' );
for i = 2:size(A_i1)
    Q_i4{end+1,1} = '--';
end

%钻头附近的套管屈服扭矩:Q_i5    P_m,7*sqrt(P_m,10^2-P_m,11^2)*10^6/[sqrt(3)*J_m,3]
Q_i5 = {};
for i = 1:size(A_i1)-1
    Q_i5{i,1} = '--';
end
Q_i5{end+1,1} = strjust( num2str(  str2num(char(P_i7(end,1)))*sqrt(  str2num(char(P_i10(end,1)))^2-...
    str2num(char(P_i11(end,1)))^2  )*10^6/(sqrt(3)*str2num(char(J_i3(end,1))))  ),'left');

%套管空转扭矩:Q_i6
%4.4*P_i,1*P_i,2*[MAX(Q_i,1)-Q_i,1]*(J_i,3*2)^2*10^(-9)
q1 = max(str2num(char(Q_i1(:,1))));
Q_i6 = 4.4.*str2num(char(P_i1)).*str2num(char(P_i2)).*(q1 - str2num(char(Q_i1))).*...
    (str2num(char(J_i3)).*2).^2 .* 10^(-9);
Q_i6 = cellstr(strjust(num2str(Q_i6),'left'));

%钻头破岩扭矩:Q_i7
%0.307*P_i,3*M_1,1*M_1,3*0.001
Q_i7 = 0.307.*str2num(char(P_i3)).*str2num(char(M_i1(1,1))).*str2num(char(M_i3(1,1))).*0.001;
Q_i7 = cellstr(strjust(num2str(Q_i7),'left'));

%套管柱的附加扭矩:Q_i8
%M_1,2*PI()*P_i,7*sqrt(P_i,4*P_i,6/9.8)/30
Q_i8 = str2num(M_i2).*pi.*str2num(char(P_i7(1,1))).*sqrt(str2num(char(P_i4)).*...
    str2num(char(P_i6))./9.8)./30;
Q_i8 = cellstr(strjust(num2str(Q_i8),'left'));

%各段管柱最大扭矩:Q_i9
%Q_i,6+Q_i,7+Q_i,8
Q_i9 = str2num(char(Q_i6)) + str2num(char(Q_i7)) + str2num(char(Q_i8));
Q_i9 = cellstr(strjust(num2str(Q_i9),'left'));

%各段管柱最大扭转剪应力:Q_i10
%Q_i,9*J_i,3*10^(-6)/P_i,7
Q_i10 = str2num(char(Q_i9)) .* str2num(char(J_i3)) .* 10^(-6) ./ str2num(char(P_i7));
Q_i10 = cellstr(strjust(num2str(Q_i10),'left'));

%抗扭安全系数:Q_i11
%Q_i,2/Q_i,9
Q_i11 = str2num(char(Q_i2)) ./ str2num(char(Q_i9));
Q_i11 = cellstr(strjust(num2str(Q_i11),'left'));

%管柱校核结果:Q_i12
%IF(Q_i,11>M_1,4,"满足要求","不满足要求")
Q_i12 = {};
for i = 1:size(A_i1)
    if str2num(char(Q_i11(i,1))) > str2num(char(M_i4(1,1)))
        Q_i12{i,1} = '满足要求';
    else
    	Q_i12{i,1} = '不满足要求';
    end
end

%螺纹校核结果:Q_i13
%IF(Q_i,9<Q_i,3,"接箍满足要求","使用抗扭强度更高的接箍")
Q_i13 = {};
for i = 1:size(A_i1)
    if str2num(char(Q_i9(i,1))) < str2num(char(Q_i3(i,1)))
        Q_i13{i,1} = '接箍满足要求';
    else
    	Q_i13{i,1} = '使用抗扭强度更高的接箍';
    end
end


%二维定向井输出结果数据表-------------------------------------------------------------------------------------------------	
result_Data_2_2 = [Q_i1,Q_i2,Q_i3,Q_i4,Q_i5,Q_i6,Q_i7,Q_i8,Q_i9,Q_i10,...
    Q_i11,Q_i12,Q_i13];   %拼接所有列
set(handles.Result_Data_2_2,'Data',result_Data_2_2);   %填充表格
result_Data_P = [P_i1,P_i2,P_i3,P_i4,P_i5,P_i6,P_i7,P_i8,P_i9,P_i10,P_i11];
pass_Data{34} = result_Data_2_2;
pass_Data{33} = result_Data_P;
pass_Data{41} = [M_i1,M_i2,M_i3,M_i4];
%最终界面显示----------------------------------------------------------------------------------------------------------------
set(handles.y_2_2text12,'String',str2num(char(Q_i4(1,1))))
set(handles.y_2_2text14,'String',str2num(char(Q_i5(end,1))))
set(handles.y_2_2text16,'String',str2num(char(Q_i9(1,1))))
set(handles.y_2_2text18,'String',str2num(char(Q_i10(1,1))))
set(handles.y_2_2text20,'String',str2num(char(Q_i11(1,1))))
set(handles.y_2_2text22,'String',char(Q_i12(1,1)))
set(handles.y_2_2text24,'String',char(Q_i13(1,1)))

handles.output = pass_Data;% 将数据发送到 handles.output 中。
%当遇到 uiresume 时程序继续运行，执行 OutputFcn ，将修改之后的值通过 handles.output 输出
guidata(hObject, handles);  % 当 handles 结构体中的数据发生改变时，必须使用 guidata 更新 handles 结构体
uiresume(handles.figure1)   %继续执行被uiwait中断的程序
end


%导出图表
function P_OutBut_2_2_2_Callback(hObject, eventdata, handles)
global M_i1 M_i2 M_i3 M_i4
global Q_i4 Q_i5 Q_i9 Q_i10 Q_i11 Q_i12 Q_i13
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
    Selection.Text = '三、定向井旋转扭矩计算结果';
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
    Tables = Document.Tables.Add(Selection.Range,2,4);    % 2行 4列
    DTI2_2_1 = Document.Tables.Item(1); % 或DTI = Tables;
    DTI2_2_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
    DTI2_2_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
    DTI2_2_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
    DTI2_2_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI2_2_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
    DTI2_2_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
    % 指定各单元格内容
    DTI2_2_1.Cell(1,1).Range.Text = '钻压（kN）';
    DTI2_2_1.Cell(1,3).Range.Text = '套管转速（r/min）';
    DTI2_2_1.Cell(2,1).Range.Text = '钻头外径(mm)';
    DTI2_2_1.Cell(2,3).Range.Text = '许用抗扭安全系数';
%             DTI2_2_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

    %填写数据
    DTI2_2_1.Cell(1,2).Range.Text = char(M_i1);
    DTI2_2_1.Cell(1,4).Range.Text = char(M_i2);
    DTI2_2_1.Cell(2,2).Range.Text = char(M_i3);
    DTI2_2_1.Cell(2,4).Range.Text = char(M_i4);


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
    Tables = Document.Tables.Add(Selection.Range,7,2);    % 7 行 2列
    DTI2_2_2 = Document.Tables.Item(2); % 或DTI = Tables;
    DTI2_2_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
    DTI2_2_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
    DTI2_2_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
    DTI2_2_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI2_2_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
    DTI2_2_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
    % 指定各单元格内容
    DTI2_2_2.Cell(1,1).Range.Text = '轴向拉伸套管许用扭矩（井口）（kN.m）';
    DTI2_2_2.Cell(2,1).Range.Text = '轴向压缩套管许用扭矩（钻头附近）（kN.m）';
    DTI2_2_2.Cell(3,1).Range.Text = '动态旋转套管实际最大扭矩(井口)（kN.m）';
    DTI2_2_2.Cell(4,1).Range.Text = '套管旋转时最大扭转剪应力（MPa）';
    DTI2_2_2.Cell(5,1).Range.Text = '抗扭安全系数';
    DTI2_2_2.Cell(6,1).Range.Text = '管柱校核结果';
    DTI2_2_2.Cell(7,1).Range.Text = '套管螺纹校核结果螺纹';
    %填写数据
    DTI2_2_2.Cell(1,2).Range.Text = char(Q_i4(1,1));                  
    DTI2_2_2.Cell(2,2).Range.Text = char(Q_i5(end,1));   
    DTI2_2_2.Cell(3,2).Range.Text = char(Q_i9(1,1));   
    DTI2_2_2.Cell(4,2).Range.Text = char(Q_i10(1,1));   
    DTI2_2_2.Cell(5,2).Range.Text = char(Q_i11(1,1));   
    DTI2_2_2.Cell(6,2).Range.Text = char(Q_i12(1,1));   
    DTI2_2_2.Cell(7,2).Range.Text = char(Q_i13(1,1));   

    Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
    Document.Save; % 保存文档
end


%M_1
function M_12_Callback(hObject, eventdata, handles)
function M_12_CreateFcn(hObject, eventdata, handles)
global M_i1
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
try
set(handles.M_12,'string',M_i1) 
catch
end

%M_2
function M_22_Callback(hObject, eventdata, handles)
function M_22_CreateFcn(hObject, eventdata, handles)
% global pass_Data
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% %判断套管转速是否已存在，存在则赋初值
% M_1_Data = pass_Data{15};
% if size(M_1_Data(2)) ~= 0 
%     set(hObect,'String',M_1_Data{2})
% end

%M_3
function M_32_Callback(hObject, eventdata, handles)
function M_32_CreateFcn(hObject, eventdata, handles)
global M_i3
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
try
set(handles.M_32,'string',M_i3) 
catch
end

%M_4
function M_42_Callback(hObject, eventdata, handles)
function M_42_CreateFcn(hObject, eventdata, handles)
global M_i4
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
try
set(handles.M_42,'string',M_i4) 
catch
end
