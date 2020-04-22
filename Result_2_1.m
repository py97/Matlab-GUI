function varargout = Result_2_1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_2_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_2_1_OutputFcn, ...
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


function Result_2_1_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','套管钻井管串力学分析软件');

global pass_Data c_Array table_A table_B table_C table_D table_E table_F table_I table_K table_J table_L 
global A_i1 A_i2 A_i3 A_i4 
global B_i1 B_i2 B_i3 B_i4 B_i5 
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global E_i1 E_i2 E_i3 
global F_i1 F_i2 F_i3 F_i4 F_i5 F_i6 F_i7
global M_i1 M_i3 M_i4

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

% class(table_C):       table_C:string
pass_Data = varargin{1};
table_A = pass_Data{1};
% class(table_A)        table_A table_B table_D table_E table_F:cell
table_B = pass_Data{2};
table_D = pass_Data{3};
table_E = pass_Data{4};
table_F = pass_Data{5};
% table_I = pass_Data{6};
% table_K = pass_Data{7};

A_i1 = table_A(:,1);A_i2 = table_A(:,2);A_i3 = table_A(:,3);A_i4 = table_A(:,4);

B_i1 = table_B(:,1);B_i2 = table_B(:,2);B_i3 = table_B(:,3);B_i4 = table_B(:,4);B_i5 = table_B(:,5);

D_i1 = table_D(:,1);D_i2 = table_D(:,2);D_i3 = table_D(:,3);D_i4 = table_D(:,4);D_i5 = table_D(:,5);
D_i6 = table_D(:,6);D_i7 = table_D(:,7);D_i8 = table_D(:,8);

E_i1 = table_E(:,1);E_i2 = table_E(:,2);E_i3 = table_E(:,3);

F_i1 = table_F(:,1);F_i2 = table_F(:,2);F_i3 = table_F(:,3);F_i4 = table_F(:,4);F_i5 = table_F(:,5);F_i6 = table_F(:,6);F_i7 = table_F(:,7);

M_i1 = str2num(char(F_i2(1,1)));
M_i3 = str2num(char(B_i4(end,1)));
M_i4 = str2num(char(F_i7(1,1)));

%判断之前是否计算过pass_Data--------------------------------------------------
try
table_O = pass_Data{9};
ResM_2_1 = pass_Data{15};
% if size(ResM_2_1) ~= 0 && size(ResM_2_1,2) == 4
    set(handles.M_1,'String',char(ResM_2_1(1,1)))
    set(handles.M_3,'String',char(ResM_2_1(1,3)))
    set(handles.M_4,'String',char(ResM_2_1(1,4)))
    set(handles.M_2,'String',char(ResM_2_1(1,2)))
% end
% if size(table_O) ~= 0 && size(table_O,2) == 13
    set(handles.P_Res_2,'Data',table_O)
% end
O_i4 = table_O(:,4);
O_i5 = table_O(:,5);
O_i9 = table_O(:,9);
O_i10 = table_O(:,10);
O_i11 = table_O(:,11);
O_i12 = table_O(:,12);
O_i13 = table_O(:,13);
set(handles.y_2_1text24,'String',num2str(str2num(char(O_i4(1,1)))))
set(handles.y_2_1text26,'String',num2str(str2num(char(O_i5(end,1)))))
set(handles.y_2_1text28,'String',num2str(str2num(char(O_i9(1,1)))))
set(handles.y_2_1text30,'String',num2str(str2num(char(O_i10(1,1)))))
set(handles.y_2_1text32,'String',num2str(str2num(char(O_i11(1,1)))))
set(handles.y_2_1text36,'String',char(O_i12(1,1)))
set(handles.y_2_1text38,'String',char(O_i13(1,1)))
catch
end
%--------------------------------------------------------------------------------

set(handles.M_1,'String',F_i2{1,1})
set(handles.M_3,'string',B_i4{end,1}) 
set(handles.M_4,'string',F_i7{end,1}) 
handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);


function varargout = Result_2_1_OutputFcn(hObject, eventdata, handles) 
try
varargout{1} = handles.output;
catch
end


%计算按钮
function P_ResBut_2_1_Callback(hObject, eventdata, handles)
global pass_Data table_C table_D
global B_i4 
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global E_i1 E_i2 E_i3 
global F_i1 F_i2
global M_i1 M_i2 M_i3 M_i4
global I_i1 I_i2 I_i3 I_i4 I_i5 I_i6 I_i7
global K_i1 K_i2 K_i3 K_i4
global O_i4 O_i5 O_i9 O_i10 O_i11 O_i12 O_i13

clear logic_judge
logic_judge=0;

%判断数据是否输入完整				
for i=1:size(E_i1)  
    if strcmp(' ',char(E_i1(1,1)))
        msgbox('请检查数据1', '错误','error');
        logic_judge=1;
        break
    end
end			

for i=1:size(F_i1)  
    if strcmp(' ',char(F_i1(1,1)))
        msgbox('请检查数据2', '错误','error');
        logic_judge=1;
        break
    end
end			

for i=1:size(I_i2)  
    if strcmp(' ',char(I_i2(i,1)))
        msgbox('请检查数据3', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(I_i2)  
    if strcmp(' ',char(I_i2(i,1)))
        msgbox('请检查数据4', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(I_i3)  
    if strcmp(' ',char(I_i3(i,1)))
        msgbox('请检查数据5', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(I_i7)  
    if strcmp(' ',char(I_i7(i,1)))
        msgbox('请检查数据6', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(K_i4)  
    if strcmp(' ',char(K_i4(i,1)))
        msgbox('请检查数据7', '错误','error');
        logic_judge=1;
        break
    end
end	

M_i2 = get(handles.M_2,'String');
if size(M_i2,1)==0 || size(M_i2,2)==0
    logic_judge=1;
    msgbox('请先输入套管转速！', '错误','error');
end

if logic_judge==0
%浮力系数
I_i1 = 1-(str2num(char(E_i1(:,1))) ./ str2num(char(F_i1(:,1)))); %浮力系数计算
I_i1 = cellstr(num2str(I_i1));    %转化成cell数组{字符串}
%     newK_3 = sprintf('%.2f',newK_3) %保留小数后两位
newI_i1 = I_i1;
for j=1:size(table_D(:,3),1)-1
    newI_i1 = [newI_i1;I_i1];
end
I_i1 = newI_i1;

%套管外半径
I_i2 = str2num(char(D_i4(:,1))) ./2;
I_i2 = cellstr(num2str(I_i2));    %转化成cell数组{字符串}
row1_I_i2 = I_i2(1,1);
newI_i2 = strjust([row1_I_i2;I_i2],'left');
I_i2 = newI_i2;

%套管内半径
I_i3 = str2num(char(D_i5(:,1)))./2;
I_i3 = cellstr(num2str(I_i3));    %转化成cell数组{字符串}
row1_I_i3 = I_i3(1,1);
newI_i3 = strjust([row1_I_i3;I_i3],'left');
I_i3 = newI_i3;

%管材屈服强度
newI_i7 = [];
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
            I_i7 = table_C(i,10);  %管材屈服强度
            newI_i7{end+1,1} = char(I_i7)
            break
        end
    end
end
newI_i7 = [newI_i7(1,1);newI_i7];
I_i7 = newI_i7;

K_i1 = table_D(:,3);
newK_i1 = ['0';K_i1];
newK_i2 = ['0';K_i1];   

%管柱有效线重
K_i3 = str2num(cell2mat(I_i1)).*str2num(char(D_i6)); %线重计算
K_i3 = cellstr(num2str(K_i3));    %转化成cell数组{字符串}
row1_K_i3 = K_i3(1,1);
newK_i3 = [row1_K_i3;K_i3];

%有向轴向力  K_i+1,4  +  K_i+1,3  *  [K_i+1,1  -  K_i,1]  *  0.001
K_i4 = 0;
newK_i4 = [];
for i=size(K_i3):-1:1 %倒序递归,运算次数：size(K_i3)
    K_i4 =K_i4 + str2num(char(newK_i3(i+1,1))) .* (str2num(char(newK_i1(i+1,1)))-str2num(char(newK_i1(i,1)))).*0.001;
    DB_K_i4 = cellstr(num2str(K_i4));    %转化成cell数组{字符串}
    newK_i4 = [DB_K_i4;newK_i4];
end
newK_i4 = [newK_i4;'0'];
K_i4=newK_i4;

if(logic_judge==0)  %数据均正确
    %中间结果--------------------------------------------------------------------------------------------------
    
    %井斜角度系数:N_i1
    N_i1={};
    for i = 1:size(I_i2)
        N_i1{i,1} = '0.00019';
    end
    
    %泥浆重度:N_i2
    N_i2={};
    E_11 = str2num(char(E_i1(1,1)));
    for i = 1:size(I_i2)
        N_i2{i,1} = num2str(9810*E_11);
    end
    
    %经验系数:N_i3
    N_i3={};
    for i = 1:size(I_i2)
        N_i3{i,1} = num2str(0.48);
    end

    %套管材料的剪切模量:N_i4
    N_i4={};
    for i = 1:size(I_i2)
        N_i4{i,1} = num2str(82300);
    end 
    
   %套管柱截面积:N_i5
    N_i5={};
    for i = 1:size(I_i2)
        N_i5{i,1} = num2str(pi*(str2num(char(I_i2(i,1)))^2 - str2num(char(I_i3(i,1)))^2)*(10^(-6)));
    end
    
   %套管柱容重:N_i6
    N_i6={};
    for i = 1:size(I_i2)
        N_i6{i,1} = num2str(9810 * str2num(char(F_i1(1,1))));
    end
    
   %极惯性矩:N_i7   PI()*(I_n,2^4-I_n,3^4)/2*10^(-12)
    N_i7={};
    for i = 1:size(I_i2)
        N_i7{i,1} = num2str(pi*(str2num(char(I_i2(i,1)))^4 - str2num(char(I_i3(i,1)))^4)/2*(10^(-12)));
    end
    
    %第四强度理论拉应力:N_i8
    N_i8 = I_i7;  
    
    %最大拉应力:N_i9
    %0.001*MAX(K_i,4)/N_n,5
    kk = max(str2num(char(K_i4(:,1))));
    for i = 1:size(I_i2)
        N_i9(i,1) = 0.001*kk/str2num(char(N_i5(i,1)));
    end
    N_i9 = cellstr(num2str(N_i9)); 
    
    %第四强度理论压应力:N_i10
    N_i10 = I_i7;  
    
    %最大压应力:N_i11
    for i = 1:size(I_i2)
        N_i11(i,1) = 0.001*str2num(char(F_i2(1,1)))./str2num(char(N_i5(i,1)));
    end
    N_i11 = cellstr(num2str(N_i11));  
    
    %直井输出计算结果数据表--------------------------------------------------------------------------------------------
    %测深:O_i1
    for i = 1:size(D_i3)
        O_i1(i+1,1) = str2num(char(D_i3(i,1)));
    end
    O_i1(1,1) = 0;
    O_i1 = cellstr(num2str(O_i1)); 
	
    %接头螺纹抗拉强度,接头螺纹抗内压强度,套管抗挤强度,管材屈服强度
    newO_i2 = [];
    newO_i3 = [];
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
                O_i2 = table_C(i,39)
                newO_i2{end+1,1} = num2str(char(O_i2))
                O_i3 = table_C(i,36)
                newO_i3{end+1,1} = num2str(char(O_i3))
                break
            end
        end
    end
    %套管抗扭屈服强度:O_i2
    row1_O_i2 = newO_i2(1,1);
    newO_i2 = [row1_O_i2;newO_i2];
    O_i2 = cellstr(newO_i2);
    
    %紧扣扭矩:O_i3
    row1_O_i3 = newO_i3(1,1);
    newO_i3 = [row1_O_i3;newO_i3];
    O_i3 = cellstr(newO_i3);  
    
    %井口套管屈服扭矩:O_i4
    %N_1,7*SQRT(N_1,8^2-N_1,9^2)*10^6/[SQRT(3)*I_1,2]
    O_i4 = {};
    O_i4{1,1} = num2str( str2num(char(N_i7(1,1)))*sqrt(  str2num(char(N_i8(1,1)))^2-str2num(char(N_i9(1,1)))^2  )*...
            (10^6)/(sqrt(3)*str2num(char(I_i2(1,1))))   );
    for i = 2:size(N_i2)
        O_i4{i,1} = '—';
    end
    
    %钻头附近的套管屈服扭矩:O_i5
    %N_n+1,7*SQRT(N_n+1,10^2-N_n+1,11^2)*10^6/[SQRT(3)*I_n+1,2]
    O_i5 = {};
    for i = 1:size(I_i2,1)-1
        O_i5{i,1} = '—';
    end
    O_i5{size(I_i2,1),1} =num2str( str2num(char(N_i7(end,1)))*sqrt(str2num(char(N_i10(end,1)))^2-...
        str2num(char(N_i11(end,1)))^2)*(10^6)/(sqrt(3)*str2num(char(I_i2(end,1))))  );
  
    %套管空转扭矩:O_i6
    %4.4*N_i,1*N_i,2*[MAX(O_i,1)-O_i,1]*(I_i,2*2)^2*10^(-9)
    oo1 = max(str2num(char(O_i1(:,1))));
    for i = 1:size(N_i1,1)-1
        O_i6(i,1) = 4.4*str2num(char(N_i1(i,1)))*str2num(char(N_i2(i,1)))*(oo1 - str2num(char(O_i1(i,1))))*...
            (str2num(char(I_i2(i,1)))*2)^2*(10^(-9));
    end
    O_i6(size(N_i1,1),1) = 0;
    O_i6 = cellstr(num2str(O_i6));
    
    %钻头破岩扭矩:O_i7    0.307*N_i,3*M_1,1*M_1,3*0.001
    for i = 1:size(N_i3)
        O_i7(i,1) = 0.307*str2num(char(N_i3(i,1)))*str2num(char(F_i2(1,1)))*str2num(char(B_i4(end,1)))*0.001;
    end
    O_i7 = cellstr(num2str(O_i7)); 
    
    %套管柱的附加扭矩:O_i8
    %M_1,2*pi()*N_i,7*SQRT(N_i,4*N_i,6/9.8)/30
    M_i2 = get(handles.M_2,'String')
    if size(M_i2,1) == 0 ||size(M_i2,2) == 0
        msgbox('请输入套管转速！', '错误','error');
    end
    
    for i = 1:size(N_i4)-1
        O_i8(i,1) = str2num(M_i2)*pi.*str2num(char(N_i7(i,1)))*...
            sqrt(  str2num(char(N_i4(i,1)))*str2num(char(N_i6(i,1)))/9.8  )/30;
    end
    O_i8(size(N_i4,1),1) = 0;
    O_i8 = cellstr(num2str(O_i8)); 

    
    %各段管柱最大扭矩:O_i9
    %O_i,6+O_i,7+O_i,8
    O_i9 = {};
    for i = 1:size(O_i6)
        O_i9{i,1} = num2str( str2num(char(O_i6(i,1)))+str2num(char(O_i7(i,1)))+str2num(char(O_i8(i,1)))  );
    end
    
    %各段管柱最大扭转剪应力:O_i10
    %O_i,9*I_i,2*10^(-6)/N_i,7
    O_i10={};
    for i = 1:size(I_i2)
        O_i10{i,1} = num2str( str2num(char(O_i9(i,1)))*str2num(char(I_i2(i,1)))*10^(-6)/str2num(char(N_i7(i,1)))  );
    end

    %抗扭安全系数:O_i11
    %O_i,2/O_i,9
    O_i11 = {};
    for i = 1:size(O_i2)
        O_i11{i,1} = num2str(  str2num(char(O_i2(i,1)))/str2num(char(O_i9(i,1)))   );
    end
    
    %管柱校核结果:O_i12
    %IF(O_i,11>M_1,4,"满足要求","不满足要求")
    O_i12 = {};
    for i = 1:size(O_i11)
        if str2num(char(O_i11(i,1))) > M_i4
            O_i12{i,1} = '满足要求';
        else
            O_i12{i,1} = '不满足要求';  
        end
    end
    
    %螺纹校核结果:O_i13
    %IF(O_i,9<O_i,3,"接箍满足要求","使用抗扭强度更高的接箍")
    O_i13 = {};
    for i = 1:size(O_i9,1)
        if str2num(char(O_i9(i,1))) < str2num(char(O_i3(i,1)))
            O_i13{i,1} = '接箍满足要求';
        else
            O_i13{i,1} = '使用抗扭强度更高的接箍';
        end
    end
end
result_Data = [O_i1,O_i2,O_i3,O_i4,O_i5,O_i6,O_i7,O_i8,O_i9,O_i10,O_i11,O_i12,O_i13];
set(handles.P_Res_2,'Data',result_Data)
result_N = [N_i1,N_i2,N_i3,N_i4,N_i5,N_i6,N_i7,N_i8,N_i9,N_i10,N_i11];
pass_Data{8} = result_N;        %N
pass_Data{9} = result_Data;    %O
pass_Data{15} = [{get(handles.M_1,'String')},{get(handles.M_2,'String')},{get(handles.M_3,'String')},{get(handles.M_4,'String')}];

%最终界面显示数据-------------------------------------------------------------
set(handles.y_2_1text24,'String',num2str(str2num(char(O_i4(1,1)))))
set(handles.y_2_1text26,'String',num2str(str2num(char(O_i5(end,1)))))
set(handles.y_2_1text28,'String',num2str(str2num(char(O_i9(1,1)))))
set(handles.y_2_1text30,'String',num2str(str2num(char(O_i10(1,1)))))
set(handles.y_2_1text32,'String',num2str(str2num(char(O_i11(1,1)))))
set(handles.y_2_1text36,'String',char(O_i12(1,1)))
set(handles.y_2_1text38,'String',char(O_i13(1,1)))
handles.output = pass_Data;% 将数据发送到 handles.output 中。
end

%导出图表按钮
function P_OutBut_2_2_Callback(hObject, eventdata, handles)
global O_i4 O_i5 O_i9 O_i10 O_i11 O_i12 O_i13
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
        Selection.Text = '三、直井旋转扭矩计算结果';
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
        DTI_2_1 = Document.Tables.Item(1); % 或DTI = Tables;
        DTI_2_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI_2_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI_2_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI_2_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI_2_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI_2_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI_2_1.Cell(1,1).Range.Text = '钻压（kN）';
        DTI_2_1.Cell(1,3).Range.Text = '套管转速（r/min）';
        DTI_2_1.Cell(2,1).Range.Text = '钻头外径(mm)';
        DTI_2_1.Cell(2,3).Range.Text = '许用抗扭安全系数';
%             DTI_2_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI_2_1.Cell(1,2).Range.Text = get(handles.M_1,'String');
        DTI_2_1.Cell(1,4).Range.Text = get(handles.M_2,'String');
        DTI_2_1.Cell(2,2).Range.Text = get(handles.M_3,'String');
        DTI_2_1.Cell(2,4).Range.Text = get(handles.M_4,'String');


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
        Tables = Document.Tables.Add(Selection.Range,7,2);    % 7 行 6列
        DTI_2_2 = Document.Tables.Item(2); % 或DTI = Tables;
        DTI_2_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI_2_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI_2_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI_2_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI_2_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI_2_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI_2_2.Cell(1,1).Range.Text = '轴向拉伸套管许用扭矩（井口）（kN.m）';
        DTI_2_2.Cell(2,1).Range.Text = '轴向压缩套管许用扭矩（钻头附近）（kN.m）';
        DTI_2_2.Cell(3,1).Range.Text = '动态旋转套管实际最大扭矩(井口)（kN.m）';
        DTI_2_2.Cell(4,1).Range.Text = '套管旋转时最大扭转剪应力（MPa）';
        DTI_2_2.Cell(5,1).Range.Text = '抗扭安全系数';
        DTI_2_2.Cell(6,1).Range.Text = '管柱校核结果';
        DTI_2_2.Cell(7,1).Range.Text = '套管螺纹校核结果螺纹';
        %填写数据
        DTI_2_2.Cell(1,2).Range.Text = char(O_i4(1,1));                  
        DTI_2_2.Cell(2,2).Range.Text = char(O_i5(end,1));   
        DTI_2_2.Cell(3,2).Range.Text = char(O_i9(1,1));   
        DTI_2_2.Cell(4,2).Range.Text = char(O_i10(1,1));   
        DTI_2_2.Cell(5,2).Range.Text = char(O_i11(1,1));   
        DTI_2_2.Cell(6,2).Range.Text = char(O_i12(1,1));   
        DTI_2_2.Cell(7,2).Range.Text = char(O_i13(1,1));   

        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
        Document.Save; % 保存文档
%             Document.Close; % 关闭文档
%             Word.Quit; % 退出word服务器
end



%M_1:Callback
function M_1_Callback(hObject, eventdata, handles)
% M_11 = get(handles.M_1,'String')
% set(handles.M_1,'string',M_11) 

%M_1:CreateFcn
function M_1_CreateFcn(hObject, eventdata, handles)
global F_i2
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
try
set(hObject,'String',F_i2{1,1})
catch
end


%M_2:Callback
function M_2_Callback(hObject, eventdata, handles)
% M_i2 = get(handles.edit1,'String')
% set(handles.M_2,'string',M_i2) 

%M_1:CreateFcn
function M_2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_3:Callback
function M_3_Callback(hObject, eventdata, handles)
% M_13 = get(handles.M_3,'String')
% set(handles.M_3,'string',M_13) 

%M_3:CreateFcn
function M_3_CreateFcn(hObject, eventdata, handles)
global B_i4
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
try
set(hObject,'string',B_i4{end,1}) 
catch
end


%M_4:Callback
function M_4_Callback(hObject, eventdata, handles)
% M_14 = get(handles.M_4,'String')
% set(handles.M_4,'string',M_14) 

%M_4:CreateFcn
function M_4_CreateFcn(hObject, eventdata, handles)
global M_i4
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
try
set(handles.M_4,'string',M_i4) 
catch
end
