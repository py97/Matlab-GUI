function varargout = Result_3_2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_3_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_3_2_OutputFcn, ...
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


function Result_3_2_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','定向井屈曲行为分析');

global pass_Data c_Array table_A table_B table_C table_D table_E table_F table_M 
global A_i1 A_i2 A_i3 A_i4 
global B_i1 B_i2 B_i3 B_i4 B_i5 
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global E_i1 E_i2 E_i3 
global F_i1 F_i2 F_i3 F_i4 F_i5 F_i6
global J_i2 J_i3 J_i9 J_i10 J_i11 J_i12 J_i14 J_i15
global P_i7 Q_i9

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
table_A = pass_Data{1};
% class(table_A)        table_A table_B table_D table_E table_F:cell
table_B = pass_Data{2};
table_D = pass_Data{3};
table_E = pass_Data{4};
table_F = pass_Data{5};
table_M = pass_Data{6};
table_J = pass_Data{31};
table_P = pass_Data{33};
table_Q = pass_Data{34};

A_i1 = table_A(:,1);A_i2 = table_A(:,2);A_i3 = table_A(:,3);A_i4 = table_A(:,4);

B_i1 = table_B(:,1);B_i2 = table_B(:,2);B_i3 = table_B(:,3);B_i4 = table_B(:,4);B_i5 = table_B(:,5);

D_i1 = table_D(:,1);D_i2 = table_D(:,2);D_i3 = table_D(:,3);D_i4 = table_D(:,4);D_i5 = table_D(:,5);
D_i6 = table_D(:,6);D_i7 = table_D(:,7);D_i8 = table_D(:,8);

E_i1 = table_E(:,1);E_i2 = table_E(:,2);E_i3 = table_E(:,3);

F_i1 = table_F(:,1);F_i2 = table_F(:,2);F_i3 = table_F(:,3);F_i4 = table_F(:,4);F_i5 = table_F(:,5);F_i6 = table_F(:,6);
J_i2 = table_J(:,2);J_i3 = table_J(:,3);J_i9 = table_J(:,9);J_i10 = table_J(:,10);J_i11 = table_J(:,11); 
J_i12 = table_J(:,12); J_i14 = table_J(:,14); J_i15 = table_J(:,15);
P_i7 = table_P(:,7);
Q_i9 = table_Q(:,9);

set(handles.y_3_2M_1,'String',char(F_i2(1,1)))
set(handles.y_3_2M_9,'String',num2str(max(str2num(char(A_i2(:,1))))))
set(handles.y_3_2M_27,'String',char(Q_i9(1,1)))


%判断之前是否计算过pass_Data---------------------------------------------------------------%
try
table_T = pass_Data{36};
ResM_3_2 = pass_Data{35};
abcdef3_2 = pass_Data{50};
a_3_2 = str2num(char(abcdef3_2(:,1)));
b_3_2 = str2num(char(abcdef3_2(:,2)));
c_3_2 = str2num(char(abcdef3_2(:,3)));
d_3_2 = str2num(char(abcdef3_2(:,4)));
e_3_2 = str2num(char(abcdef3_2(:,5)));
f_3_2 = str2num(char(abcdef3_2(:,6)));
% if size(table_T) ~= 0 && size(table_T,2) == 13
    set(handles.y_3_2uitable1,'Data',table_T)
% end
% if size(ResM_3_2) ~= 0 && size(ResM_3_2,2) == 7
    set(handles.y_3_2M_9,'String',char(ResM_3_2(1,2)))
    set(handles.y_3_2M_10,'String',char(ResM_3_2(1,3)))
    set(handles.y_3_2M_11,'String',char(ResM_3_2(1,4)))
    set(handles.y_3_2M_12,'String',char(ResM_3_2(1,5)))
    set(handles.y_3_2M_13,'String',char(ResM_3_2(1,6)))
% end
% if size(ResM_3_2_down) ~= 0 && size(ResM_3_2_down,2) == 6
    set(handles.y_3_2text18,'String',char(ResM_3_2(1,3)))
    set(handles.y_3_2text20,'String',char(ResM_3_2(1,4)))
    set(handles.y_3_2text22,'String',char(ResM_3_2(1,5)))
    set(handles.y_3_2text24,'String',char(ResM_3_2(1,6)))
% end
set(handles.y_3_2text26_1,'String','管柱未失稳')
set(handles.y_3_2text26_2,'String','管柱正弦失稳')
set(handles.y_3_2text26_3,'String','管柱螺旋失稳')

T_i1 = table_T(:,1);
T_i7 = table_T(:,7);
T_i13 = table_T(:,13);
if a_3_2~=0 && b_3_2~=0 && c_3_2~=0 && d_3_2~=0 && e_3_2~=0 && f_3_2~=0
    set(handles.y_3_2text28_1,'String',[char(T_i1(a_3_2,1)),'~',char(T_i1(b_3_2,1))])
    set(handles.y_3_2text28_2,'String',[char(T_i1(c_3_2,1)),'~',char(T_i1(d_3_2,1))])
    set(handles.y_3_2text28_3,'String',[char(T_i1(e_3_2,1)),'~',char(T_i1(f_3_2,1))])
    set(handles.y_3_2text30_1,'String',num2str(max(str2num(char(T_i13(a_3_2:b_3_2,1))))))
    set(handles.y_3_2text30_2,'String',num2str(max(str2num(char(T_i13(c_3_2:d_3_2,1))))))
    set(handles.y_3_2text30_3,'String',num2str(max(str2num(char(T_i13(e_3_2:f_3_2,1))))))
elseif c_3_2~=0 && d_3_2~=0 && e_3_2==0 && f_3_2==0
    set(handles.y_3_2text28_1,'String',[char(T_i1(a_3_2,1)),'~',char(T_i1(b_3_2,1))])
    set(handles.y_3_2text28_2,'String',[char(T_i1(c_3_2,1)),'~',char(T_i1(d_3_2,1))])
    set(handles.y_3_2text28_3,'String','--')
    set(handles.y_3_2text30_1,'String',num2str(max(str2num(char(T_i13(a_3_2:b_3_2,1))))))
    set(handles.y_3_2text30_2,'String',num2str(max(str2num(char(T_i13(c_3_2:d_3_2,1))))))
    set(handles.y_3_2text30_3,'String','--')
elseif c_3_2==0 && d_3_2==0 && e_3_2==0 && f_3_2==0
    set(handles.y_3_2text28_1,'String',[char(T_i1(a_3_2,1)),'~',char(T_i1(b_3_2,1))])
    set(handles.y_3_2text28_2,'String','--')
    set(handles.y_3_2text28_3,'String','--')
    set(handles.y_3_2text30_1,'String',num2str(max(str2num(char(T_i13(a_3_2:b_3_2,1))))))
    set(handles.y_3_2text30_2,'String','--')
    set(handles.y_3_2text30_3,'String','--')
end
%绘图--------------------------------------------------------------------------------------
if (c_3_2~=0 && d_3_2~=0) || (e_3_2~=0 && f_3_2~=0)
    fig32_1 = figure(321);
    set(fig32_1,'units','normalized','position',[0.35 0.15 0.4 0.8]);
    set(fig32_1,'menubar','none');
    set(fig32_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力');
    hold on;
    y_fig_32_1 = str2num(char(T_i1(1:end-1,1)));
    x_fig_32_1 = str2num(char(T_i13(1:end-1,1))); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
    plot(x_fig_32_1,y_fig_32_1,'-b_3_2','LineWidth',1.5)
    xlabel('钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力（kN/m）','FontSize',10);
    ylabel('井深/m','FontSize',10);
    grid on;
    hold off;
end
fig32_2 = figure(322);
set(fig32_2,'units','normalized','position',[0.35 0.15 0.4 0.8]);
set(fig32_2,'menubar','none');
set(fig32_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力');
hold on;
y_fig_32_2 = str2num(char(T_i1(1:end-1,1)));
x_fig_32_2 = str2num(char(T_i7(1:end-1,1))); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_32_2,y_fig_32_2,'-r','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力（kN/m）','FontSize',10);
ylabel('井深/m','FontSize',10);
if (c_3_2~=0 && d_3_2~=0) || (e_3_2~=0 && f_3_2~=0)
    x_fig_32_1 = str2num(char(T_i13(1:end-1,1))); 
    plot(x_fig_32_1,y_fig_32_2,'-b_3_2','LineWidth',1.5)
    legend({'未失稳接触力','弯曲附加接触力'},'Orientation','horizontal','Location','southoutside')
end
grid on;
hold off;
catch
end
%------------------------------------------------------------------------------------------%

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);


function varargout = Result_3_2_OutputFcn(hObject, eventdata, handles) 
try
varargout{1} = handles.output;
catch
end


%计算
function P_ResBut_3_2_Callback(hObject, eventdata, handles)
global pass_Data
global A_i1 A_i2
global F_i2
global P_i7 Q_i9
global J_i2 J_i3 J_i9 J_i10 J_i11 J_i12 J_i14 J_i15
global L_i4 L_i9 L_i10
global fig32_1 fig32_2
global a_3_2 b_3_2 c_3_2 d_3_2 e_3_2 f_3_2
clear logic_judge
logic_judge=0;
%判断数据是否输入完整	


if(logic_judge==0)  %数据均正确
try
msg3_2 = msgbox('请稍后......','提示');
%二维定向井计算结果参数（矩阵T）------------------------------------------------------------------------------------------
%测深：T_i1
T_i1 = A_i1;

%井斜角：T_i2
T_i2 = A_i2;

%井筒与管柱半径之差:T_i3
%(M_1,3/2-J_i,3)*0.001
table_M_i3 = pass_Data{41};
M_i3 = table_M_i3(1,3);
T_i3 = (str2num(char(M_i3(1,1)))./2 - str2num(char(J_i3))).*0.001;
T_i3 = cellstr(num2str(T_i3));

%正弦弯曲临界压力：T_i4
%IF(T_i,2=0 and △T_i,2=T_i+1,2-T_i,2=0      0.204*[205950*P_i,7*(L_i,4*1000)^2]^(1/3)
%IF(T_i,2≠0 and △T_i,2≠0, "=2*205950*P_i,7/(T_i,3*J_i,12)*{1+SQRT[1+ T_i,3*J_i,12^2*(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)/(205950*P_i,7)]}")
%IF(T_i,2≠0 and △T_i,2=0, "= 2*SQRT[205950*P_i,7*(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)/T_i,3]")
for i = 1:size(A_i2,1)-1
    if (str2num(char(T_i2(i,1))) == 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0) ...
        ||(str2num(char(T_i2(i,1))) == 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) ~= 0)
        T_i4(i,1) = 0.204 * (205950* str2num(char(P_i7(i,1)))*(str2num(char(L_i4(i,1)))*1000)^2)^(1/3);
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) ~= 0
        %   {1+SQRT[1+ T_i,3                       *J_i,12^2                       * (L_i,4                       *
        %   1000/J_i,2                       )*SIN(T_i,2                    *PI()/180)/(205950*P_i,7)]}
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0
        T_i4(i,1) = 2*sqrt(205950*str2num(char(P_i7(i,1)))*(str2num(char(L_i4(i,1)))*1000/str2num(char(J_i2(i,1))))*...
            sin(str2num(char(T_i2(i,1)))*pi  /180)/str2num(char(T_i3(i,1))));
                  % 2*SQRT[205950*P_i,7                       *(L_i,4                       *1000/J_i,2                       )*
        %   SIN(T_i,2                       *PI()/180)/T_i,3                       ]
    end
end
T_i4 = [T_i4;T_i4(end,1)];
T_i4 = cellstr(num2str(T_i4));

%计算T_i6,T_i7的思路----------------------------------------------------------
%一、先假设T_i7=1  二、然后去计算T_i6  三、算出来的T_i6再去计算T_i7;   四、若T_i7<0重新计算T_i6，   五、再计算T_i7
T_i7 = cellstr(num2str(zeros(size(A_i2))+1));   %一-------------------------------------------------------------------------------------

%有效轴向力(考虑钻压):T_i6(T_i7需要用)
%IF(T_i2=0 and △T_i2=0,"T_i+1,6+L_i+1,4*(T_i+1,1-T_i,1  )")
%IF(T_i2≠0 and △T_i2>0 and T_i,7>0,"(T_i+1,6+J_i,14  *sinL_i+1,10-J_i,15  *cosL_i+1,10)*EXP[J_i,11  *(J_i,10-J_i+1,10)] -J_i,14  *sinL_i,10  +J_i,15*cosL_i,10  ")
%IF(T_i2≠0 and △T_i2>0 and T_i,7<0,"(T_i+1,6-J_i,14  *sinL_i+1,10-J_i,15  *cosL_i+1,10)*EXP[-J_i,11  *(J_i,10-J_i+1,10)]+J_i,14  *sinL_i,10  +J_i,15*cosL_i,10  ")
%IF(T_i2≠0 and △T_i2<0,"(T_i+1,6-J_i,14  *cosL_i+1,9+J_i,15  *sinL_i+1,9)*EXP[-J_i,11  *(J_i,9-J_i+1,9)]+J_i,14  *cosL_i,9  -J_i,15*sinL_i,9  ")
%IF(T_i2≠0 and △T_i2=0,"T_i+1,6+L_i+1,4*(cosJ_i+1,9-J_i+1,11*sinJ_i+1,9)*(T_i+1,1-T_i,1  )")
M_i1 = get(handles.y_3_2M_1,'String');
T_i6(size(A_i2),1) = 0 - str2num(char(M_i1));
for i = size(A_i2,1)-1:-1:1     %二-------------------------------------------------------------------------------------
    if (str2num(char(T_i2(i,1))) == 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) == 0) ...
        ||(str2num(char(T_i2(i,1))) == 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) ~= 0)
     T_i6(i,1) =  T_i6(i+1,1)+str2num(char(L_i4(i+1,1)))*(str2num(char(T_i1(i+1,1)))-...
         str2num(char(T_i1(i,1))));
    elseif str2num(char(T_i2(i,1))) ~= 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) > 0 & str2num(char(T_i7(i,1))) >0
     T_i6(i,1) = ( T_i6(i+1,1)+str2num(char(J_i14(i,1)))*sin(str2num(char(L_i10(i+1,1))))-str2num(char(J_i15(i,1)))*...
      cos(str2num(char(L_i10(i+1,1)))))*exp(str2num(char(J_i11(i,1)))*(str2num(char(J_i10(i,1)))-str2num(char(J_i10(i+1,1)))))-...
      str2num(char(J_i14(i,1))) * sin(str2num(char(L_i10(i,1))))+str2num(char(J_i15(i,1)))*cos(str2num(char(L_i10(i,1)))); 
    elseif str2num(char(T_i2(i,1))) ~= 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) < 0
     T_i6(i,1) =  ( T_i6(i+1,1)-str2num(char(J_i14(i,1)))*cos(str2num(char(L_i9(i+1,1))))+str2num(char(J_i15(i,1)))*...
      sin(str2num(char(L_i9(i+1,1)))))*exp(-str2num(char(J_i11(i,1)))*(str2num(char(J_i9(i,1)))-str2num(char(J_i9(i+1,1)))))+...
      str2num(char(J_i14(i,1))) * cos(str2num(char(L_i9(i,1))))-str2num(char(J_i15(i,1)))*sin(str2num(char(L_i9(i,1))));  
    elseif str2num(char(T_i2(i,1))) ~= 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) == 0
     T_i6(i,1) =  T_i6(i+1,1)+str2num(char(L_i4(i+1,1)))*(cos(str2num(char(J_i9(i+1,1))))-str2num(char(J_i11(i+1,1)))*...
      sin(str2num(char(J_i9(i+1,1)))))*(str2num(char(T_i1(i+1,1)))-str2num(char(T_i1(i,1))));
     %sinJ_i+1,9                         )*(T_i+1,1                       -T_i,1  )
    end
end

%未失稳附加接触力:T_i7(T_i8需要用，需要用到T_i6)
%'IF(T_i,2=0 and △T_i,2=T_i+1,2-T_i,2=0,"=0")
%'IF(T_i,2≠0 and △T_i,2≠0, "=L_i,4*SIN(T_i,2*PI()/180)-T_i,6/J_i,12")
%'IF(T_i,2≠0 and △T_i,2=0,"=L_i,4*SIN(T_i,2*PI()/180)")
for i = 1:size(A_i2,1)-1        %三-------------------------------------------------------------------------------------
    if (str2num(char(T_i2(i,1))) == 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0) ...
        ||(str2num(char(T_i2(i,1))) == 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) ~= 0)
        T_i7{i,1} = '0';
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) ~= 0
        T_i7{i,1} = num2str( str2num(char(L_i4(i,1))) * sin(str2num(char(T_i2(i,1)))*pi/180) - str2num(char(T_i6(i,1)))/str2num(char(J_i12(i,1)))  );
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0
        T_i7{i,1} = num2str(  str2num(char(L_i4(i,1))) * sin(str2num(char(T_i2(i,1)))*pi/180)  );
    end 
end
% T_i7(1,1) = T_i7(2,1);

for i = size(A_i2,1)-1:-1:1     %四-------------------------------------------------------------------------------------
    if (str2num(char(T_i2(i,1))) == 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) == 0) ...
        ||(str2num(char(T_i2(i,1))) == 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) ~= 0)
     T_i6(i,1) =  T_i6(i+1,1)+str2num(char(L_i4(i+1,1)))*(str2num(char(T_i1(i+1,1)))-...
         str2num(char(T_i1(i,1))));
    elseif str2num(char(T_i2(i,1))) ~= 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) > 0 & str2num(char(T_i7(i,1))) <0
     %           (T_i+1,6                        -J_i,14                       *sinL_i+1,10                         -J_i,15                       *
     T_i6(i,1) = ( T_i6(i+1,1)-str2num(char(J_i14(i,1)))*sin(str2num(char(L_i10(i+1,1))))-str2num(char(J_i15(i,1)))*...
      cos(str2num(char(L_i10(i+1,1)))))*exp(-str2num(char(J_i11(i,1)))*(str2num(char(J_i10(i,1)))-str2num(char(J_i10(i+1,1)))))+...
      str2num(char(J_i14(i,1))) * sin(str2num(char(L_i10(i,1))))+str2num(char(J_i15(i,1)))*cos(+str2num(char(L_i10(i,1))));  
    elseif str2num(char(T_i2(i,1))) ~= 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) < 0
     T_i6(i,1) =  ( T_i6(i+1,1)-str2num(char(J_i14(i,1)))*cos(str2num(char(L_i9(i+1,1))))+str2num(char(J_i15(i,1)))*...
      sin(str2num(char(L_i9(i+1,1)))))*exp(-str2num(char(J_i11(i,1)))*(str2num(char(J_i9(i,1)))-str2num(char(J_i9(i+1,1)))))+...
      str2num(char(J_i14(i,1))) * cos(str2num(char(L_i9(i,1))))-str2num(char(J_i15(i,1)))*sin(str2num(char(L_i9(i,1))));  
    elseif str2num(char(T_i2(i,1))) ~= 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) == 0
     T_i6(i,1) =  T_i6(i+1,1)+str2num(char(L_i4(i+1,1)))*(cos(str2num(char(J_i9(i+1,1))))-str2num(char(J_i11(i+1,1)))*...
      sin(str2num(char(J_i9(i+1,1)))))*(str2num(char(T_i1(i+1,1)))-str2num(char(T_i1(i,1))));
     %sinJ_i+1,9                         )*(T_i+1,1                       -T_i,1  )
    end
end
% T_i6(1,1) = T_i6(2,1);
T_i6 = cellstr(num2str(T_i6)); 

for i = 1:size(A_i2,1)-1        %五-------------------------------------------------------------------------------------
    if (str2num(char(T_i2(i,1))) == 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0) ...
        ||(str2num(char(T_i2(i,1))) == 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) ~= 0)
        T_i7{i,1} = '0';
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) ~= 0
        T_i7{i,1} = num2str( str2num(char(L_i4(i,1))) * sin(str2num(char(T_i2(i,1)))*pi/180) - str2num(char(T_i6(i,1)))/str2num(char(J_i12(i,1)))  );
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0
        T_i7{i,1} = num2str(  str2num(char(L_i4(i,1))) * sin(str2num(char(T_i2(i,1)))*pi/180)  );
    end 
end
% T_i7(1,1) = T_i7(2,1);
T_i7(end,1) = T_i7(end-1,1);

%扭矩作用下临界轴力系数T_i8(T_i5需要用,用到T_i7)
%IF(T_i,7=0,"=3.691*M_1,27/((205950*10^6*P_i,7/(L_i,4*1000/J_i,2))^(1/3))")
%IF(T_i,7≠0,"=-2.586*(M_1,27*1000/(4*SQRT(205950*10^6*P_i,7*ABS(T_i,7)*1000/T_i,3)))+1.449")
M_i27 = get(handles.y_3_2M_27,'String');
for i = 1:size(A_i2,1)-1
    if str2num(char(T_i7(i,1))) == 0
        T_i8(i,1) = 3.691 * str2num(char(M_i27)) / ((205950 * 10^6 * str2num(char(P_i7(i,1))) /...
            str2num(char(L_i4(i,1))) * 1000 / str2num(char(J_i2(i,1))))^(1/3));
    else
        T_i8(i,1) = -2.586 * ( str2num(char(M_i27))*1000/(4*sqrt(205950*10^6*str2num(char(P_i7(i,1))) *...
            abs( str2num(char(T_i7(i,1))) )*1000/ str2num(char(T_i3(i,1))) ) )  ) + 1.449;
    end
end
T_i8 = [T_i8;T_i8(end,1)];
T_i8 = cellstr(num2str(T_i8));

%螺旋弯曲临界压力T_i5(用到T_i8)
%IF(T_i,2=0 and △T_i,2=T_i+1,2-T_i,2=0, "=0.405*[205950*P_i,7*(L_i,4*1000)^2]^(1/3)-T_i,8")
%IF(T_i,2≠0 and △T_i,2≠0, "=T_i,8^2*2*205950*P_i,7/(T_i,3*J_i,12)*{1+SQRT[1+ T_i,3*J_i,12^2*(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)/(T_i,8^2*205950*P_i,7)]}")
%IF(T_i,2≠0 and △T_i,2=0, "=T_i,8*2*SQRT[205950*P_i,7*(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)/T_i,3]")
for i = 1:size(A_i2,1)-1
    if (str2num(char(T_i2(i,1))) == 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0)...
        ||(str2num(char(T_i2(i,1))) == 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) ~= 0) 
        T_i5(i,1) = 0.405 * ( (205950* str2num(char(P_i7(i,1)))*(str2num(char(L_i4(i,1)))*1000)^2)^(1/3) - str2num(char(T_i8(i,1))) );
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) ~= 0
        T_i5(i,1) = str2num(char(T_i8(i,1)))^2*2*205950*str2num(char(P_i7(i,1)))/(str2num(char(T_i3(i,1)))*str2num(char(J_i12(i,1))))*...
            (1+sqrt(1+ str2num(char(T_i3(i,1)))*str2num(char(J_i12(i,1)))^2* (str2num(char(L_i4(i,1)))*...
            1000/str2num(char(J_i2(i,1))))*sin(str2num(char(T_i2(i,1)))*pi/180)/(str2num(char(T_i8(i,1)))^2*205950*str2num(char(P_i7(i,1))) )));
        %   {1+SQRT[1+ T_i,3                       *J_i,12^2                       * (L_i,4                       *
        %   1000/J_i,2                       )*SIN(T_i,2                    *PI()/180)/(205950*P_i,7)]}
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0
        T_i5(i,1) = str2num(char(T_i8(i,1)))*2*sqrt(205950*str2num(char(P_i7(i,1)))*(str2num(char(L_i4(i,1)))*1000/str2num(char(J_i2(i,1))))*...
            sin(str2num(char(T_i2(i,1)))*pi  /180)/str2num(char(T_i3(i,1))));
                  % 2*SQRT[205950*P_i,7                       *(L_i,4                       *1000/J_i,2                       )*
        %   SIN(T_i,2                       *PI()/180)/T_i,3                       ]
    end
end
T_i5 = [T_i5;T_i5(end,1)];
T_i5 = cellstr(num2str(T_i5));

%扭矩作用下接触力附加系数T_i9
%IF(T_i,8<=1,"=1")
%IF(1<T_i,8<=1.449,"=8/9*(T_i,8+0.5)^2-1")
%IF(T_i,8>1.449,"=T_i,8^2)")
T_i9={};
for i = 1:size(A_i2,1)
    if str2num(char(T_i8(i,1))) <= 1
        T_i9{end+1,1} = '1';
    elseif str2num(char(T_i8(i,1))) > 1 && str2num(char(T_i8(i,1))) <= 1.449
        T_i9{end+1,1} = num2str( 8/9 * (str2num(char(T_i8(i,1)))+0.5)^2-1  );
    elseif str2num(char(T_i8(i,1))) > 1.449
        T_i9{end+1,1} = num2str( str2num(char(T_i8(i,1)))^2  );
    end
end
 
%正弦弯曲附加接触力:T_i10
%IF(T_i,2=0 and △T_i,2=T_i+1,2-T_i,2=0,"=T_i,3*T_i,6^2/(8*205950*P_i,7)*0.001")
%IF(T_i,2≠0 and △T_i,2≠0, "={16*PI()^4*(205950*10^6*P_i,7)*T_i,3*T_i,3^2/[2*PI()
%*(205590*10^6*P_i,7*T_i,3/(L_i,4*1000/J_i,2))^0.25]^4*(-T_i,3-4) +4*PI()^2*T_i,3*
%T_i,3^2/[2*PI()*(205590*10^6*P_i,7*T_i,3/(L_i,4*1000/J_i,2))^0.25]*(T_i,6*1000+205950
%*10^6*P_i,7/J_i,12^2)+[(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)+T_i,6*1000/J_i,12]}*0.001")
%IF(T_i,2≠0 and △T_i,2=0, "={16*PI()^4*(205950*10^6*P_i,7)*T_i,3*T_i,3^2/[2*PI()*(205590*10^6*P_i,7*T_i,3/
%(L_i,4*1000/J_i,2))^0.25]^4*(-T_i,3-4) +4*PI()^2*T_i,6*T_i,3^2/[2*PI()*(205590*10^6*P_i,7*T_i,3/(L_i,4*1000/
%J_i,2))^0.25]+(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)}*0.001")
for i = 1:size(A_i2,1)-1
    if (str2num(char(T_i2(i,1))) == 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0) ...
        ||(str2num(char(T_i2(i,1))) == 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) ~= 0)
        %           T_i,3                        *T_i,6^2                         /(8*205950*P_i,7)*0.001
        T_i10(i,1) = str2num(char(T_i3(i,1))) * str2num(char(T_i6(i,1)))^2/(8*205950*str2num(char(P_i7(i,1))))*0.001;
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) ~= 0
        %           {16*PI()^4*(205950*10^6*P_i,7)                     *T_i,3                       *T_i,3^2                        /
        %[2*PI()*(205590*10^6*P_i,7                      *T_i,3                       /(L_i,4                       *
        %1000/J_i,2                        ))^0.25]^4*(-T_i,3                       -4)+4*PI()^2*T_i,3                       *
        %T_i,3^2                        /[2*PI()*(205590*10^6*P_i,7                       *T_i,3                       /
        %(L_i,4                        *1000/J_i,2                      ))^0.25]*(T_i,6                         *1000+205950*
        %10^6 *P_i,7                        /J_i,12^2                      )+[(L_i,4                       *1000/J_i,2                    )*
        %SIN(T_i,2                        *PI()/180)+T_i,6                     *1000/J_i,12                       ]}*0.001
        T_i10(i,1) = (16*pi^4*(205950*10^6*str2num(char(P_i7(i,1))))*str2num(char(T_i3(i,1)))*str2num(char(T_i3(i,1)))^2/...
          (2*pi*(205590*10^6*str2num(char(P_i7(i,1)))*str2num(char(T_i3(i,1)))/(str2num(char(L_i4(i,1)))*...
          1000/str2num(char(J_i2(i,1)))))^0.25)^4*(-str2num(char(T_i3(i,1)))-4)+4*pi^2  *str2num(char(T_i3(i,1)))*...
          str2num(char(T_i3(i,1)))^2/(2*pi*(205590  *10^6*str2num(char(P_i7(i,1)))*str2num(char(T_i3(i,1)))/...
          (str2num(char(L_i4(i,1)))*1000/str2num(char(J_i2(i,1)))))^0.25)*(str2num(char(T_i6(i,1)))*1000+205950*...
          10^6*str2num(char(P_i7(i,1)))/str2num(char(J_i12(i,1)))^2)+((str2num(char(L_i4(i,1)))*1000/str2num(char(J_i2(i,1))))*...
          sin(str2num(char(T_i2(i,1)))*pi/180)+str2num(char(T_i6(i,1)))*1000/str2num(char(J_i12(i,1)))))*0.001;
      
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0
        %           {16*PI()^4*(205950*10^6*P_i,7                       )*T_i,3                       *T_i,3^2                       /
        % [2*PI()*(205590*10^6*P_i,7                       *T_i,3                       /(L_i,4                       *
        % 1000/J_i,2                       ))^0.25]^4*(-T_i,3                       -4)+4*PI()^2*T_i,6                       *
        %T_i,3^2                        /[2*PI()*(205590*10^6*P_i,7                      *T_i,3                        /
        %(L_i,4                        *1000/J_i,2                       ))^0.25]+(L_i,4                       *1000/
        %J_i,2)                       *SIN(T_i,2                       *PI()/180)}*0.001
        T_i10(i,1) = (16*pi^4  *(205950*10^6*str2num(char(P_i7(i,1))))*str2num(char(T_i3(i,1)))*str2num(char(T_i3(i,1)))^2/...
          (2*pi*  (205590*10^6*str2num(char(P_i7(i,1)))*str2num(char(T_i3(i,1)))/(str2num(char(L_i4(i,1)))*...
          1000/str2num(char(J_i2(i,1)))))^0.25)^4*(-str2num(char(T_i3(i,1)))-4)+4*pi^2  *str2num(char(T_i6(i,1)))*...
          str2num(char(T_i3(i,1)))^2/(2*pi*  (205590*10^6*str2num(char(P_i7(i,1)))*str2num(char(T_i3(i,1)))/...
          (str2num(char(L_i4(i,1)))*1000/str2num(char(J_i2(i,1)))))^0.25)+(str2num(char(L_i4(i,1)))*1000/...
          str2num(char(J_i2(i,1)))*sin(str2num(char(T_i2(i,1)))*pi/180)))*0.001;
    end
end
T_i10 = [T_i10;T_i10(end,1)];
T_i10 = cellstr(num2str(T_i10));


%螺旋弯曲附加接触力:T_i11
%IF(T_i,2=0 and △T_i,2=T_i+1,2-T_i,2=0, "=T_i,3*T_i,6^2/(4*205950*P_i,7)*0.001")
%IF(T_i,2≠0 and △T_i,2≠0,"=-16*PI()^4*(205950*10^6*P_i,7)*T_i,3*T_i,3^2/[2*PI()*(205590*10^6*P_i,7*T_i,3/(L_i,4*1000/J_i,2))^0.25]^4+4*PI()^2*T_i,3/[2*PI()*(205590*10^6*P_i,7*T_i,3/(L_i,4*1000/J_i,2))^0.25]^2*(T_i,6*10^3+205950*10^6*P_i,7/J_i,12^2) +[(L_i,4*10^3/J_i,2)*SIN(T_i,2*PI()/180)+T_i,6*10^3/J_i,12]")
%IF(T_i,2≠0 and △T_i,2=0, "=[T_i,3*T_i,6^2/(4*205950*P_i,7)+(L_i,4*10^3/J_i,2)*SIN(T_i,2*PI()/180)]*0.001")
for i = 1:size(A_i2,1)-1
    if str2num(char(T_i2(i,1))) == 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0 ...
        ||(str2num(char(T_i2(i,1))) == 0 & (str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1)))) ~= 0)
        %          T_i,3                       *T_i,6^2                       /(4*205950*P_i,7)*0.001
       T_i11(i,1) = str2num(char(T_i3(i,1)))*str2num(char(T_i6(i,1)))^2/(4*205950*str2num(char(P_i7(i,1))))*0.001; 
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) ~= 0
        %          -16*PI()^4*(205950*10^6*P_i,7                     )*T_i,3                       *T_i,3^2                       /
        %[  2*PI()*(205590*10^6*P_i,7                     *T_i,3                       /(L_i,4                       *
        %  1000/J_i,2                      ))^0.25]^4+4*PI()^2*T_i,3                      /[2*PI()*(205590*10^6*P_i,7                   *
        %  T_i,3                       /(L_i,4                      *1000/J_i,2                       ))^0.25]^2 *(T_i,6                      *
        % 10^3+205950*10^6*P_i,7                        /J_i,12^2                     ) +[(L_i,4*10^3                        /
        %  J_i,2                      ) *SIN(T_i,2                       *PI()/180)+T_i,6                      *10^3/J_i,12                      ]
       T_i11(i,1) = -16*pi^4*(205950*10^6*str2num(char(P_i7(i,1))))*str2num(char(T_i3(i,1)))*str2num(char(T_i3(i,1)))^2/...
           (2*pi*(205590*10^6*str2num(char(P_i7(i,1)))*str2num(char(T_i3(i,1)))/(str2num(char(L_i4(i,1)))*...
           1000/str2num(char(J_i2(i,1)))))^0.25)^4+4*pi^2*str2num(char(T_i3(i,1)))/(2*pi*(205590*10^6*str2num(char(P_i7(i,1)))*...
           str2num(char(T_i3(i,1)))/(str2num(char(L_i4(i,1)))*1000/str2num(char(J_i2(i,1)))))^0.25)^2*(str2num(char(T_i6(i,1)))*...
           10^3+205950*10^6*str2num(char(P_i7(i,1)))/str2num(char(J_i12(i,1)))^2)+((str2num(char(L_i4(i,1)))*10^3/...
           str2num(char(J_i2(i,1))))*sin(str2num(char(T_i2(i,1)))*pi/180)  +str2num(char(T_i6(i,1)))*10^3/str2num(char(J_i12(i,1))));
           
    elseif str2num(char(T_i2(i,1))) ~= 0 & str2num(char(T_i2(i+1,1))) - str2num(char(T_i2(i,1))) == 0
        %          [T_i,3                       *T_i,6^2                       /(4*205950*P_i,7                       )+(L_i,4                       *
        %  10^3/J_i,2                       )*SIN(T_i,2                       *PI()/180)]*0.001
       T_i11(i,1) = (str2num(char(T_i3(i,1)))*str2num(char(T_i6(i,1)))^2/(4*205950*str2num(char(P_i7(i,1))))+(str2num(char(L_i4(i,1)))*...
           10^3/str2num(char(J_i2(i,1))))*sin(str2num(char(T_i2(i,1)))*pi/180))*0.001;
    end
end
T_i11 = [T_i11;T_i11(end,1)];
T_i11 = cellstr(num2str(T_i11));

%判断管柱是否发生屈曲:T_i12
%IF(T_i,6                           >-T_i4,"未失稳")
%IF(-T_i,5<T_i,6≤-T_i4, "正弦弯曲")
%IF(T_i,6≤-T_i,5,"螺旋弯曲")
T_i12={};
for i = 1:size(A_i2,1)
    if str2num(char(T_i4(i,1))) < str2num(char(T_i5(i,1)))
        if str2num(char(T_i6(i,1))) > -str2num(char(T_i4(i,1)))
            T_i12{i,1} = '未失稳';
        elseif -str2num(char(T_i5(i,1))) < str2num(char(T_i6(i,1))) & str2num(char(T_i6(i,1))) <= -str2num(char(T_i4(i,1)))
            T_i12{i,1} = '正弦弯曲';
        elseif  str2num(char(T_i6(i,1))) <= - str2num(char(T_i5(i,1)))
            T_i12{i,1} = '螺旋弯曲';
        end
    else
        if str2num(char(T_i6(i,1))) > -str2num(char(T_i5(i,1)))
            T_i12{i,1} = '未失稳';
        elseif  str2num(char(T_i6(i,1))) <= - str2num(char(T_i5(i,1)))
            T_i12{i,1} = '螺旋弯曲';
        end
    end   
end

%判断管柱是否发生屈曲:T_i13
%'IF(T_i,12=未失稳,"=T_i,7")
%'IF(T_i,12=正弦弯曲,"=T_i,10")
%'IF(T_i,12=螺旋弯曲,"=T_i,11")
for i = 1:size(A_i2,1)
    if strcmp(char(T_i12(i,1)),'未失稳') == 1
        T_i13(i,1) = str2num(char(T_i7(i,1)));
    elseif strcmp(char(T_i12(i,1)),'正弦弯曲') == 1
        T_i13(i,1) = str2num(char(T_i10(i,1)));
    elseif  strcmp(char(T_i12(i,1)),'螺旋弯曲') == 1
        T_i13(i,1) = str2num(char(T_i11(i,1)));
    end
end
T_i13 = cellstr(num2str(T_i13));

%模块需显示的参数---------------------------------------------------------------------------------
%M_i10,M_i11,求a值----------------------
for i = size(T_i2,1):-1:2
    if str2num(char(T_i2(i,1))) == 0 &&  str2num(char(T_i2(i,1)))-str2num(char(T_i2(i-1,1))) == 0
        T_a = i-1;      %a值
    end
end
M_i10 = cellstr(num2str(min(str2num(char(T_i4(1:T_a,1))))));
M_i11 = cellstr(num2str(min(str2num(char(T_i5(1:T_a,1))))));
set(handles.y_3_2M_10,'String',char(M_i10))
set(handles.y_3_2M_11,'String',char(M_i11))

%M_i12,M_i13,求b值,求m值----------------------
for i = 1:size(T_i2,1)-1
    if str2num(char(T_i2(i,1))) ~= 0 && (str2num(char(T_i2(i+1,1)))-str2num(char(T_i2(i,1)))) <= 0.0001
        T_b = i;      %b值
        break
    end
end
for j = size(T_i2,1):-1:2
    if str2num(char(T_i2(j,1))) ~= 0 &&  (str2num(char(T_i2(j,1)))-str2num(char(T_i2(j-1,1)))) <= 0.0001
        T_m = j;      %m值
        break
    end
end
M_i12 = cellstr(num2str(min(str2num(char(T_i4(T_b:T_m,1))))));
M_i13 = cellstr(num2str(min(str2num(char(T_i5(T_b:T_m,1))))));
set(handles.y_3_2M_12,'String',char(M_i12))
set(handles.y_3_2M_13,'String',char(M_i13))

%结果----------------------------------------------------------------------------------------
M_i1 = F_i2(1,1);
M_i9 = cellstr(num2str(max(str2num(char(A_i2(:,1))))));
M_i27 = Q_i9(1,1);

result_T_Data = [T_i1,T_i2,T_i3,T_i4,T_i5,T_i6,T_i7,T_i8,T_i9,T_i10,T_i11,T_i12,T_i13];
result_M_Data = [M_i1,M_i9,M_i10,M_i11,M_i12,M_i13,M_i27];
pass_Data{35} = result_M_Data;
pass_Data{36} = result_T_Data;

%最终界面显示----------------------------------------------------------------------------------
set(handles.y_3_2uitable1,'Data',result_T_Data)
set(handles.y_3_2text18,'String',char(M_i10))
set(handles.y_3_2text20,'String',char(M_i11))
set(handles.y_3_2text22,'String',char(M_i12))
set(handles.y_3_2text24,'String',char(M_i13))
set(handles.y_3_2text26_1,'String','管柱未失稳')
set(handles.y_3_2text26_2,'String','管柱正弦失稳')
set(handles.y_3_2text26_3,'String','管柱螺旋失稳')
%求出a_3_2,b_3_2,c_3_2,d_3_2,e_3_2,f_3_2-------------------------------------------------------------------------------
a_3_2=0;b_3_2=0;c_3_2=0;d_3_2=0;e_3_2=0;f_3_2=0;
for i = 1:size(T_i12,1)
    if strcmp('未失稳',char(T_i12(i,1))) == 1
        a_3_2 = i;
        break
    end
end
for i = 1:size(T_i12,1)
    if strcmp('正弦弯曲',char(T_i12(i,1))) == 1
        c_3_2 = i;;
        break
    end
end
for i = 1:size(T_i12,1)
    if strcmp('螺旋弯曲',char(T_i12(i,1))) == 1
        e_3_2 = i;
        break
    end
end
for i = size(T_i12,1):-1:1
    if strcmp('未失稳',char(T_i12(i,1))) == 1
        b_3_2 = i;
        break
    end
end
for i = size(T_i12,1):-1:1
    if strcmp('正弦弯曲',char(T_i12(i,1))) == 1
        d_3_2 = i;
        break
    end
end
for i = size(T_i12,1):-1:1
    if strcmp('螺旋弯曲',char(T_i12(i,1))) == 1
        f_3_2 = i;
        break
    end
end

if a_3_2~=0 && b_3_2~=0 && c_3_2~=0 && d_3_2~=0 && e_3_2~=0 && f_3_2~=0
    set(handles.y_3_2text28_1,'String',[char(T_i1(a_3_2,1)),'~',char(T_i1(b_3_2,1))])
    set(handles.y_3_2text28_2,'String',[char(T_i1(c_3_2,1)),'~',char(T_i1(d_3_2,1))])
    set(handles.y_3_2text28_3,'String',[char(T_i1(e_3_2,1)),'~',char(T_i1(f_3_2,1))])
    set(handles.y_3_2text30_1,'String',num2str(max(str2num(char(T_i13(a_3_2:b_3_2,1))))))
    set(handles.y_3_2text30_2,'String',num2str(max(str2num(char(T_i13(c_3_2:d_3_2,1))))))
    set(handles.y_3_2text30_3,'String',num2str(max(str2num(char(T_i13(e_3_2:f_3_2,1))))))
% elseif c_3_2==0 && d_3_2==0 && e_3_2~=0 && f_3_2~=0
%     set(handles.y_3_2text28_1,'String',[char(T_i1(a_3_2,1)),'~',char(T_i1(b_3_2,1))])
%     set(handles.y_3_2text28_2,'String','--')
%     set(handles.y_3_2text28_3,'String',[char(T_i1(e_3_2,1)),'~',char(T_i1(f_3_2,1))])
%     set(handles.y_3_2text30_1,'String',num2str(max(str2num(char(T_i13(a_3_2:b_3_2,1))))))
%     set(handles.y_3_2text30_2,'String','--')
%     set(handles.y_3_2text30_3,'String',num2str(max(str2num(char(T_i13(e_3_2:f_3_2,1))))))
elseif c_3_2~=0 && d_3_2~=0 && e_3_2==0 && f_3_2==0
    set(handles.y_3_2text28_1,'String',[char(T_i1(a_3_2,1)),'~',char(T_i1(b_3_2,1))])
    set(handles.y_3_2text28_2,'String',[char(T_i1(c_3_2,1)),'~',char(T_i1(d_3_2,1))])
    set(handles.y_3_2text28_3,'String','--')
    set(handles.y_3_2text30_1,'String',num2str(max(str2num(char(T_i13(a_3_2:b_3_2,1))))))
    set(handles.y_3_2text30_2,'String',num2str(max(str2num(char(T_i13(c_3_2:d_3_2,1))))))
    set(handles.y_3_2text30_3,'String','--')
elseif c_3_2==0 && d_3_2==0 && e_3_2==0 && f_3_2==0
    set(handles.y_3_2text28_1,'String',[char(T_i1(a_3_2,1)),'~',char(T_i1(b_3_2,1))])
    set(handles.y_3_2text28_2,'String','--')
    set(handles.y_3_2text28_3,'String','--')
    set(handles.y_3_2text30_1,'String',num2str(max(str2num(char(T_i13(a_3_2:b_3_2,1))))))
    set(handles.y_3_2text30_2,'String','--')
    set(handles.y_3_2text30_3,'String','--')
end
pass_Data{50} = {num2str(a_3_2),num2str(b_3_2),num2str(c_3_2),num2str(d_3_2),num2str(e_3_2),num2str(f_3_2)};

%绘图--------------------------------------------------------------------------------------
if (c_3_2~=0 && d_3_2~=0) || (e_3_2~=0 && f_3_2~=0)
    fig32_1 = figure(321);
    set(fig32_1,'units','normalized','position',[0.35 0.15 0.4 0.8]);
    set(fig32_1,'menubar','none');
    set(fig32_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力');
    hold on;
    y_fig_32_1 = str2num(char(T_i1(1:end-1,1)));
    x_fig_32_1 = str2num(char(T_i13(1:end-1,1))); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
    plot(x_fig_32_1,y_fig_32_1,'-b_3_2','LineWidth',1.5)
    xlabel('钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力（kN/m）','FontSize',10);
    ylabel('井深/m','FontSize',10);
    grid on;
    hold off;
end

fig32_2 = figure(322);
set(fig32_2,'units','normalized','position',[0.35 0.15 0.4 0.8]);
set(fig32_2,'menubar','none');
set(fig32_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力');
hold on;
y_fig_32_2 = str2num(char(T_i1(1:end-1,1)));
x_fig_32_2 = str2num(char(T_i7(1:end-1,1))); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_32_2,y_fig_32_2,'-r','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力（kN/m）','FontSize',10);
ylabel('井深/m','FontSize',10);
if (c_3_2~=0 && d_3_2~=0) || (e_3_2~=0 && f_3_2~=0)
    x_fig_32_1 = str2num(char(T_i13(1:end-1,1))); 
    plot(x_fig_32_1,y_fig_32_2,'-b_3_2','LineWidth',1.5)
    legend({'未失稳接触力','弯曲附加接触力'},'Orientation','horizontal','Location','southoutside')
end
grid on;
hold off;
delete(msg3_2);

handles.output = pass_Data; % 将数据发送到 handles.output 中。
%当遇到 uiresume 时程序继续运行，执行 OutputFcn ，将修改之后的值通过 handles.output 输出
guidata(hObject, handles);  % 当 handles 结构体中的数据发生改变时，必须使用 guidata 更新 handles 结构体
uiresume(handles.figure1);   %继续执行被uiwait中断的程序
catch
    msgbox('计算错误，请确认基础数据填写完整且已计算轴向力及扭矩!','确认','error');
    delete(msg3_2);
end
else
    msgbox('请确认基础数据填写完整且已计算轴向力及扭矩!','确认','error');
end


%导出图表
function P_OutBut_3_2_Callback(hObject, eventdata, handles)
global pass_Data fig32_1 fig32_2 a_3_2 b_3_2 c_3_2 d_3_2 e_3_2 f_3_2
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
    Selection.Text = '四、定向井屈曲分析计算结果';
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
    Tables = Document.Tables.Add(Selection.Range,4,4);    % 2行 4列
    DTI32_1 = Document.Tables.Item(1); % 或DTI = Tables;
    DTI32_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
    DTI32_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
    DTI32_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
    DTI32_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI32_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
    DTI32_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
    
    % 合并单元格
    DTI32_1.Cell(1, 3).Merge(DTI32_1.Cell(1, 4));
    DTI32_1.Cell(2, 3).Merge(DTI32_1.Cell(2, 4));
    % 指定各单元格内容
    DTI32_1.Cell(1,1).Range.Text = '钻压（kN）';
    DTI32_1.Cell(1,2).Range.Text = '最大井斜角(°)';
    DTI32_1.Cell(1,3).Range.Text = '套管旋转扭矩（kN.m）';
    DTI32_1.Cell(3,1).Range.Text = '直井段管柱正弦弯曲临界压力（kN）';
    DTI32_1.Cell(3,2).Range.Text = '直井段管柱螺旋弯曲临界压力（kN）';
    DTI32_1.Cell(3,3).Range.Text = '斜直井段管柱正弦弯曲临界压力（kN）';
    DTI32_1.Cell(3,4).Range.Text = '斜直井段管柱螺旋弯曲临界压力（kN）';
%             DTI3_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

%   result_M_Data = [M_i1,M_i9,M_i10,M_i11,M_i12,M_i13,M_i27];
    M_Data = pass_Data{35};
    M_i1 = M_Data(1);
    M_i9 = M_Data(2);
    M_i10 = M_Data(3);
    M_i11 = M_Data(4);
    M_i12 = M_Data(5);
    M_i13 = M_Data(6);
    M_i27 = M_Data(7);
    %填写数据
    DTI32_1.Cell(2,1).Range.Text = char(M_i1);
    DTI32_1.Cell(2,2).Range.Text = char(M_i9);
    DTI32_1.Cell(2,3).Range.Text = char(M_i27);
    DTI32_1.Cell(4,1).Range.Text = char(M_i10);
    DTI32_1.Cell(4,2).Range.Text = char(M_i11);
    DTI32_1.Cell(4,3).Range.Text = char(M_i12);
    DTI32_1.Cell(4,4).Range.Text = char(M_i13);

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
    Tables = Document.Tables.Add(Selection.Range,8,3);    % 8 行 3列
    DTI32_2 = Document.Tables.Item(2); % 或DTI = Tables;
    DTI32_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
    DTI32_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
    DTI32_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
    DTI32_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI32_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
    DTI32_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中

    % 指定标题各单元格内容
    DTI32_2.Cell(1,1).Range.Text = '直井管柱发生正弦弯曲临界压力（kN）';
    DTI32_2.Cell(2,1).Range.Text = '直井管柱发生螺旋弯曲临界压力（kN）';
    DTI32_2.Cell(3,1).Range.Text = '斜直井段管柱发生正弦弯曲临界压力（kN）';
    DTI32_2.Cell(4,1).Range.Text = '斜直井段管柱发生螺旋弯曲临界压力（kN）';
    DTI32_2.Cell(5,1).Range.Text = '判断管柱是否发生屈曲';
    DTI32_2.Cell(5,2).Range.Text = '对应井段（m）';
    DTI32_2.Cell(5,3).Range.Text = '与井壁最大附加接触力（kN/m）';
    % 合并单元格
    DTI32_2.Cell(1, 2).Merge(DTI32_2.Cell(1, 3));
    DTI32_2.Cell(2, 2).Merge(DTI32_2.Cell(2, 3));
    DTI32_2.Cell(3, 2).Merge(DTI32_2.Cell(3, 3));
    DTI32_2.Cell(4, 2).Merge(DTI32_2.Cell(4, 3));

    T_Data = pass_Data{36};
    T_i1 = T_Data(:,1);
    T_i13 = T_Data(:,13);
    %填写数据
    DTI32_2.Cell(1,2).Range.Text = char(M_i10);
    DTI32_2.Cell(2,2).Range.Text = char(M_i11);
    DTI32_2.Cell(3,2).Range.Text = char(M_i12);
    DTI32_2.Cell(4,2).Range.Text = char(M_i13);
    DTI32_2.Cell(6,1).Range.Text = '管柱未失稳'; 
    DTI32_2.Cell(7,1).Range.Text = '管柱正弦失稳';  
    DTI32_2.Cell(8,1).Range.Text = '管柱螺旋失稳';  
    DTI32_2.Cell(6,2).Range.Text = [char(T_i1(a_3_2,1)),'~',char(T_i1(b_3_2,1))];  
    DTI32_2.Cell(6,3).Range.Text = num2str(max(str2num(char(T_i13(a_3_2:b_3_2,1)))));  
    if a_3_2~=0 && b_3_2~=0 && c_3_2~=0 && d_3_2~=0 && e_3_2~=0 && f_3_2~=0
        DTI32_2.Cell(7,2).Range.Text = [char(T_i1(c_3_2,1)),'~',char(T_i1(d_3_2,1))];  
        DTI32_2.Cell(8,2).Range.Text = [char(T_i1(e_3_2,1)),'~',char(T_i1(f_3_2,1))];  
        DTI32_2.Cell(7,3).Range.Text = num2str(max(str2num(char(T_i13(c_3_2:d_3_2,1)))));  
        DTI32_2.Cell(8,3).Range.Text = num2str(max(str2num(char(T_i13(e_3_2:f_3_2,1))))); 
    elseif c_3_2==0 && d_3_2==0 && e_3_2~=0 && f_3_2~=0
        DTI32_2.Cell(7,2).Range.Text = '--';  
        DTI32_2.Cell(8,2).Range.Text = [char(T_i1(e_3_2,1)),'~',char(T_i1(f_3_2,1))];  
        DTI32_2.Cell(7,3).Range.Text = '--';  
        DTI32_2.Cell(8,3).Range.Text = num2str(max(str2num(char(T_i13(e_3_2:f_3_2,1))))); 
    elseif c_3_2~=0 && d_3_2~=0 && e_3_2==0 && f_3_2==0
        DTI32_2.Cell(7,2).Range.Text = [char(T_i1(c_3_2,1)),'~',char(T_i1(d_3_2,1))];  
        DTI32_2.Cell(8,2).Range.Text = '--';  
        DTI32_2.Cell(7,3).Range.Text = num2str(max(str2num(char(T_i13(c_3_2:d_3_2,1)))));  
        DTI32_2.Cell(8,3).Range.Text = '--'; 
    elseif c_3_2==0 && d_3_2==0 && e_3_2==0 && f_3_2==0
        DTI32_2.Cell(7,2).Range.Text = '--';  
        DTI32_2.Cell(8,2).Range.Text = '--';  
        DTI32_2.Cell(7,3).Range.Text = '--';  
        DTI32_2.Cell(8,3).Range.Text = '--'; 
    end

    %导出图片-------------------
    Selection.Start = Content.end; % 设定光标位置为最后
    Selection.TypeParagraph;    %插入新的空段落
    try
        hObject_fig32_1 = findobj(fig32_1);
        hObject_fig32_1 = hObject_fig32_1(1,1);
        hObject_fig32_2 = findobj(fig32_2);
        hObject_fig32_2 = hObject_fig32_2(1,1);

        hgexport(hObject_fig32_1, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        hgexport(hObject_fig32_2, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;
    catch
        hObject_fig32_2 = findobj(fig32_2);
        hObject_fig32_2 = hObject_fig32_2(1,1);
        hgexport(hObject_fig32_2, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;
    end

    Selection.Start = Content.end; % 设定光标位置为最后
    Selection.TypeParagraph;    %插入新的空段落       

    Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
    Document.Save; % 保存文档
%             Document.Close; % 关闭文档
%             Word.Quit; % 退出word服务器
end


% --- Executes during object creation, after setting all properties.
function y_3_2M_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_3_2M_1 (see GCBO)
% eventdata  reserved - to be defined in a_3_2 future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global F_i2
set(hObject,'String',char(F_i2(1,1)))


% --- Executes during object creation, after setting all properties.
function y_3_2M_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_3_2M_9 (see GCBO)
% eventdata  reserved - to be defined in a_3_2 future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global A_i2
try
set(handles.y_3_2M_9,'String',num2str(max(str2num(char(A_i2(:,1))))))
catch
end


% --- Executes during object creation, after setting all properties.
function y_3_2M_27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_3_2M_27 (see GCBO)
% eventdata  reserved - to be defined in a_3_2 future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global Q_i9
% Hint: edit controls usually have a_3_2 white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',char(Q_i9(1,1)))
