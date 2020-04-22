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
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','����������Ϊ����');

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
%����   �������ݱ�Ϊ��0��-------------------------------------------------
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


%�ж�֮ǰ�Ƿ�����pass_Data---------------------------------------------------------------%
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
set(handles.y_3_2text26_1,'String','����δʧ��')
set(handles.y_3_2text26_2,'String','��������ʧ��')
set(handles.y_3_2text26_3,'String','��������ʧ��')

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
%��ͼ--------------------------------------------------------------------------------------
if (c_3_2~=0 && d_3_2~=0) || (e_3_2~=0 && f_3_2~=0)
    fig32_1 = figure(321);
    set(fig32_1,'units','normalized','position',[0.35 0.15 0.4 0.8]);
    set(fig32_1,'menubar','none');
    set(fig32_1,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹��������뾮�ڸ��ӽӴ���');
    hold on;
    y_fig_32_1 = str2num(char(T_i1(1:end-1,1)));
    x_fig_32_1 = str2num(char(T_i13(1:end-1,1))); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
    plot(x_fig_32_1,y_fig_32_1,'-b_3_2','LineWidth',1.5)
    xlabel('��������ʱ��ͬ������洦�׹��������뾮�ڸ��ӽӴ�����kN/m��','FontSize',10);
    ylabel('����/m','FontSize',10);
    grid on;
    hold off;
end
fig32_2 = figure(322);
set(fig32_2,'units','normalized','position',[0.35 0.15 0.4 0.8]);
set(fig32_2,'menubar','none');
set(fig32_2,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹��������뾮�ڸ��ӽӴ���');
hold on;
y_fig_32_2 = str2num(char(T_i1(1:end-1,1)));
x_fig_32_2 = str2num(char(T_i7(1:end-1,1))); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_32_2,y_fig_32_2,'-r','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹��������뾮�ڸ��ӽӴ�����kN/m��','FontSize',10);
ylabel('����/m','FontSize',10);
if (c_3_2~=0 && d_3_2~=0) || (e_3_2~=0 && f_3_2~=0)
    x_fig_32_1 = str2num(char(T_i13(1:end-1,1))); 
    plot(x_fig_32_1,y_fig_32_2,'-b_3_2','LineWidth',1.5)
    legend({'δʧ�ȽӴ���','�������ӽӴ���'},'Orientation','horizontal','Location','southoutside')
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


%����
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
%�ж������Ƿ���������	


if(logic_judge==0)  %���ݾ���ȷ
try
msg3_2 = msgbox('���Ժ�......','��ʾ');
%��ά���򾮼���������������T��------------------------------------------------------------------------------------------
%���T_i1
T_i1 = A_i1;

%��б�ǣ�T_i2
T_i2 = A_i2;

%��Ͳ������뾶֮��:T_i3
%(M_1,3/2-J_i,3)*0.001
table_M_i3 = pass_Data{41};
M_i3 = table_M_i3(1,3);
T_i3 = (str2num(char(M_i3(1,1)))./2 - str2num(char(J_i3))).*0.001;
T_i3 = cellstr(num2str(T_i3));

%���������ٽ�ѹ����T_i4
%IF(T_i,2=0 and ��T_i,2=T_i+1,2-T_i,2=0      0.204*[205950*P_i,7*(L_i,4*1000)^2]^(1/3)
%IF(T_i,2��0 and ��T_i,2��0, "=2*205950*P_i,7/(T_i,3*J_i,12)*{1+SQRT[1+ T_i,3*J_i,12^2*(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)/(205950*P_i,7)]}")
%IF(T_i,2��0 and ��T_i,2=0, "= 2*SQRT[205950*P_i,7*(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)/T_i,3]")
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

%����T_i6,T_i7��˼·----------------------------------------------------------
%һ���ȼ���T_i7=1  ����Ȼ��ȥ����T_i6  �����������T_i6��ȥ����T_i7;   �ġ���T_i7<0���¼���T_i6��   �塢�ټ���T_i7
T_i7 = cellstr(num2str(zeros(size(A_i2))+1));   %һ-------------------------------------------------------------------------------------

%��Ч������(������ѹ):T_i6(T_i7��Ҫ��)
%IF(T_i2=0 and ��T_i2=0,"T_i+1,6+L_i+1,4*(T_i+1,1-T_i,1  )")
%IF(T_i2��0 and ��T_i2>0 and T_i,7>0,"(T_i+1,6+J_i,14  *sinL_i+1,10-J_i,15  *cosL_i+1,10)*EXP[J_i,11  *(J_i,10-J_i+1,10)] -J_i,14  *sinL_i,10  +J_i,15*cosL_i,10  ")
%IF(T_i2��0 and ��T_i2>0 and T_i,7<0,"(T_i+1,6-J_i,14  *sinL_i+1,10-J_i,15  *cosL_i+1,10)*EXP[-J_i,11  *(J_i,10-J_i+1,10)]+J_i,14  *sinL_i,10  +J_i,15*cosL_i,10  ")
%IF(T_i2��0 and ��T_i2<0,"(T_i+1,6-J_i,14  *cosL_i+1,9+J_i,15  *sinL_i+1,9)*EXP[-J_i,11  *(J_i,9-J_i+1,9)]+J_i,14  *cosL_i,9  -J_i,15*sinL_i,9  ")
%IF(T_i2��0 and ��T_i2=0,"T_i+1,6+L_i+1,4*(cosJ_i+1,9-J_i+1,11*sinJ_i+1,9)*(T_i+1,1-T_i,1  )")
M_i1 = get(handles.y_3_2M_1,'String');
T_i6(size(A_i2),1) = 0 - str2num(char(M_i1));
for i = size(A_i2,1)-1:-1:1     %��-------------------------------------------------------------------------------------
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

%δʧ�ȸ��ӽӴ���:T_i7(T_i8��Ҫ�ã���Ҫ�õ�T_i6)
%'IF(T_i,2=0 and ��T_i,2=T_i+1,2-T_i,2=0,"=0")
%'IF(T_i,2��0 and ��T_i,2��0, "=L_i,4*SIN(T_i,2*PI()/180)-T_i,6/J_i,12")
%'IF(T_i,2��0 and ��T_i,2=0,"=L_i,4*SIN(T_i,2*PI()/180)")
for i = 1:size(A_i2,1)-1        %��-------------------------------------------------------------------------------------
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

for i = size(A_i2,1)-1:-1:1     %��-------------------------------------------------------------------------------------
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

for i = 1:size(A_i2,1)-1        %��-------------------------------------------------------------------------------------
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

%Ť���������ٽ�����ϵ��T_i8(T_i5��Ҫ��,�õ�T_i7)
%IF(T_i,7=0,"=3.691*M_1,27/((205950*10^6*P_i,7/(L_i,4*1000/J_i,2))^(1/3))")
%IF(T_i,7��0,"=-2.586*(M_1,27*1000/(4*SQRT(205950*10^6*P_i,7*ABS(T_i,7)*1000/T_i,3)))+1.449")
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

%���������ٽ�ѹ��T_i5(�õ�T_i8)
%IF(T_i,2=0 and ��T_i,2=T_i+1,2-T_i,2=0, "=0.405*[205950*P_i,7*(L_i,4*1000)^2]^(1/3)-T_i,8")
%IF(T_i,2��0 and ��T_i,2��0, "=T_i,8^2*2*205950*P_i,7/(T_i,3*J_i,12)*{1+SQRT[1+ T_i,3*J_i,12^2*(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)/(T_i,8^2*205950*P_i,7)]}")
%IF(T_i,2��0 and ��T_i,2=0, "=T_i,8*2*SQRT[205950*P_i,7*(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)/T_i,3]")
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

%Ť�������½Ӵ�������ϵ��T_i9
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
 
%�����������ӽӴ���:T_i10
%IF(T_i,2=0 and ��T_i,2=T_i+1,2-T_i,2=0,"=T_i,3*T_i,6^2/(8*205950*P_i,7)*0.001")
%IF(T_i,2��0 and ��T_i,2��0, "={16*PI()^4*(205950*10^6*P_i,7)*T_i,3*T_i,3^2/[2*PI()
%*(205590*10^6*P_i,7*T_i,3/(L_i,4*1000/J_i,2))^0.25]^4*(-T_i,3-4) +4*PI()^2*T_i,3*
%T_i,3^2/[2*PI()*(205590*10^6*P_i,7*T_i,3/(L_i,4*1000/J_i,2))^0.25]*(T_i,6*1000+205950
%*10^6*P_i,7/J_i,12^2)+[(L_i,4*1000/J_i,2)*SIN(T_i,2*PI()/180)+T_i,6*1000/J_i,12]}*0.001")
%IF(T_i,2��0 and ��T_i,2=0, "={16*PI()^4*(205950*10^6*P_i,7)*T_i,3*T_i,3^2/[2*PI()*(205590*10^6*P_i,7*T_i,3/
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


%�����������ӽӴ���:T_i11
%IF(T_i,2=0 and ��T_i,2=T_i+1,2-T_i,2=0, "=T_i,3*T_i,6^2/(4*205950*P_i,7)*0.001")
%IF(T_i,2��0 and ��T_i,2��0,"=-16*PI()^4*(205950*10^6*P_i,7)*T_i,3*T_i,3^2/[2*PI()*(205590*10^6*P_i,7*T_i,3/(L_i,4*1000/J_i,2))^0.25]^4+4*PI()^2*T_i,3/[2*PI()*(205590*10^6*P_i,7*T_i,3/(L_i,4*1000/J_i,2))^0.25]^2*(T_i,6*10^3+205950*10^6*P_i,7/J_i,12^2) +[(L_i,4*10^3/J_i,2)*SIN(T_i,2*PI()/180)+T_i,6*10^3/J_i,12]")
%IF(T_i,2��0 and ��T_i,2=0, "=[T_i,3*T_i,6^2/(4*205950*P_i,7)+(L_i,4*10^3/J_i,2)*SIN(T_i,2*PI()/180)]*0.001")
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

%�жϹ����Ƿ�������:T_i12
%IF(T_i,6                           >-T_i4,"δʧ��")
%IF(-T_i,5<T_i,6��-T_i4, "��������")
%IF(T_i,6��-T_i,5,"��������")
T_i12={};
for i = 1:size(A_i2,1)
    if str2num(char(T_i4(i,1))) < str2num(char(T_i5(i,1)))
        if str2num(char(T_i6(i,1))) > -str2num(char(T_i4(i,1)))
            T_i12{i,1} = 'δʧ��';
        elseif -str2num(char(T_i5(i,1))) < str2num(char(T_i6(i,1))) & str2num(char(T_i6(i,1))) <= -str2num(char(T_i4(i,1)))
            T_i12{i,1} = '��������';
        elseif  str2num(char(T_i6(i,1))) <= - str2num(char(T_i5(i,1)))
            T_i12{i,1} = '��������';
        end
    else
        if str2num(char(T_i6(i,1))) > -str2num(char(T_i5(i,1)))
            T_i12{i,1} = 'δʧ��';
        elseif  str2num(char(T_i6(i,1))) <= - str2num(char(T_i5(i,1)))
            T_i12{i,1} = '��������';
        end
    end   
end

%�жϹ����Ƿ�������:T_i13
%'IF(T_i,12=δʧ��,"=T_i,7")
%'IF(T_i,12=��������,"=T_i,10")
%'IF(T_i,12=��������,"=T_i,11")
for i = 1:size(A_i2,1)
    if strcmp(char(T_i12(i,1)),'δʧ��') == 1
        T_i13(i,1) = str2num(char(T_i7(i,1)));
    elseif strcmp(char(T_i12(i,1)),'��������') == 1
        T_i13(i,1) = str2num(char(T_i10(i,1)));
    elseif  strcmp(char(T_i12(i,1)),'��������') == 1
        T_i13(i,1) = str2num(char(T_i11(i,1)));
    end
end
T_i13 = cellstr(num2str(T_i13));

%ģ������ʾ�Ĳ���---------------------------------------------------------------------------------
%M_i10,M_i11,��aֵ----------------------
for i = size(T_i2,1):-1:2
    if str2num(char(T_i2(i,1))) == 0 &&  str2num(char(T_i2(i,1)))-str2num(char(T_i2(i-1,1))) == 0
        T_a = i-1;      %aֵ
    end
end
M_i10 = cellstr(num2str(min(str2num(char(T_i4(1:T_a,1))))));
M_i11 = cellstr(num2str(min(str2num(char(T_i5(1:T_a,1))))));
set(handles.y_3_2M_10,'String',char(M_i10))
set(handles.y_3_2M_11,'String',char(M_i11))

%M_i12,M_i13,��bֵ,��mֵ----------------------
for i = 1:size(T_i2,1)-1
    if str2num(char(T_i2(i,1))) ~= 0 && (str2num(char(T_i2(i+1,1)))-str2num(char(T_i2(i,1)))) <= 0.0001
        T_b = i;      %bֵ
        break
    end
end
for j = size(T_i2,1):-1:2
    if str2num(char(T_i2(j,1))) ~= 0 &&  (str2num(char(T_i2(j,1)))-str2num(char(T_i2(j-1,1)))) <= 0.0001
        T_m = j;      %mֵ
        break
    end
end
M_i12 = cellstr(num2str(min(str2num(char(T_i4(T_b:T_m,1))))));
M_i13 = cellstr(num2str(min(str2num(char(T_i5(T_b:T_m,1))))));
set(handles.y_3_2M_12,'String',char(M_i12))
set(handles.y_3_2M_13,'String',char(M_i13))

%���----------------------------------------------------------------------------------------
M_i1 = F_i2(1,1);
M_i9 = cellstr(num2str(max(str2num(char(A_i2(:,1))))));
M_i27 = Q_i9(1,1);

result_T_Data = [T_i1,T_i2,T_i3,T_i4,T_i5,T_i6,T_i7,T_i8,T_i9,T_i10,T_i11,T_i12,T_i13];
result_M_Data = [M_i1,M_i9,M_i10,M_i11,M_i12,M_i13,M_i27];
pass_Data{35} = result_M_Data;
pass_Data{36} = result_T_Data;

%���ս�����ʾ----------------------------------------------------------------------------------
set(handles.y_3_2uitable1,'Data',result_T_Data)
set(handles.y_3_2text18,'String',char(M_i10))
set(handles.y_3_2text20,'String',char(M_i11))
set(handles.y_3_2text22,'String',char(M_i12))
set(handles.y_3_2text24,'String',char(M_i13))
set(handles.y_3_2text26_1,'String','����δʧ��')
set(handles.y_3_2text26_2,'String','��������ʧ��')
set(handles.y_3_2text26_3,'String','��������ʧ��')
%���a_3_2,b_3_2,c_3_2,d_3_2,e_3_2,f_3_2-------------------------------------------------------------------------------
a_3_2=0;b_3_2=0;c_3_2=0;d_3_2=0;e_3_2=0;f_3_2=0;
for i = 1:size(T_i12,1)
    if strcmp('δʧ��',char(T_i12(i,1))) == 1
        a_3_2 = i;
        break
    end
end
for i = 1:size(T_i12,1)
    if strcmp('��������',char(T_i12(i,1))) == 1
        c_3_2 = i;;
        break
    end
end
for i = 1:size(T_i12,1)
    if strcmp('��������',char(T_i12(i,1))) == 1
        e_3_2 = i;
        break
    end
end
for i = size(T_i12,1):-1:1
    if strcmp('δʧ��',char(T_i12(i,1))) == 1
        b_3_2 = i;
        break
    end
end
for i = size(T_i12,1):-1:1
    if strcmp('��������',char(T_i12(i,1))) == 1
        d_3_2 = i;
        break
    end
end
for i = size(T_i12,1):-1:1
    if strcmp('��������',char(T_i12(i,1))) == 1
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

%��ͼ--------------------------------------------------------------------------------------
if (c_3_2~=0 && d_3_2~=0) || (e_3_2~=0 && f_3_2~=0)
    fig32_1 = figure(321);
    set(fig32_1,'units','normalized','position',[0.35 0.15 0.4 0.8]);
    set(fig32_1,'menubar','none');
    set(fig32_1,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹��������뾮�ڸ��ӽӴ���');
    hold on;
    y_fig_32_1 = str2num(char(T_i1(1:end-1,1)));
    x_fig_32_1 = str2num(char(T_i13(1:end-1,1))); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
    plot(x_fig_32_1,y_fig_32_1,'-b_3_2','LineWidth',1.5)
    xlabel('��������ʱ��ͬ������洦�׹��������뾮�ڸ��ӽӴ�����kN/m��','FontSize',10);
    ylabel('����/m','FontSize',10);
    grid on;
    hold off;
end

fig32_2 = figure(322);
set(fig32_2,'units','normalized','position',[0.35 0.15 0.4 0.8]);
set(fig32_2,'menubar','none');
set(fig32_2,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹��������뾮�ڸ��ӽӴ���');
hold on;
y_fig_32_2 = str2num(char(T_i1(1:end-1,1)));
x_fig_32_2 = str2num(char(T_i7(1:end-1,1))); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_32_2,y_fig_32_2,'-r','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹��������뾮�ڸ��ӽӴ�����kN/m��','FontSize',10);
ylabel('����/m','FontSize',10);
if (c_3_2~=0 && d_3_2~=0) || (e_3_2~=0 && f_3_2~=0)
    x_fig_32_1 = str2num(char(T_i13(1:end-1,1))); 
    plot(x_fig_32_1,y_fig_32_2,'-b_3_2','LineWidth',1.5)
    legend({'δʧ�ȽӴ���','�������ӽӴ���'},'Orientation','horizontal','Location','southoutside')
end
grid on;
hold off;
delete(msg3_2);

handles.output = pass_Data; % �����ݷ��͵� handles.output �С�
%������ uiresume ʱ����������У�ִ�� OutputFcn �����޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1);   %����ִ�б�uiwait�жϵĳ���
catch
    msgbox('���������ȷ�ϻ���������д�������Ѽ�����������Ť��!','ȷ��','error');
    delete(msg3_2);
end
else
    msgbox('��ȷ�ϻ���������д�������Ѽ�����������Ť��!','ȷ��','error');
end


%����ͼ��
function P_OutBut_3_2_Callback(hObject, eventdata, handles)
global pass_Data fig32_1 fig32_2 a_3_2 b_3_2 c_3_2 d_3_2 e_3_2 f_3_2
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
    end;
    Word.Visible = 1; % ��set(Word, 'Visible', 1);

    % �������ļ����ڣ��򿪸ò����ļ��������½�һ���ļ��������棬�ļ���Ϊ����.docx
    if exist(filespec_user,'file');
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
    Selection.Text = '�ġ�������������������';
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
    Tables = Document.Tables.Add(Selection.Range,4,4);    % 2�� 4��
    DTI32_1 = Document.Tables.Item(1); % ��DTI = Tables;
    DTI32_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
    DTI32_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
    DTI32_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
    DTI32_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI32_1.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
    DTI32_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
    
    % �ϲ���Ԫ��
    DTI32_1.Cell(1, 3).Merge(DTI32_1.Cell(1, 4));
    DTI32_1.Cell(2, 3).Merge(DTI32_1.Cell(2, 4));
    % ָ������Ԫ������
    DTI32_1.Cell(1,1).Range.Text = '��ѹ��kN��';
    DTI32_1.Cell(1,2).Range.Text = '���б��(��)';
    DTI32_1.Cell(1,3).Range.Text = '�׹���תŤ�أ�kN.m��';
    DTI32_1.Cell(3,1).Range.Text = 'ֱ���ι������������ٽ�ѹ����kN��';
    DTI32_1.Cell(3,2).Range.Text = 'ֱ���ι������������ٽ�ѹ����kN��';
    DTI32_1.Cell(3,3).Range.Text = 'бֱ���ι������������ٽ�ѹ����kN��';
    DTI32_1.Cell(3,4).Range.Text = 'бֱ���ι������������ٽ�ѹ����kN��';
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
    %��д����
    DTI32_1.Cell(2,1).Range.Text = char(M_i1);
    DTI32_1.Cell(2,2).Range.Text = char(M_i9);
    DTI32_1.Cell(2,3).Range.Text = char(M_i27);
    DTI32_1.Cell(4,1).Range.Text = char(M_i10);
    DTI32_1.Cell(4,2).Range.Text = char(M_i11);
    DTI32_1.Cell(4,3).Range.Text = char(M_i12);
    DTI32_1.Cell(4,4).Range.Text = char(M_i13);

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
    Tables = Document.Tables.Add(Selection.Range,8,3);    % 8 �� 3��
    DTI32_2 = Document.Tables.Item(2); % ��DTI = Tables;
    DTI32_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
    DTI32_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
    DTI32_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
    DTI32_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI32_2.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
    DTI32_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���

    % ָ���������Ԫ������
    DTI32_2.Cell(1,1).Range.Text = 'ֱ�������������������ٽ�ѹ����kN��';
    DTI32_2.Cell(2,1).Range.Text = 'ֱ�������������������ٽ�ѹ����kN��';
    DTI32_2.Cell(3,1).Range.Text = 'бֱ���ι����������������ٽ�ѹ����kN��';
    DTI32_2.Cell(4,1).Range.Text = 'бֱ���ι����������������ٽ�ѹ����kN��';
    DTI32_2.Cell(5,1).Range.Text = '�жϹ����Ƿ�������';
    DTI32_2.Cell(5,2).Range.Text = '��Ӧ���Σ�m��';
    DTI32_2.Cell(5,3).Range.Text = '�뾮����󸽼ӽӴ�����kN/m��';
    % �ϲ���Ԫ��
    DTI32_2.Cell(1, 2).Merge(DTI32_2.Cell(1, 3));
    DTI32_2.Cell(2, 2).Merge(DTI32_2.Cell(2, 3));
    DTI32_2.Cell(3, 2).Merge(DTI32_2.Cell(3, 3));
    DTI32_2.Cell(4, 2).Merge(DTI32_2.Cell(4, 3));

    T_Data = pass_Data{36};
    T_i1 = T_Data(:,1);
    T_i13 = T_Data(:,13);
    %��д����
    DTI32_2.Cell(1,2).Range.Text = char(M_i10);
    DTI32_2.Cell(2,2).Range.Text = char(M_i11);
    DTI32_2.Cell(3,2).Range.Text = char(M_i12);
    DTI32_2.Cell(4,2).Range.Text = char(M_i13);
    DTI32_2.Cell(6,1).Range.Text = '����δʧ��'; 
    DTI32_2.Cell(7,1).Range.Text = '��������ʧ��';  
    DTI32_2.Cell(8,1).Range.Text = '��������ʧ��';  
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

    %����ͼƬ-------------------
    Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.TypeParagraph;    %�����µĿն���
    try
        hObject_fig32_1 = findobj(fig32_1);
        hObject_fig32_1 = hObject_fig32_1(1,1);
        hObject_fig32_2 = findobj(fig32_2);
        hObject_fig32_2 = hObject_fig32_2(1,1);

        hgexport(hObject_fig32_1, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % �趨���λ��Ϊ���
        Selection.TypeParagraph;    %�����µĿն���

        hgexport(hObject_fig32_2, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;
    catch
        hObject_fig32_2 = findobj(fig32_2);
        hObject_fig32_2 = hObject_fig32_2(1,1);
        hgexport(hObject_fig32_2, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;
    end

    Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.TypeParagraph;    %�����µĿն���       

    Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % ������ͼ��ʽΪҳ��
    Document.Save; % �����ĵ�
%             Document.Close; % �ر��ĵ�
%             Word.Quit; % �˳�word������
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
