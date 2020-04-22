function varargout = Result_7_1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_7_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_7_1_OutputFcn, ...
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

function Result_7_1_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','直井管柱及螺纹疲劳损伤分析和疲劳寿命计算');
global pass_Data c_Array table_A table_B table_C table_D table_E table_F table_I table_K table_N table_O table_R table_S table_U table_W
global A_i1 A_i2 A_i3 A_i4 
global B_i1 B_i2 B_i3 B_i4 B_i5 
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global E_i1 E_i2 E_i3 
global F_i1 F_i2 F_i3 F_i4 F_i5 F_i6
global I_i1 I_i2 I_i3 I_i4 I_i5 I_i6 I_i7 I_i8 I_i9 I_i10 I_i11 
global K_i1 K_i2 K_i3 K_i4 K_i5 K_i6 K_i7 K_i8 K_i9 K_i10 K_i11 K_i12 K_i13 K_i14 K_i15
global N_i1 N_i2 N_i3 N_i4 N_i5 N_i6 N_i7 N_i8 N_i9 N_i10 N_i11 
global O_i1 O_i2 O_i3 O_i4 O_i5 O_i6 O_i7 O_i8 O_i9 O_i10 O_i11 O_i12 O_i13
global R_i1 R_i2 R_i3 R_i4 R_i5 R_i6 R_i7 R_i8 R_i9
global S_i1 S_i2 S_i3
global U_i1 U_i2 U_i3 U_i4 U_i5 U_i6

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
table_B = pass_Data{2};
table_D = pass_Data{3};
table_E = pass_Data{4};
table_F = pass_Data{5};
table_I = pass_Data{6};
table_K = pass_Data{7};
table_N = pass_Data{8};
table_O = pass_Data{9};
table_R = pass_Data{10};
table_S = pass_Data{11};
table_U = pass_Data{12};

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

O_i1 =  table_O(:,1); O_i2 =  table_O(:,2); O_i3 =  table_O(:,3); O_i4 =  table_O(:,4); O_i5 =  table_O(:,5);
O_i6 =  table_O(:,6); O_i7 =  table_O(:,7); O_i8 =  table_O(:,8); O_i9 =  table_O(:,9);O_i10 = table_O(:,10);
O_i11 = table_O(:,11);O_i12 = table_O(:,12);O_i13 = table_O(:,13);

R_i1 =  table_R(:,1); R_i2 =  table_R(:,2); R_i3 =  table_R(:,3); R_i4 =  table_R(:,4); R_i5 =  table_R(:,5);
R_i6 =  table_R(:,6); R_i7 =  table_R(:,7); R_i8 =  table_R(:,8); R_i9 =  table_R(:,9);

S_i1 =  table_S(:,1); S_i2 =  table_S(:,2); S_i3 =  table_S(:,3);

U_i1 =  table_U(:,1); U_i2 =  table_U(:,2); U_i3 =  table_U(:,3); U_i4 =  table_U(:,4); U_i5 =  table_U(:,5);
U_i6 =  table_U(:,6);

%判断之前是否计算过pass_Data---------------------------------------------------------------%
try
    table_Y = pass_Data{14};
    ResM_7_1 = pass_Data{24};
    table_Y1 = (table_Y(1:16))';
    table_Y2 = (table_Y(17:end))';
    set(handles.P_Y_1,'Data',table_Y1)
    set(handles.P_Y_2,'Data',table_Y2)
    set(handles.M_28,'String',ResM_7_1(1))
    set(handles.M_29,'String',ResM_7_1(2))
    set(handles.M_30,'String',ResM_7_1(3))
    set(handles.M_31,'String',ResM_7_1(4))
    set(handles.M_32,'String',ResM_7_1(5))
    set(handles.M_33,'String',ResM_7_1(6))
    set(handles.M_34,'String',ResM_7_1(7))
catch
end
%------------------------------------------------------------------------------------------%

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Result_7_1_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

%计算------------------------------------------------------------------------------------------------------------------------
function P_Y_ResBut_11_Callback(hObject, eventdata, handles)
global pass_Data
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global F_i1 F_i2
global I_i1 I_i2 I_i3 I_i4 I_i5 I_i6 I_i7 I_i8
global K_i1 K_i2 K_i3 K_i4
global N_i1 N_i2 N_i3 N_i4 N_i5 N_i6 N_i7
global O_i9 O_i10 O_i11 O_i12 O_i13
global R_i1 R_i2 R_i8 R_i9

% clear logic_judge
% logic_judge=0;
%判断数据是否输入完整	

%计算------------------------------------------------------------------------------------------------------------------------
%M_28---M_34矩阵    double型
%最大轴向力（kN）：M_28
%直井时:MAX（K_i,4）
z_M_28 = max(str2num(char(K_i4(:,1))));   
% %定向井时:MAX（L_i,5）
% d_M_28 = max(str2num(char(L_i5(:,1))))  

%最大钻压（kN）:M_29
%直井时:F_1,2
z_M_29 = str2num(char(F_i2(1,1)));   
% %定向井时:F_1,2
% d_M_29 = str2num(char(F_i2(1,1)))  

%最大剪切力（MPa）:M_30
%直井时:O_1,10
z_M_30 = str2num(char(O_i10(1,1))) ;  
% %定向井时:O_1,10
% d_M_30 = str2num(char(O_i10(1,1)))

%管柱是否发生屈曲:M_31
%直井时:R_n+1,8（指R_i,8最后一行）
z_M_31 = R_i8(end,1) ;
% %定向井时:T_m,12（指T_i,12最后一行）
% d_M_31 = str2num(char(T_i12(end,1)))

%管外最大液压（MPa）:M_32
%直井时:MAX(I_i,9)
z_M_32 = str2num(char(I_i8(end,1)));   
% %定向井时:MAX(J_i,17)
% d_M_32 = str2num(char(T_i12(end,1)))

%管内最大液压（MPa）:M_33
%直井时:MAX(I_i,8)
z_M_33 = max(str2num(char(I_i8(:,1))) )  ;
% %定向井时:MAX(J_i,16)
% d_M_33 = max(str2num(char(J_i16(:,1))) );

%最大扭矩（kN.m）:M_34
%直井时:O_1,9
z_M_34 = str2num(char(O_i9(1,1))) ;
% %定向井时:Q_1,9
% d_M_34 = str2num(char(Q_i9(1,1))) 

%Y矩阵---------------------------------------------------------------------------------------------------------------------
%螺纹类型：Y_i1
%      D_n,8
Y_i1 = D_i8(end,1)

%轴向应力（MPa）:Y_i2
%      M_1,29/MIN(N_i,5)*0.001
Y_i2 = z_M_29/min(str2num(char(N_i5(:,1))))*0.001;

%最大剪切应力（MPa）:Y_i3
%      M_1,30
Y_i3 = z_M_30;

%管柱弯曲应力（MPa）:Y_i4
%       0
Y_i4 =  0;

%正弦屈曲应力（MPa）:Y_i5
%       0.3151*2*MIN(I_i,2                   )*0.001*MIN(R_i,2)                   /MIN(N_i,7)                   *
%       (M_1,29             *1000)*10^(-6)
Y_i5 =  0.3151*2*min(str2num(char(I_i2(:,1))))*0.001*min(str2num(char(R_i2(:,1))))/min(str2num(char(N_i7(:,1))))*...
        (z_M_29*1000)*10^(-6);

%螺旋屈曲应力（MPa）:Y_i6
%      {0.5*MIN(I_i,2)                   *0.001*MIN(R_i,2)                   /MIN(N_i,7)                   *...
%      (M_1,29*1000)*[1.5*ABS(M_1,34*1000)+SQRT((1.5*ABS(M_1,34*1000))^2+8*205950*10^6*MIN(N_i,7)                   *
%       M_1,29*1000)]/SQRT(8*205950*10^6*MIN(N_i,7)                   *M_1,29*1000)}*10^(-6)
Y_i6 = (0.5*min(str2num(char(I_i2(:,1))))*0.01* min(str2num(char(R_i2(:,1))))/min(str2num(char(N_i7(:,1))))*...
       (z_M_29*1000)*(1.5*abs(z_M_34*1000)+sqrt((1.5*abs(z_M_34*1000))^2+8*205950*10^6*min(str2num(char(N_i7(:,1))))*...
        z_M_29*1000))/sqrt(8*205950*10^6*min(str2num(char(N_i7(:,1))))*z_M_29*1000))*10^(-6);
    
    I2 = min(str2num(char(I_i2(:,1))))
    R2 = min(str2num(char(R_i2(:,1))))
    N7 = min(str2num(char(N_i7(:,1))))
    Z29 = z_M_29
    Z34 = abs(z_M_34*1000)

   
%弯曲附加应力（MPa）:Y_i7
%IF(M_1,31="未失稳",是=Y_1,4,否=IF(M_1,31="正弦弯曲",是=Y_1,5,否=IF(M_1,31="螺旋弯曲",是=Y_1,6)))
c_M_31 = char(z_M_31)
if strcmp(c_M_31 , '未失稳')
    Y_i7 = Y_i5;
elseif strcmp(c_M_31 , '正弦弯曲')
    Y_i7 = Y_i5;
elseif strcmp(c_M_31 , '螺旋弯曲')
    Y_i7 = Y_i6;
end

%径向应力（MPa）:Y_i8
%      (D_n,4^2                     *M_1,32-D_n,5^2                     *M_1,33)/  (D_n,4^2                     -
%       D_n,5^2                     )-D_n,4^2                     *D_n,5^2                     *(M_1,32-M_1,33)/
%       (D_n,4^2                     -D_n,5^2                     )/(D_n,4/2)^2
Y_i8 = (str2num(char(D_i4(end,1)))^2*z_M_32-str2num(char(D_i5(end,1)))^2*z_M_33)/  (str2num(char(D_i4(end,1)))^2-...
        str2num(char(D_i5(end,1)))^2)-str2num(char(D_i4(end,1)))^2*str2num(char(D_i5(end,1)))^2*(z_M_32-z_M_33)/...
        (str2num(char(D_i4(end,1)))^2-str2num(char(D_i5(end,1)))^2)/(str2num(char(D_i4(end,1)))/2)^2;
    
%切向应力（MPa）:Y_i9
%      (D_n,4^2                     *M_1,32-D_n,5^2                     *M_1,33)/(D_n,4^2                     -
%       D_n,5^2)                    +D_n,4^2                     *D_n,5^2                     *(M_1,32-M_1,33)/
%       (D_n,4^2                     -D_n,5^2                      )/(D_n,4/2)^2
Y_i9 = (str2num(char(D_i4(end,1)))^2*z_M_32-str2num(char(D_i5(end,1)))^2*z_M_33)/(str2num(char(D_i4(end,1)))^2-...
        str2num(char(D_i5(end,1)))^2)+str2num(char(D_i4(end,1)))^2*str2num(char(D_i5(end,1)))^2*(z_M_32-z_M_33)/...
        (str2num(char(D_i4(end,1)))^2-str2num(char(D_i5(end,1)))^2)/(str2num(char(D_i4(end,1)))/2)^2;
    
%Mises等效应力1（MPa）:Y_i10
%       SQRT(0.5*((Y_1,2+Y_1,7-Y_1,8)^2+(Y_1,8-Y_1,9)^2+(Y_1,9-Y_1,1-Y_1,7)^2))
Y_i10 = sqrt(0.5*((Y_i2 +Y_i7 -Y_i8)^2 +(Y_i8 -Y_i9)^2 +(Y_i9 -Y_i2 -Y_i7 )^2));

%Mises等效应力2（MPa）:Y_i11
%       SQRT(0.5*((Y_1,2-Y_1,7-Y_1,8)^2+(Y_1,8-Y_1,9)^2+(Y_1,9-Y_1,2+Y_1,7)^2))
Y_i11 = sqrt(0.5*((Y_i2 -Y_i7-Y_i8)^2  +(Y_i8-Y_i9)^2  +(Y_i9 -Y_i2 +Y_i7)^2));

%Tresa等效应力1（MPa）:Y_i12
%       SQRT(Y_1,10^2+3*Y_1,3^2)
Y_i12 = sqrt(Y_i10^2+3*Y_i3^2);

%Tresa等效应力2（MPa）:Y_i13
%       SQRT(Y_1,11^2+3*Y_1,3^2)
Y_i13 = sqrt(Y_i11^2+3*Y_i3^2);

%平均应力（MPa）:Y_i14
%      (Y_1,12+Y_1,13)/2
Y_i14 =( Y_i12+Y_i13)/2;

%应力幅（MPa）:Y_i15
%       ABS(Y_1,12-Y_1,13)*2
Y_i15 = abs(Y_i12-Y_i13)*2;

%应力比:Y_i16
%Y_1,13/Y_1,12
Y_i16 = Y_i13/Y_i12;

%材料屈服强度（MPa）:Y_i17
%I_n,7
Y_i17 = str2num(char(I_i7(end,1)));

%等效循环应力（MPa）:Y_i18
%       Y_1,15/(1-Y_1,14/Y_1,17)
Y_i18 = Y_i15/(1-Y_i14/Y_i17);

%疲劳循环寿命极限:Y_i19
%10^6
Y_i19 = 10^6;

%疲劳应力极限（MPa）:Y_i20
%       38+0.46*Y_1,17
Y_i20 = 38+0.46*Y_i17;

%修正疲劳应力极限（MPa）:Y_i22
%       Y_1,20/2.189/1.3
Y_i22 = Y_i20/2.189/1.3;

%应力寿命曲线截距:Y_i23
%       LOG10(Y_1,22)+LOG10(Y_1,19)/(LOG10(Y_1,19)-3)*(LOG10(0.75*Y_1,17)-LOG10(Y_1,22))
Y_i23 = log10(Y_i22)+log10(Y_i19)/  (log10(Y_i19) -3)*(log10(0.75*Y_i17 )-log10(Y_i22 ));

%应力寿命曲线斜率:Y_i24
%       1/(LOG10(Y_1,19)-3)*(LOG10(0.75*Y_1,17)-LOG10(Y_1,22))
Y_i24 = 1/(log10(Y_i19)-3 )*(log10(0.75*Y_i17 )-log10(Y_i22));

%套管疲劳损伤总量:Y_i25
%       0.68*Y_1,19*Y_1,22^Y_1,24
Y_i25 = 0.68*Y_i19*Y_i22^Y_i24;

%单次循环疲劳损伤度:Y_i26
%Y_1,18^Y_1,24
Y_i26 = Y_i18^Y_i24;

%套管管体疲劳寿命:Y_i27
%       Y_1,25/Y_1,26
Y_i27 = Y_i25/Y_i26;

%套管螺纹疲劳寿命:Y_i28
%8000000*(M_1,29+14.3*M_1,34)^-0.44
Y_i28 = 8000000*(z_M_29+14.3*z_M_34)^-0.44;

set(handles.M_28,'String',z_M_28);
set(handles.M_29,'String',z_M_29);
set(handles.M_30,'String',z_M_30);
set(handles.M_31,'String',z_M_31);
set(handles.M_32,'String',z_M_32);
set(handles.M_33,'String',z_M_33);
set(handles.M_34,'String',z_M_34);

Y_i2 = cellstr(strjust(num2str(Y_i2),'left'));
Y_i3 = cellstr(strjust(num2str(Y_i3),'left'));
Y_i4 = cellstr(strjust(num2str(Y_i4),'left'));
Y_i5 = cellstr(strjust(num2str(Y_i5),'left'));
Y_i6 = cellstr(strjust(num2str(Y_i6),'left'));
Y_i7 = cellstr(strjust(num2str(Y_i7),'left'));
Y_i8 = cellstr(strjust(num2str(Y_i8),'left'));
Y_i9 = cellstr(strjust(num2str(Y_i9),'left'));
Y_i10 = cellstr(strjust(num2str(Y_i10),'left'));
Y_i11 = cellstr(strjust(num2str(Y_i11),'left'));
Y_i12 = cellstr(strjust(num2str(Y_i12),'left'));
Y_i13 = cellstr(strjust(num2str(Y_i13),'left'));
Y_i14 = cellstr(strjust(num2str(Y_i14),'left'));
Y_i15 = cellstr(strjust(num2str(Y_i15),'left'));
Y_i16 = cellstr(strjust(num2str(Y_i16),'left'));
Y_i17 = cellstr(strjust(num2str(Y_i17),'left'));
Y_i18 = cellstr(strjust(num2str(Y_i18),'left'));
Y_i19 = cellstr(strjust(num2str(Y_i19),'left'));
Y_i20 = cellstr(strjust(num2str(Y_i20),'left'));
Y_i22 = cellstr(strjust(num2str(Y_i22),'left'));
Y_i23 = cellstr(strjust(num2str(Y_i23),'left'));
Y_i24 = cellstr(strjust(num2str(Y_i24),'left'));
Y_i25 = cellstr(strjust(num2str(Y_i25),'left'));
Y_i26 = cellstr(strjust(num2str(Y_i26),'left'));
Y_i27 = cellstr(strjust(num2str(Y_i27),'left'));
Y_i28 = cellstr(strjust(num2str(Y_i28),'left'));


result_Y1_Data = [Y_i1;Y_i2;Y_i3;Y_i4;Y_i5;Y_i6;Y_i7;Y_i8;Y_i9;Y_i10;Y_i11;Y_i12;Y_i13;Y_i14;Y_i15;Y_i16];
set(handles.P_Y_1,'Data',result_Y1_Data);
result_Y2_Data = [Y_i17;Y_i18;Y_i19;Y_i20;Y_i22;Y_i23;Y_i24;Y_i25;Y_i26;Y_i27;Y_i28];
set(handles.P_Y_2,'Data',result_Y2_Data);
result_Y_Data = [Y_i1,Y_i2,Y_i3,Y_i4,Y_i5,Y_i6,Y_i7,Y_i8,Y_i9,Y_i10,Y_i11,Y_i12,Y_i13,Y_i14,Y_i15,Y_i16,Y_i17,Y_i18,Y_i19,Y_i20,Y_i22,Y_i23,Y_i24,Y_i25,Y_i26,Y_i27,Y_i28];
pass_Data{14} = result_Y_Data;
pass_Data{24} = [num2str(z_M_28),num2str(z_M_29),num2str(z_M_30),z_M_31,num2str(z_M_32),num2str(z_M_33),num2str(z_M_34)];
pass_Data{25} = result_Y1_Data;
pass_Data{26} = result_Y2_Data;


%M_28
function M_28_Callback(hObject, eventdata, handles)

function M_28_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%M_29
function M_29_Callback(hObject, eventdata, handles)

function M_29_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_30
function M_30_Callback(hObject, eventdata, handles)

function M_30_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_31
function M_31_Callback(hObject, eventdata, handles)

function M_31_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_32
function M_32_Callback(hObject, eventdata, handles)

function M_32_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_33
function M_33_Callback(hObject, eventdata, handles)

function M_33_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%M_34
function M_34_Callback(hObject, eventdata, handles)

function M_34_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
table_Data1 = get(handles.P_Y_1,'Data');
table_Data2 = get(handles.P_Y_2,'Data');
M_1_28 = get(handles.M_28,'String');
M_1_29 = get(handles.M_29,'String');
M_1_30 = get(handles.M_30,'String');
M_1_31 = get(handles.M_31,'String');
M_1_32 = get(handles.M_32,'String');
M_1_33 = get(handles.M_33,'String');
M_1_34 = get(handles.M_34,'String');

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
        Selection.Text = '八、直井管柱及螺纹疲劳损伤及疲劳寿命预测';
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
        Tables = Document.Tables.Add(Selection.Range,2,7);    % 2行 5列
        DTI7_1 = Document.Tables.Item(1); % 或DTI = Tables;
        DTI7_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI7_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI7_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI7_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI7_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI7_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI7_1.Cell(1,1).Range.Text = '最大轴向力（kN）';
        DTI7_1.Cell(1,2).Range.Text = '最大钻压（kN）';
        DTI7_1.Cell(1,3).Range.Text = '最大剪切力（MPa）';
        DTI7_1.Cell(1,4).Range.Text = '管柱是否发生屈曲';
        DTI7_1.Cell(1,5).Range.Text = '管外最大液压（MPa）';
        DTI7_1.Cell(1,6).Range.Text = '管内最大液压（MPa）';
        DTI7_1.Cell(1,7).Range.Text = '最大扭矩（kN.m）';
%             DTI7_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI7_1.Cell(2,1).Range.Text = char(M_1_28);
        DTI7_1.Cell(2,2).Range.Text = char(M_1_29);
        DTI7_1.Cell(2,3).Range.Text = char(M_1_30);
        DTI7_1.Cell(2,4).Range.Text = char(M_1_31);
        DTI7_1.Cell(2,5).Range.Text = char(M_1_32);
        DTI7_1.Cell(2,6).Range.Text = char(M_1_33);
        DTI7_1.Cell(2,7).Range.Text = char(M_1_34);
        
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

        %（1）合成应力计算结果
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '（1）合成应力计算结果';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,16,2);    % 11 行 2列
        DTI7_2 = Document.Tables.Item(2); % 或DTI = Tables;
        DTI7_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI7_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI7_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI7_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI7_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI7_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI7_2.Cell(1,1).Range.Text = '螺纹类型';
        DTI7_2.Cell(2,1).Range.Text = '轴向应力（MPa）';
        DTI7_2.Cell(3,1).Range.Text = '最大剪切应力（MPa）';
        DTI7_2.Cell(4,1).Range.Text = '管柱弯曲应力（MPa）';
        DTI7_2.Cell(5,1).Range.Text = '正弦屈曲应力（MPa）';
        DTI7_2.Cell(6,1).Range.Text = '螺旋屈曲应力（MPa）';
        DTI7_2.Cell(7,1).Range.Text = '弯曲附加应力（MPa）';
        DTI7_2.Cell(8,1).Range.Text = '径向应力（MPa）';
        DTI7_2.Cell(9,1).Range.Text = '切向应力（MPa）';
        DTI7_2.Cell(10,1).Range.Text = 'Mises等效应力1（MPa）';
        DTI7_2.Cell(11,1).Range.Text = 'Mises等效应力2（MPa）';
        DTI7_2.Cell(12,1).Range.Text = 'Tresa等效应力1（MPa）';
        DTI7_2.Cell(13,1).Range.Text = 'Tresa等效应力2（MPa）';
        DTI7_2.Cell(14,1).Range.Text = '平均应力（MPa）';
        DTI7_2.Cell(15,1).Range.Text = '应力幅（MPa）';
        DTI7_2.Cell(16,1).Range.Text = '应力比';
        %填写数据
        DTI7_2.Cell(1,2).Range.Text = char(table_Data1(1,1));
        DTI7_2.Cell(2,2).Range.Text = char(table_Data1(2,1));
        DTI7_2.Cell(3,2).Range.Text = char(table_Data1(3,1));
        DTI7_2.Cell(4,2).Range.Text = char(table_Data1(4,1));
        DTI7_2.Cell(5,2).Range.Text = char(table_Data1(5,1));
        DTI7_2.Cell(6,2).Range.Text = char(table_Data1(6,1));
        DTI7_2.Cell(7,2).Range.Text = char(table_Data1(7,1));
        DTI7_2.Cell(8,2).Range.Text = char(table_Data1(8,1));
        DTI7_2.Cell(9,2).Range.Text = char(table_Data1(9,1));
        DTI7_2.Cell(10,2).Range.Text = char(table_Data1(10,1));
        DTI7_2.Cell(11,2).Range.Text = char(table_Data1(11,1));
        DTI7_2.Cell(12,2).Range.Text = char(table_Data1(12,1));
        DTI7_2.Cell(13,2).Range.Text = char(table_Data1(13,1));
        DTI7_2.Cell(14,2).Range.Text = char(table_Data1(14,1));
        DTI7_2.Cell(15,2).Range.Text = char(table_Data1(15,1));
        DTI7_2.Cell(16,2).Range.Text = char(table_Data1(16,1));
        
        %（2）疲劳损伤和疲劳寿命计算结果
         Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '（2）疲劳损伤和疲劳寿命计算结果';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,11,2);    % 11 行 2列
        DTI7_2 = Document.Tables.Item(3); % 或DTI = Tables;
        DTI7_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI7_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI7_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI7_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI7_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI7_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI7_2.Cell(1,1).Range.Text = '材料屈服强度（MPa）';
        DTI7_2.Cell(2,1).Range.Text = '等效循环应力（MPa）';
        DTI7_2.Cell(3,1).Range.Text = '疲劳循环寿命极限';
        DTI7_2.Cell(4,1).Range.Text = '疲劳应力极限（MPa）';
        DTI7_2.Cell(5,1).Range.Text = '修正疲劳应力极限（MPa）';
        DTI7_2.Cell(6,1).Range.Text = '应力寿命曲线截距';
        DTI7_2.Cell(7,1).Range.Text = '应力寿命曲线斜率';
        DTI7_2.Cell(8,1).Range.Text = '套管疲劳损伤总量';
        DTI7_2.Cell(9,1).Range.Text = '单次循环疲劳损伤度';
        DTI7_2.Cell(10,1).Range.Text = '套管管体疲劳寿命';
        DTI7_2.Cell(11,1).Range.Text = '套管井底螺纹疲劳寿命';
        %填写数据
        DTI7_2.Cell(1,2).Range.Text = char(table_Data2(1,1));
        DTI7_2.Cell(2,2).Range.Text = char(table_Data2(2,1));
        DTI7_2.Cell(3,2).Range.Text = char(table_Data2(3,1));
        DTI7_2.Cell(4,2).Range.Text = char(table_Data2(4,1));
        DTI7_2.Cell(5,2).Range.Text = char(table_Data2(5,1));
        DTI7_2.Cell(6,2).Range.Text = char(table_Data2(6,1));
        DTI7_2.Cell(7,2).Range.Text = char(table_Data2(7,1));
        DTI7_2.Cell(8,2).Range.Text = char(table_Data2(8,1));
        DTI7_2.Cell(9,2).Range.Text = char(table_Data2(9,1));
        DTI7_2.Cell(10,2).Range.Text = char(table_Data2(10,1));
        DTI7_2.Cell(11,2).Range.Text = char(table_Data2(11,1));
        
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        
        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
        Document.Save; % 保存文档
end
