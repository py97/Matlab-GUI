function varargout = Result_3_1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_3_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_3_1_OutputFcn, ...
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


function Result_3_1_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','直井屈曲分析计算');


global pass_Data c_Array table_A table_B table_C table_D table_E table_F table_I table_K table_N 
global A_i1 A_i2 A_i3 A_i4 
global B_i1 B_i2 B_i3 B_i4 B_i5 
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global E_i1 E_i2 E_i3 
global F_i1 F_i2 F_i3 F_i4 F_i5 F_i6
global I_i1 I_i2 I_i3 I_i4 I_i5 I_i6 I_i7 I_i8 I_i9 I_i10 I_i11 
global K_i1 K_i2 K_i3 K_i4 K_i5 K_i6 K_i7 K_i8 K_i9 K_i10 K_i11 K_i12 K_i13 K_i14 K_i15
global N_i1 N_i2 N_i3 N_i4 N_i5 N_i6 N_i7 N_i8 N_i9 N_i10 N_i11 
global O_i9

c_Array=load('taoguanDB.mat');
table_C = c_Array.taoguanDB;
% class(table_C):       table_C:string
%处理“   —”数据变为“0”------------------------------------------------
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
table_A = pass_Data{1};
% class(table_A)        table_A table_B table_D table_E table_F:cell
table_B = pass_Data{2};
table_D = pass_Data{3};
table_E = pass_Data{4};
table_F = pass_Data{5};
table_I = pass_Data{6};
table_K = pass_Data{7};
table_N = pass_Data{8};

A_i1 = table_A(:,1);A_i2 = table_A(:,2);A_i3 = table_A(:,3);A_i4 = table_A(:,4);

B_i1 = table_B(:,1);B_i2 = table_B(:,2);B_i3 = table_B(:,3);B_i4 = table_B(:,4);B_i5 = table_B(:,5);

D_i1 = table_D(:,1);D_i2 = table_D(:,2);D_i3 = table_D(:,3);D_i4 = table_D(:,4);D_i5 = table_D(:,5);
D_i6 = table_D(:,6);D_i7 = table_D(:,7);D_i8 = table_D(:,8);

E_i1 = table_E(:,1);E_i2 = table_E(:,2);E_i3 = table_E(:,3);

F_i1 = table_F(:,1);F_i2 = table_F(:,2);F_i3 = table_F(:,3);F_i4 = table_F(:,4);F_i5 = table_F(:,5);F_i6 = table_F(:,6);
 I_i1 =  table_I(:,1); I_i2 =  table_I(:,2); I_i3 =  table_I(:,3); I_i4 =  table_I(:,4); I_i5 =  table_I(:,5);
 I_i6 =  table_I(:,6); I_i7 =  table_I(:,7); I_i8 =  table_I(:,8); I_i9 =  table_I(:,9);I_i10 = table_I(:,10);
I_i11 = table_I(:,11);

 K_i1 =  table_K(:,1); K_i2 =  table_K(:,2); K_i3 =  table_K(:,3); K_i4 =  table_K(:,4); K_i5 =  table_K(:,5);
 K_i6 =  table_K(:,6); K_i7 =  table_K(:,7); K_i8 =  table_K(:,8); K_i9 =  table_K(:,9);K_i10 = table_K(:,10);
K_i11 = table_K(:,11);K_i12 = table_K(:,12);K_i13 = table_K(:,13);K_i14 = table_K(:,14);K_i15 = table_K(:,15);

 N_i1 =  table_N(:,1); N_i2 =  table_N(:,2); N_i3 =  table_N(:,3); N_i4 =  table_N(:,4); N_i5 =  table_N(:,5);
 N_i6 =  table_N(:,6); N_i7 =  table_N(:,7); N_i8 =  table_N(:,8); N_i9 =  table_N(:,9);N_i10 = table_N(:,10);
N_i11 = table_N(:,11);

%默认数据M-----------------------------------------------------------------
set(handles.M_1,'String',F_i2{1,1})
table_O = pass_Data{9};
O_i9 = table_O(:,9);
set(handles.M_26,'String',O_i9{1,1})
%--------------------------------------------------------------------------
%判断之前是否计算过pass_Data---------------------------------------------------------------%
try
table_R = pass_Data{10};
ResM_3_1 = pass_Data{16};
table_S = pass_Data{11};
S_16_18_SS1_SS3 = pass_Data{29}
% if size(table_R) ~= 0 && size(table_R,2) == 15
    set(handles.uitable1,'Data',table_R)
% end
% if size(ResM_3_1) ~= 0 && size(ResM_3_1,2) == 4
    set(handles.M_5,'String',char(ResM_3_1(1,1)))
    set(handles.M_6,'String',char(ResM_3_1(1,2)))
    set(handles.M_7,'String',char(ResM_3_1(1,3)))
    set(handles.M_8,'String',char(ResM_3_1(1,4)))
% end
R_i1 = table_R(:,1);
R_i3 = table_R(:,3);
R_i4 = table_R(:,4);
S_i3 = table_S(:,3);
S_16_3 = S_16_18_SS1_SS3(:,1);
S_18_3 = S_16_18_SS1_SS3(:,2);
SS1 = S_16_18_SS1_SS3(:,3);
SS1 = SS1{1};
SS3 = S_16_18_SS1_SS3(:,4);
SS3 = SS3{1};
set(handles.text31,'String',num2str(min(str2num(char(R_i3)))))
set(handles.text33,'String',num2str(min(str2num(char(R_i4)))))
set(handles.text39,'String','管柱未失稳')
set(handles.text44,'String','管柱正弦失稳')
set(handles.text45,'String','管柱螺旋失稳')
set(handles.text41,'String',['0','~',char(ResM_3_1(1,2))])
set(handles.text46,'String',[char(ResM_3_1(1,2)),'~',char(ResM_3_1(1,4))])
set(handles.text47,'String',[char(ResM_3_1(1,4)),'~',char(R_i1(end,1))])
set(handles.text43,'String','0')
set(handles.text48,'String',num2str(max(str2num(char(S_16_3))-str2num(char(S_18_3)))))
set(handles.text49,'String',num2str(max(str2num(char(S_18_3))-str2num(char(S_i3(end,1))))))

fig3_1 = figure(31);
set(fig3_1,'units','normalized','position',[0.35 0.15 0.4 0.8]);
set(fig3_1,'menubar','none');
set(fig3_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力');
hold on;
y_fig_1 = str2num(char(SS1));
x_fig_1 = str2num(char(SS3));
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力（kN/m）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
catch
end
%------------------------------------------------------------------------------------------%



handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);


function varargout = Result_3_1_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


%计算
function P_ResBut_3_1_Callback(hObject, eventdata, handles)
global pass_Data
global A_i1 A_i2 A_i3 A_i4 
global B_i1 B_i2 B_i3 B_i4 B_i5 
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global E_i1 E_i2 E_i3 
global F_i1 F_i2 F_i3 F_i4 F_i5 F_i6
global I_i1 I_i2
global K_i1 K_i2 K_i3
global N_i7 N_i8 N_i9 N_i10 N_i11 
global O_i9
global S_i1 S_i3 
global fig3_1
global R_i3 R_i4 R_i8
global M_i6  M_i8 
global S_6 S_8 S_16_3 S_18_3

% clear logic_judge
% logic_judge=0;
%判断数据是否输入完整	

%计算--------------------------------------------------------------------------------------------------------------------------
%T_R_i3
for i = 1:size(D_i3,1)+1
    %             0.204*( 205950*N_n,7                   *K_n,3^2)^(1/3)
    T_R_i3(i,1) = 0.204*( 205950*str2num(char(N_i7(i,1)))*(str2num(char(K_i3(i,1)))^2 ))^(1/3);
end
T_R_i3 = cellstr(num2str(T_R_i3,'%.2f'));

%计算:M_i1 M_i5 M_i6 M_i7 M_i8 M_i26----------------------------------------------------------------------------------------
%钻压（kN）:M_i1
%F_1,2
M_i1 = str2num(char(F_i2(1,1)));
M_i1 = cellstr(num2str(M_i1,'%.2f'));

%套管旋转扭矩（kN.m）:M_i26
%O_1,9
M_i26 = str2num(char(O_i9(1,1)));
M_i26 = cellstr(num2str(M_i26,'%.2f'));


%管柱正弦弯曲临界受压长度（m）:M_i5
%           1000*[M_1,1                    - MIN(R_i,3)                   ]/(I_11                    *D_n6                      )
M_i5(1,1) = 1000*(str2num(char(M_i1(1,1))) - min(str2num(char(T_R_i3(:,1)))))/(str2num(char(I_i1(1,1)))*str2num(char(D_i6(end,1))));
M_i5 = cellstr(num2str(M_i5,'%.2f'));

%管柱正弦弯曲临界受压点井深（m）:M_i6
%           D_n,3                     -M_1,5
M_i6(1,1) = str2num(char(D_i3(end,1)))-str2num(char(M_i5(1,1)));
M_i6 = cellstr(num2str(M_i6,'%.2f'));

%T_R_i4
%0.405*(205950*N_n,7*K_n,3^2)^(1/3)-3.691*M_1,26/((205950*N_n,7/(K_n,3/I_n,1))^(1/3))
for i = 1:size(D_i3,1)+1
    %             ABS[ 0.405*(205950*N_i,7                   *K_i,3                   ^2)^(1/3)-3.691*M_1,26                   /...
    %             ((   205950*N_i,7                    / (K_i,3                    /I_i,1                     ))^(1/3))]

    T_R_i4(i,1) = abs( 0.405*(205950*str2num(char(N_i7(i,1)))*str2num(char(K_i3(i,1)))^2)^(1/3)-3.691*str2num(char(M_i26(1,1)))/...
                  (  ( 205950*(10^6)*str2num(char(N_i7(i,1))) / ( str2num(char(K_i3(i,1)))/str2num(char(I_i1(i,1))) ) )^(1/3)  ) ) ;  
end
T_R_i4 = cellstr(num2str(T_R_i4,'%.2f'))


%管柱螺旋弯曲临界受压长度（m）:M_i7
%           1000*[M_1,1                   -MIN(R_i,4)]/(I_11*D_n6)
M_i7(1,1) = 1000*(str2num(char(M_i1(1,1)))-min(str2num(char(T_R_i4(:,1)))))/(str2num(char(I_i1(1,1)))*str2num(char(D_i6(end,1))));
M_i7 = cellstr(num2str(M_i7,'%.2f'))

%管柱螺旋弯曲临界受压点井深（m）:M_i8
%           D_n,3                     - M_1,7
M_i8(1,1) = str2num(char(D_i3(end,1)))- str2num(char(M_i7(1,1)));
M_i8 = cellstr(num2str(M_i8,'%.2f'));

%钻头外径（mm）:M_i3
%B_n,4
M_i3 = B_i4(end,1);


%上面只算到T_R_i4--------------------------------------------------------------
%S矩阵---------------------------------------------------------------------------------------------------------------------
M_i6 = str2num(char(M_i6(1,1)));
M_i8 = str2num(char(M_i8(1,1)));
f_M_i6 = floor(M_i6)
c_M_i6 = ceil(M_i6)
f_M_i8 = floor(M_i8)
c_M_i8 = ceil(M_i8)
if  M_i6 < M_i8
    %测深:S_i1
    S_i1 = 0;
    for i = 2:size(D_i3,1)+1
        S_i1(i,1) = str2num(char(D_i3(i-1,1)));
    end
    S_i1(end+1,1) = f_M_i6;
    S_i1(end+1,1) = M_i6;
    S_i1(end+1,1) = c_M_i6;
    S_i1 = sort(S_i1);
    [S_1] = find(S_i1==c_M_i6);     %S_1:c_M_i6位置
    MAX_S_i1 = max(S_i1);
    ss = 1;
    while c_M_i6 < MAX_S_i1    %循环出插入M_i6后的S_i1
    S_i1(S_1+ss,1) = c_M_i6+1;
    c_M_i6 =  c_M_i6+1;
    ss = ss+1;
    end
    S_i1(end+1,1) = M_i8;   %插入M_i8
    S_i1 = sort(S_i1);
    [S_2] = find(S_i1==f_M_i6);     %S_2:f_M_i6位置
    [S_11] = find(S_i1==M_i6);     %S_11:M_i6位置
    [S_33] = find(S_i1==M_i8);     %S_33:M_i8位置
    S_size = size(S_i1,1);
    S_i1 = cellstr(strjust(num2str(S_i1,'%.2f'),'left'));
    
    for i = 1:f_M_i6-1
        SS_i1(i,1) = {'0'};
    end
    SS1 = [SS_i1;S_i1];
   
    %有效轴向力(考虑钻压):S_i2
    S_i2 = {};
    S_i2{S_size,1} = num2str( 0 - str2num(char(M_i1(1,1)))  );
    for i = S_size-1:-1:S_2       %计算S_i2从倒数第二行开始到M_i6
    %                     S_k,2                      + K_n+1,3                    * [S_k,1      -S_k-1,1]*0.001
    S_i2{i,1} = num2str(  str2num(char(S_i2(i+1,1))) + str2num(char(K_i3(end,1))) * (str2num(char(S_i1(i+1,1))) - str2num(char(S_i1(i,1))))*0.001   );
    end
    for i=S_2-1:-1:1
    S_i2{i,1} = num2str(  str2num(char(S_i2(i+1,1))) + str2num(char(K_i3(i,1))) * (str2num(char(S_i1(i+1,1))) - str2num(char(S_i1(i,1))))*0.001   );
    end
    
    %弯曲附加接触力:S_i3
    R_i2={};
    R_i2{end+1,1} = num2str( (str2num(char(M_i3(1,1)))/2-str2num(char(I_i2(end,1))))*0.001  );
    S_i3 =  zeros(S_size,1);
    for i = S_size:-1:S_33
    %            R_n,2      * S_k,2^2                    /(4*205950*N_n,7                     )*0.001
    S_i3(i,1) = str2num(R_i2{end,1}) * str2num(char(S_i2(i,1)))^2 /(4*205950*str2num(char(N_i7(end,1))))*0.001;
    end
    for i = S_33-1:-1:S_1
    %            R_n,2      * S_k,2^2                    /(4*205950*N_n,7                     )*0.001
    S_i3(i,1) = str2num(R_i2{end,1}) * str2num(char(S_i2(i,1)))^2 /(8*205950*str2num(char(N_i7(end,1))))*0.001;
    end

    S_i3 = cellstr(strjust(num2str(S_i3),'left'));
    for i = 1:f_M_i6-1
        SS_i3(i,1) = {'0'};
    end
    SS3 = [SS_i3;S_i3];
    
    [S_6] = find(str2num(char(S_i1))==M_i6);
    [S_8] = find(str2num(char(S_i1))==M_i8);
    S_16_3 = S_i3(S_6,1);
    S_18_3 = S_i3(S_8,1);
    %-------------------------------------------------------------------------------------------------------------------------
else
    %M_i6 > M_i8
    %测深:S_i1
    S_i1 = 0;
    for i = 2:size(D_i3,1)+1
        S_i1(i,1) = str2num(char(D_i3(i-1,1)));
    end
    S_i1(end+1,1) = f_M_i8;
    S_i1(end+1,1) = M_i8;
    S_i1(end+1,1) = c_M_i8;
    S_i1 = sort(S_i1);
    [S_1] = find(S_i1==c_M_i8);
    MAX_S_i1 = max(S_i1);
    ss = 1;
    while c_M_i8 < MAX_S_i1    %循环出插入M_i6后的S_i1
    S_i1(S_1+ss,1) = c_M_i8+1;
    c_M_i8 =  c_M_i8+1;
    ss = ss+1;
    end
    S_i1(end+1,1) = M_i6;   %插入M_i6
    S_i1 = sort(S_i1);
    [S_2] = find(S_i1==f_M_i8);          %3
    S_size = size(S_i1,1);               %186
    S_i1 = cellstr(num2str(S_i1,'%.2f'));
    
    %有效轴向力(考虑钻压):S_i2
    S_i2 = {};
    S_i2{S_size,1} = num2str( 0 - str2num(char(M_i1(1,1)))  );
    for i = S_size-1:-1:S_2       %计算S_i2从倒数第二行开始到M_i6
    %                     S_k,2                      + K_n+1,3                    * [S_k,1      -S_k-1,1]*0.001
    S_i2{i,1} = num2str(  str2num(char(S_i2(i+1,1))) + str2num(char(K_i3(end,1))) * (str2num(char(S_i1(i+1,1))) - str2num(char(S_i1(i,1))))*0.001   );
    end
    for i=S_2-1:-1:1
    S_i2{i,1} = num2str(  str2num(char(S_i2(i+1,1))) + str2num(char(K_i3(i,1))) * (str2num(char(S_i1(i+1,1))) - str2num(char(S_i1(i,1))))*0.001   );
    end
    
    %弯曲附加接触力:S_i3
    R_i2={};
    R_i2{end+1,1} = num2str( (str2num(char(M_i3(1,1)))/2-str2num(char(I_i2(end,1))))*0.001  );
    S_i3 =  zeros(S_size,1);
    for i = S_size:-1:S_2
    %            R_n,2      * S_k,2^2                    /(4*205950*N_n,7                     )*0.001
    S_i3(i,1) = str2num(R_i2{end,1}) * str2num(char(S_i2(i,1)))^2 /(4*205950*str2num(char(N_i7(end,1))))*0.001;
    end
    S_i3 = cellstr(strjust(num2str(S_i3),'left'));
    [S_6] = find(str2num(char(S_i1))==M_i6)
    [S_8] = find(str2num(char(S_i1))==M_i8)
    S_16_3 = S_i3(S_6,1);
    S_18_3 = S_i3(S_8,1);
end
pass_Data{29} = [S_16_3,S_18_3];    %保存这两个数到passData

%为添加前：T_R表型-------------------------------------------------------------------------------------------------------------
%测深:T_R_i1 
T_R_i1(1,1) = {'0'};
for i = 2:size(D_i3,1)+1
    T_R_i1(i,1) = D_i3(i-1,1);
end
% T_R_i1 = cellstr(num2str(T_R_i1,'%.2f'));
T_R_i1;

%井筒与管柱半径之差:T_R_i2
%(M_1,3/2-I_n,2)*0.001
for i = 1:size(D_i3,1)+1
    %            (M_1,3                    /2-I_n,2)*0.001
    T_R_i2(i,1) = (str2num(char(M_i3(1,1)))/2-str2num(char(I_i2(i,1))))*0.001;
end
T_R_i2 = cellstr(strjust(num2str(T_R_i2),'left'));

%正弦弯曲临界压力:T_R_i3
%0.204*(205950*N_n,7*K_n,3^2)^(1/3)
% d_N_i7 = str2num(char(N_i7(:,1)))
% d_K_i3 = str2num(char(K_i3(:,1)))
% class(d_K_i3)
% for i = 1:size(D_i3,1)+1
%     %             0.204*(205950*N_n,7                   *K_n,3^2)^(1/3)
%     T_R_i3(i,1) = 0.204*(205950*d_N_i7(i,1)*d_K_i3(i,1)^2)^(1/3);  
% end
% T_R_i3
% T_R_i3 = cellstr(strjust(num2str(T_R_i3),'left'))

%螺旋弯曲临界压力:T_R_i4
%0.405*(205950*N_n,7*K_n,3^2)^(1/3)-3.691*M_1,26/((205950*N_n,7/(K_n,3/I_n,1))^(1/3))
% for i = 1:size(D_i3,1)+1
%     %             0.405*(205950*N_n,7                   *K_n,3^2)^(1/3)                   -3.691*M_1,26                   /
%     %   ((205950*N_n,7                   /(K_n,3                   /I_n,1))^(1/3)                   )
%     T_R_i4(i,1) = abs(0.405*(205950*str2num(char(N_i7(i,1)))*str2num(char(K_i3(i,1)))^2)^(1/3)-3.691*str2num(char(M_i26(1,1)))/...
%         ((205950*str2num(char(N_i7(i,1)))/(str2num(char(K_i3(i,1)))/str2num(char(I_i1(i,1)))))^(1/3)));      
% end
% T_R_i4 = cellstr(num2str(T_R_i4,'%.2f'));

%有效轴向力(考虑钻压):T_R_i5
%R_i+1,5+K_i+1,3*[R_i+1,1-R_i,1]*0.001  
%0-M_1,1
T_R_i5 = zeros(size(D_i3,1),1);                                      %2
T_R_i5(size(D_i3,1)+1,1) = 0 - str2num(char(M_i1(1,1)));             %3
T_R_i5 = cellstr(num2str(T_R_i5));                                   %3

for i = size(D_i3,1):-1:1
    %                      R_i+1,5                     + K_i+1,3                   *[R_i+1,1                     -R_i,1                     ]*0.001
    T_R_i5{i,1} = num2str(  str2num(char(T_R_i5(i+1,1)))+ str2num(char(K_i3(i+1,1)))*(str2num(char(T_R_i1(i+1,1)))-str2num(char(T_R_i1(i,1))))*0.001 );
end
T_R_i5;

%正弦弯曲附加接触力:T_R_i6
%R_n,2*R_n,5^2/(8*205950*N_n,7)*0.001
for i = 1:size(D_i3,1)+1
    %             R_n,2                   *R_n,5^2                   /(8*205950*N_n,7                   )*0.001
    T_R_i6(i,1) = str2num(char(T_R_i2(i,1)))*str2num(char(T_R_i5(i,1)))^2/(8*205950*str2num(char(N_i7(i,1))))*0.001;
end
% T_R_i6 = cellstr(strjust(num2str(T_R_i6),'left'))

%螺旋弯曲附加接触力:T_R_i7
%R_n,2*R_n,5^2/(4*205950*N_n,7)*0.001
for i = 1:size(D_i3,1)+1
    %             R_n,2                   *R_n,5^2                   /(4*205950*N_n,7                   )*0.001
    T_R_i7(i,1) = str2num(char(T_R_i2(i,1)))*str2num(char(T_R_i5(i,1)))^2/(4*205950*str2num(char(N_i7(i,1))))*0.001;
end
% T_R_i7 = cellstr(strjust(num2str(T_R_i7),'left'))

%R表--------------------------------------------------------------------------------------------------------------------
% M_i6          %1.1744e+03
% M_i8          %1.1153e+03
if M_i6 <= M_i8
    flag = 0;
    
%测深：R_i1
T_R_i1 = str2num(char(T_R_i1(:,1)))     %3
T_R_i1(size(D_i3,1)+2,1) = M_i6;
T_R_i1(size(D_i3,1)+3,1) = M_i8;
[R_i1,index]=sort(T_R_i1);
aa  = max(index);                      %M_i8(1,1)
bb  = max(index-1);                      %M_i6(1,1)
[R1] = find(index==aa);                 %R1:M18行数
[R2] = find(index==bb);               %R2:M16行数
R_i1 = cellstr(num2str(R_i1,'%.2f'));
R_size = size(R_i1,1) ;
    
%井筒与管柱半径之差：R_i2
R_2_16 = T_R_i2(R2,1);
T_R_i2 = [T_R_i2(1:R2,1);R_2_16;T_R_i2(R2+1:end,1)];
R_2_18 = T_R_i2(R1,1);
R_i2 = [T_R_i2(1:R1,1);R_2_18;T_R_i2(R1+1:end,1)];

%正弦弯曲临界压力：R_i3
R_3_16 = T_R_i3(R2,1);
T_R_i3 = [T_R_i3(1:R2,1);R_3_16;T_R_i3(R2+1:end,1)];
R_3_18 = T_R_i3(R1,1);
R_i3 = [T_R_i3(1:R1,1);R_3_18;T_R_i3(R1+1:end,1)];

%螺旋弯曲临界压力：R_i4
R_4_16 = T_R_i4(R2,1);
T_R_i4 = [T_R_i4(1:R2,1);R_4_16;T_R_i4(R2+1:end,1)];
R_4_18 = T_R_i4(R1,1);
R_i4 = [T_R_i4(1:R1,1);R_4_18;T_R_i4(R1+1:end,1)];

%有效轴向力(考虑钻压)：R_i5
%R1:M18行数   %R2:M16行数
R_i5 = zeros(R_size,1);                                      %2
R_i5(R_size,1) = 0 - str2num(char(M_i1(1,1)));             %3
R_i5 = cellstr(num2str(R_i5));

for i = R_size-1:-1:1
    %                      R_i+1,5                     + K_i+1,3                   *[R_i+1,1                     -R_i,1                     ]*0.001
    if i == R1 || i == R2
        R_i5{i,1} = num2str(  str2num(char(R_i5(i+1,1)))+ str2num(char(K_i3(end,1)))*(str2num(char(R_i1(i+1,1)))-str2num(char(R_i1(i,1))))*0.001 , '%.2f');
    else
        R_i5{i,1} = num2str(  str2num(char(R_i5(i+1,1)))+ str2num(char(K_i3(i+1,1)))*(str2num(char(R_i1(i+1,1)))-str2num(char(R_i1(i,1))))*0.001 , '%.2f');
    end
end

%正弦弯曲附加接触力：R_i6
%        R_M_1,6,2*R_M_1,6,5^2/(8*205950*N_n+1,7)*0.001
R_6_16 = str2num(char(R_i2(R2,1)))*str2num(char(R_i5(R2,1)))^2/(8*205950*str2num(char(N_i7(end,1))))*0.001
R_6_18 = str2num(char(R_i2(R1,1)))*str2num(char(R_i5(R1,1)))^2/(8*205950*str2num(char(N_i7(end,1))))*0.001
R_i6 = [T_R_i6(1:R2,1);R_6_16;T_R_i6(R2+1:end,1)];
R_i6 = [R_i6(1:R1,1);R_6_18;R_i6(R1+1:end,1)];
R_i6 = cellstr(strjust(num2str(R_i6),'left'));

%正弦弯曲附加接触力：R_i7
R_7_16 = str2num(char(R_i2(R2,1)))*str2num(char(R_i5(R2,1)))^2/(4*205950*str2num(char(N_i7(end,1))))*0.001;
R_7_18 = str2num(char(R_i2(R1,1)))*str2num(char(R_i5(R1,1)))^2/(4*205950*str2num(char(N_i7(end,1))))*0.001;
T_R_i7 = [T_R_i7(1:R2,1);R_7_16;T_R_i7(R2+1:end,1)];
R_i7 = [T_R_i7(1:R1,1);R_7_18;T_R_i7(R1+1:end,1)];
R_i7 = cellstr(strjust(num2str(R_i7),'left'));

%判断管柱是否发生屈曲:R_i8
%IF(R_i,5>-MIN(R_i3),"未失稳")
%IF(-MIN(R_i,4)<R_i,5≤-MIN(R_i3),"正弦弯曲")
%IF(R_i,5≤-MIN(R_i,4),"螺旋弯曲")
R_i8 = {};
d_R_i3 = str2num(char(R_i3(:,1)));
d_R_i4 = str2num(char(R_i4(:,1)));
R_i3_MIN = min(d_R_i3(:,1))  ;
R_i4_MIN = min(d_R_i4(:,1));
for  i = 1:size(D_i3,1)+3
    if str2num(char(R_i5(i,1))) > -R_i3_MIN
        R_i8{i,1} = '未失稳';
    elseif -R_i4_MIN < str2num(char(R_i5(i,1))) && str2num(char(R_i5(i,1))) <= -R_i3_MIN
        R_i8{i,1} = '正弦弯曲';
    elseif str2num(char(R_i5(i,1))) <= -R_i4_MIN
        R_i8{i,1} = '螺旋弯曲';
    end
end

%弯曲附加接触力：R_i9
%IF(R_i,5>-MIN(R_i3),"=0")
%IF(-MIN(R_i,4)<R_i,5≤-MIN(R_i3),"=R_i,6对应深度")
%IF(R_i,5≤-MIN(R_i,4),"=R_i,7对应深度")
for  i = 1:size(D_i3,1)+3
    if str2num(char(R_i5(i,1))) > -R_i3_MIN
        R_i9(i,1) = {'0'};
    elseif -R_i4_MIN < str2num(char(R_i5(i,1))) && str2num(char(R_i5(i,1))) <= -R_i3_MIN
        R_i9(i,1) = R_i6(i,1);
    elseif str2num(char(R_i5(i,1))) <= -R_i4_MIN
        R_i9(i,1) = R_i7(i,1);
    end
end  
%--------------------------------------------------------------------------------------------------------------------------
else
flag = 1
T_R_i1 = str2num(char(T_R_i1(:,1)))     %3
T_R_i1(size(D_i3,1)+2,1) = M_i8;
[R_i1,index]=sort(T_R_i1);
aa  = max(index);                        %M_i8(1,1)
[R1] = find(index==aa);               %R1:M18行数
R_i1 = cellstr(num2str(R_i1,'%.2f'));
R_size = size(R_i1,1); 

%井筒与管柱半径之差：R_i2
% T_R_i2
R_2_18 = T_R_i2(R1,1);
R_i2 = [T_R_i2(1:R1,1);R_2_18;T_R_i2(R1+1:end,1)] ;

%正弦弯曲临界压力：R_i3
% T_R_i3
R_3_18 = T_R_i3(R1,1);
R_i3 = [T_R_i3(1:R1,1);R_3_18;T_R_i3(R1+1:end,1)];

%螺旋弯曲临界压力：R_i4
% T_R_i4
R_4_18 = T_R_i4(R1,1);
R_i4 = [T_R_i4(1:R1,1);R_4_18;T_R_i4(R1+1:end,1)];

%有效轴向力(考虑钻压)：R_i5
R_i5 = zeros(R_size,1);                                      %2
R_i5(R_size,1) = 0 - str2num(char(M_i1(1,1)));               %3
R_i5 = cellstr(num2str(R_i5));

for i = R_size-1:-1:1
    %                      R_i+1,5                     + K_i+1,3                   *[R_i+1,1                     -R_i,1                     ]*0.001
    if i == R1 
        R_i5{i,1} = num2str(  str2num(char(R_i5(i+1,1)))+ str2num(char(K_i3(end,1)))*(str2num(char(R_i1(i+1,1)))-str2num(char(R_i1(i,1))))*0.001 , '%.2f');
    else
        R_i5{i,1} = num2str(  str2num(char(R_i5(i+1,1)))+ str2num(char(K_i3(i+1,1)))*(str2num(char(R_i1(i+1,1)))-str2num(char(R_i1(i,1))))*0.001 , '%.2f');
    end
    
end

%正弦弯曲附加接触力：R_i6
%        R_M_1,6,2*R_M_1,6,5^2/(8*205950*N_n+1,7)*0.001
R_6_18 = R_i2(R1,1)*R_i5(R1,1)^2/(8*205950*str2num(char(N_i7(end,1))))*0.001;
R_i6 = [T_R_i6(1:R1,1);R_6_18;T_R_i6(R1+1:end,1)];

%正弦弯曲附加接触力：R_i7
R_7_18 = R_i2(R1,1)*R_i5(R1,1)^2/(4*205950*str2num(char(N_i7(end,1))))*0.001;
T_R_i7 = [T_R_i7(1:R1,1);R_7_18;T_R_i7(R1+1:end,1)];

%判断管柱是否发生屈曲:R_i8
%IF(R_i,5>-MIN(R_i3),"未失稳")
%IF(-MIN(R_i,4)<R_i,5≤-MIN(R_i3),"正弦弯曲")
%IF(R_i,5≤-MIN(R_i,4),"螺旋弯曲")
d_R_i3 = str2num(char(R_i3(:,1)));
d_R_i4 = str2num(char(R_i4(:,1)));
R_i3_MIN = min(d_R_i3(:,1)) ; 
R_i4_MIN = min(d_R_i4(:,1));
for  i = 1:size(D_i3,1)+2
    if str2num(char(R_i5(i,1))) > -R_i3_MIN
        R_i8(i,1) = {'未失稳'};
    elseif -R_i4_MIN < str2num(char(R_i5(i,1))) && str2num(char(R_i5(i,1))) <= -R_i3_MIN
        R_i8(i,1) = {'正弦弯曲'};
    elseif str2num(char(R_i5(i,1))) <= -R_i4_MIN
        R_i8(i,1) = {'螺旋弯曲'};
    end
end
% R_i8

%弯曲附加接触力：R_i9
%IF(R_i,5>-MIN(R_i3),"=0")
%IF(-MIN(R_i,4)<R_i,5≤-MIN(R_i3),"=R_i,6对应深度")
%IF(R_i,5≤-MIN(R_i,4),"=R_i,7对应深度")
for  i = 1:size(D_i3,1)+2
    if str2num(char(R_i5(i,1))) > -R_i3_MIN
        R_i9(i,1) = {'0'}
    elseif -R_i4_MIN < str2num(char(R_i5(i,1))) && str2num(char(R_i5(i,1))) <= -R_i3_MIN
        R_i9(i,1) = R_i6(i,1);
    elseif str2num(char(R_i5(i,1))) <= -R_i4_MIN
        R_i9(i,1) = R_i7(i,1);
    end
end  
% R_i9 
end

set(handles.M_5,'String',M_i5)
set(handles.M_6,'String',M_i6)
set(handles.M_7,'String',M_i7)
set(handles.M_8,'String',M_i8)

oldData_29 = pass_Data{29};
pass_Data{29} = [oldData_29,{SS1},{SS3}];
result_Data = [R_i1,R_i2,R_i3,R_i4,R_i5,R_i6,R_i7,R_i8,R_i9];
set(handles.uitable1,'Data',result_Data)
pass_Data{10} = result_Data;
result_S = [S_i1,S_i2,S_i3];
pass_Data{11} = result_S;
pass_Data{16} = [get(handles.M_1,'String'),get(handles.M_5,'String'),...
    get(handles.M_6,'String'),get(handles.M_7,'String'),get(handles.M_8,'String'),get(handles.M_26,'String')];
set(handles.text31,'String',num2str(min(str2num(char(R_i3)))))
set(handles.text33,'String',num2str(min(str2num(char(R_i4)))))
set(handles.text39,'String','管柱未失稳')
set(handles.text44,'String','管柱正弦失稳')
set(handles.text45,'String','管柱螺旋失稳')
set(handles.text41,'String',['0','~',num2str(M_i6)])
set(handles.text46,'String',[num2str(M_i6),'~',num2str(M_i8)])
set(handles.text47,'String',[num2str(M_i8),'~',char(R_i1(end,1))])
set(handles.text43,'String','0')
set(handles.text48,'String',num2str(max(str2num(char(S_16_3))-str2num(char(S_18_3)))))
set(handles.text49,'String',num2str(max(str2num(char(S_18_3))-str2num(char(S_i3(end,1))))))

fig3_1 = figure(31);
set(fig3_1,'units','normalized','position',[0.35 0.15 0.4 0.8]);
set(fig3_1,'menubar','none');
set(fig3_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力');
hold on;
y_fig_1 = str2num(char(SS1));
x_fig_1 = str2num(char(SS3));
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力（kN/m）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;

%导出图表
function P_OutBut_3_1_Callback(hObject, eventdata, handles)
%导出报告使用下面的全局变量 
global R_i8 R_i3 R_i4 fig3_1 M_i6 M_i8 S_18_3 S_16_3 S_i3 R_i1
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
        Selection.Text = '四、直井屈曲分析计算结果';
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
        DTI3_1 = Document.Tables.Item(1); % 或DTI = Tables;
        DTI3_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI3_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI3_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI3_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI3_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI3_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI3_1.Cell(1,1).Range.Text = '钻压（kN）';
        DTI3_1.Cell(1,2).Range.Text = '管柱正弦弯曲临界受压长度（m）';
        DTI3_1.Cell(1,3).Range.Text = '管柱正弦弯曲临界受压点井深（m）';
        DTI3_1.Cell(1,4).Range.Text = '管柱螺旋弯曲临界受压长度（m）';
        DTI3_1.Cell(1,5).Range.Text = '管柱螺旋弯曲临界受压点井深（m）';
        DTI3_1.Cell(1,6).Range.Text = '套管旋转扭矩（kN.m）';
%             DTI3_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI3_1.Cell(2,1).Range.Text = get(handles.M_1,'String');
        DTI3_1.Cell(2,2).Range.Text = char(get(handles.M_5,'String'));
        DTI3_1.Cell(2,3).Range.Text = get(handles.M_6,'String');
        DTI3_1.Cell(2,4).Range.Text = char(get(handles.M_7,'String'));
        DTI3_1.Cell(2,5).Range.Text = get(handles.M_8,'String');
        DTI3_1.Cell(2,6).Range.Text = get(handles.M_26,'String');


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
        Tables = Document.Tables.Add(Selection.Range,size(R_i8,1)-1+3,3);    % size(R_i8,1)+3 行 6列
        DTI3_2 = Document.Tables.Item(2); % 或DTI = Tables;
        DTI3_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI3_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI3_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI3_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI3_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI3_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
         
        % 指定标题各单元格内容
        DTI3_2.Cell(1,1).Range.Text = '直井管柱发生正弦弯曲临界压力（kN）';
        DTI3_2.Cell(2,1).Range.Text = '直井管柱发生螺旋弯曲临界压力（kN）';
        DTI3_2.Cell(3,1).Range.Text = '判断管柱是否发生屈曲';
        DTI3_2.Cell(3,2).Range.Text = '对应井段（m）';
        DTI3_2.Cell(3,3).Range.Text = '与井壁最大附加接触力（kN/m）';
        % 合并单元格
        DTI3_2.Cell(1, 2).Merge(DTI3_2.Cell(1, 3));
        DTI3_2.Cell(2, 2).Merge(DTI3_2.Cell(2, 3));
        

        %填写数据
        DTI3_2.Cell(1,2).Range.Text = num2str(min(str2num(char(R_i3)))); 
        DTI3_2.Cell(2,2).Range.Text = num2str(min(str2num(char(R_i4))));  
        for U8_row = 1:size(R_i8,1)
            DTI3_2.Cell(U8_row+3,1).Range.Text = char(R_i8(U8_row,1)); %管柱失稳/未失稳
        end
        DTI3_2.Cell(4,2).Range.Text = ['0~',num2str(M_i6)];  
        DTI3_2.Cell(5,2).Range.Text = [num2str(M_i6),'~',num2str(M_i8)];  
        DTI3_2.Cell(6,2).Range.Text = [num2str(M_i8),'~',char(R_i1(end,1))];  
        DTI3_2.Cell(4,3).Range.Text = '0';  
        DTI3_2.Cell(5,3).Range.Text = num2str(max(str2num(char(S_16_3))-str2num(char(S_18_3))));  
        DTI3_2.Cell(6,3).Range.Text = num2str(max(str2num(char(S_18_3))-str2num(char(S_i3(end,1)))));  
        
        
         %导出图片-------------------
            Selection.Start = Content.end; % 设定光标位置为最后
            Selection.TypeParagraph;    %插入新的空段落
            
            hObject_fig1 = findobj(fig3_1);
            hObject_fig1 = hObject_fig1(1,1);
            
            hgexport(hObject_fig1, '-clipboard');
            Selection.Range.Paragraphs.Item(1).Range.Paste;
            
            Selection.Start = Content.end; % 设定光标位置为最后
            Selection.TypeParagraph;    %插入新的空段落       

        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
        Document.Save; % 保存文档
%             Document.Close; % 关闭文档
%             Word.Quit; % 退出word服务器
end










%M_1
function M_1_Callback(hObject, eventdata, handles)

function M_1_CreateFcn(hObject, eventdata, handles)
global F_i2
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',F_i2{1,1})

%M_5
function M_5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_6
function M_6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_7
function M_7_Callback(hObject, eventdata, handles)

function M_7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_8
function M_8_Callback(hObject, eventdata, handles)

function M_8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_26
function M_26_Callback(hObject, eventdata, handles)


function M_26_CreateFcn(hObject, eventdata, handles)
global O_i9
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',O_i9)
