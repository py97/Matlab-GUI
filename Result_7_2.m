function varargout = Result_7_2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_7_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_7_2_OutputFcn, ...
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


% --- Executes just before Result_7_2 is made visible.
function Result_7_2_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','���򾮹���������ƣ�����˷�����ƣ����������');


global pass_Data c_Array result_Y1_Data result_Y2_Data
global M_i28 M_i29 M_i30 M_i31 M_i32 M_i33 M_i34
pass_Data = varargin{1};
c_Array=load('taoguanDB.mat');
table_C = c_Array.taoguanDB;
% class(table_C):       table_C:string
%����   �������ݱ�Ϊ��0��------------------------------------------------
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

%ģ����֪����---------------------------------------------------------------
table_L = pass_Data{32};
table_F = pass_Data{5};
table_Q = pass_Data{34};
table_T = pass_Data{36};
table_J = pass_Data{31};
L_i5 = table_L(:,5);
F_i2 = table_F(:,2);
Q_i10 = table_Q(:,10);
T_i12 = table_T(:,12);
J_i17 = table_J(:,17);
J_i16 = table_J(:,16);
Q_i9 = table_Q(:,9);
M_i28 = num2str(max(str2num(char(L_i5))));
M_i29 = char(F_i2(1,1));
M_i30 = char(Q_i10(1,1));
M_i31 = char(T_i12(end,1));
M_i32 = num2str(max(str2num(char(J_i17))));
M_i33 = num2str(max(str2num(char(J_i16))));
M_i34 = char(Q_i9(1,1));
set(handles.y_7_2text4,'String',M_i28)
set(handles.y_7_2text10,'String',M_i29)
set(handles.y_7_2text11,'String',M_i30)
set(handles.y_7_2text12,'String',M_i31)
set(handles.y_7_2text13,'String',M_i32)
set(handles.y_7_2text14,'String',M_i33)
set(handles.y_7_2text16,'String',M_i34)

%�ж�֮ǰ�Ƿ�����pass_Data---------------------------------------------------------------%
try
    table_Y = pass_Data{44};
    ResM_7_2 = pass_Data{40};
    table_Y1 = (table_Y(1:16))';
    table_Y2 = (table_Y(17:end))';
    set(handles.y_7_2uitable1,'Data',table_Y1)
    set(handles.y_7_2uitable2,'Data',table_Y2)
%     set(handles.M_28,'String',ResM_7_2(1))
%     set(handles.M_29,'String',ResM_7_2(2))
%     set(handles.M_30,'String',ResM_7_2(3))
%     set(handles.M_31,'String',ResM_7_2(4))
%     set(handles.M_32,'String',ResM_7_2(5))
%     set(handles.M_33,'String',ResM_7_2(6))
%     set(handles.M_34,'String',ResM_7_2(7))
catch
end
%------------------------------------------------------------------------------------------%

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Result_7_2 wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Result_7_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in y_7_2pushbutton1.
function y_7_2pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to y_7_2pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M_i28 M_i29 M_i30 M_i31 M_i32 M_i33 M_i34
global pass_Data result_Y1_Data result_Y2_Data result_Y_Data
%������Ҫ�õ��Ĳ���--------------------------------------------------------------------------------------------------------
table_D = pass_Data{3};
table_P = pass_Data{33};
table_J = pass_Data{31};
table_T = pass_Data{36};
D_i8 = table_D(:,8);
P_i5 = table_P(:,5);
J_i12 = table_J(:,12);
J_i3 = table_J(:,3);
T_i3 = table_T(:,3);
P_i7 = table_P(:,7);
T_i4 = table_T(:,4);
D_i4 = table_D(:,4);
D_i5 = table_D(:,5);
J_i8 = table_J(:,8);

%Y����---------------------------------------------------------------------------------------------------------------------
%�������ͣ�Y_di1
%      D_n,8
Y_di1 = D_i8(end,1)

%����Ӧ����MPa��:Y_di2
%      M_1,29/MIN(P_i,5)*0.001
Y_di2 =  str2num(M_i29)./min(str2num(char(P_i5(:,1)))).*0.001;

%������Ӧ����MPa��:Y_di3
%      M_1,30
Y_di3 = str2num(M_i30);

%��������Ӧ����MPa��:Y_di4
%       205950*[1/MIN(J_i,12)]*D_n,4*0.001/2    J_i,12��ѡ������ֵ��������Сֵ
minJ_i12 = {};
for i = 1:size(J_i12,1)
    if isnumeric(str2num(char(J_i12(i,1)))) == 1 & str2num(char(J_i12(i,1)))~=0
        minJ_i12(end+1,1) = J_i12(i,1);
    end
end
Y_di4 =  205950.*(1./min(str2num(char(minJ_i12)))).*str2num(char(D_i4(end,1))).*0.001./2;

%��������Ӧ����MPa��:Y_di5
%       [0.3151*2*MIN(J_i,3)*0.001*MIN(T_i,3)/MIN(P_i,7)*(M_1,29*1000)^0.08*(M_1,29*1000-T_m,4)^0.92]*10^(-6)
Y_di5 = (0.3151*2*min(str2num(char(J_i3(:,1))))*0.001*min(str2num(char(T_i3(:,1))))/min(str2num(char(P_i7(:,1))))*...
        ( str2num(M_i29)*1000-str2num(char(T_i4(end,1))) )^0.92 )*10^(-6);

%��������Ӧ����MPa��:Y_di6
%      {0.5*MIN(J_i,3)                   *0.001*MIN(T_i,3)                  /MIN(P_i,7)                   *
%      (M_1,29*1000)             *[1.5*ABS(M_1,34*1000)+SQRT((1.5*ABS(M_1,34*1000))^2+8*205950*10^6*
%       MIN(P_i,7)                  *M_1,29*1000)]/SQRT(8*205950*10^6*MIN(P_i,7)                 *M_1,29*1000)}*10^(-6)
Y_di6 = (0.5*min(str2num(char(J_i3(:,1))))*0.01*min(str2num(char(T_i3(:,1))))/min(str2num(char(P_i7(:,1))))*...
       (str2num(M_i29)*1000)*(1.5*abs(str2num(M_i34)*1000)+sqrt((1.5*abs(str2num(M_i34)*1000))^2    +8*205950*10^6*...
       min(str2num(char(P_i7(:,1))))*str2num(M_i29)*1000))/sqrt(8*205950*10^6*min(str2num(char(P_i7(:,1))))*str2num(M_i29)*1000))*10^(-6);
   
%��������Ӧ����MPa��:Y_di7
%IF(M_1,31="δʧ��",��=Y_1,4,��=IF(M_1,31="��������",��=Y_1,5,��=IF(M_1,31="��������",��=Y_1,6)))
c_M_31 = char(M_i31);
if strcmp(c_M_31 , 'δʧ��')
    Y_di7 = Y_di5;
elseif strcmp(c_M_31 , '��������')
    Y_di7 = Y_di5;
elseif strcmp(c_M_31 , '��������')
    Y_di7 = Y_di6;
end


%����Ӧ����MPa��:Y_di8
%      (D_n,4^2                     *M_1,32-D_n,5^2                     *M_1,33)/  (D_n,4^2                     -
%       D_n,5^2                     )-D_n,4^2                     *D_n,5^2                     *(M_1,32-M_1,33)/
%       (D_n,4^2                     -D_n,5^2                     )/(D_n,4/2)^2
Y_di8 = (str2num(char(D_i4(end,1)))^2*str2num(M_i32)-str2num(char(D_i5(end,1)))^2*str2num(M_i33))/  (str2num(char(D_i4(end,1)))^2-...
        str2num(char(D_i5(end,1)))^2)-str2num(char(D_i4(end,1)))^2*str2num(char(D_i5(end,1)))^2*(str2num(M_i32)-str2num(M_i33))/...
        (str2num(char(D_i4(end,1)))^2-str2num(char(D_i5(end,1)))^2)/(str2num(char(D_i4(end,1)))/2)^2;
    
%����Ӧ����MPa��:Y_di9
%      (D_n,4^2                     *M_1,32-D_n,5^2                     *M_1,33)/(D_n,4^2                     -
%       D_n,5^2)                    +D_n,4^2                     *D_n,5^2                     *(M_1,32-M_1,33)/
%       (D_n,4^2                     -D_n,5^2                      )/(D_n,4/2)^2
Y_di9 = (str2num(char(D_i4(end,1)))^2*str2num(M_i32)-str2num(char(D_i5(end,1)))^2*str2num(M_i33))/(str2num(char(D_i4(end,1)))^2-...
        str2num(char(D_i5(end,1)))^2)+str2num(char(D_i4(end,1)))^2*str2num(char(D_i5(end,1)))^2*(str2num(M_i32)-str2num(M_i33))/...
        (str2num(char(D_i4(end,1)))^2-str2num(char(D_i5(end,1)))^2)/(str2num(char(D_i4(end,1)))/2)^2;
    
%Mises��ЧӦ��1��MPa��:Y_di10
%       SQRT(0.5*((Y_1,2+Y_1,7-Y_1,8)^2+(Y_1,8-Y_1,9)^2+(Y_1,9-Y_1,1-Y_1,7)^2))
Y_di10 = sqrt(0.5*((Y_di2 +Y_di7 -Y_di8)^2 +(Y_di8 -Y_di9)^2 +(Y_di9 -Y_di2 -Y_di7 )^2));

%Mises��ЧӦ��2��MPa��:Y_di11
%       SQRT(0.5*((Y_1,2-Y_1,7-Y_1,8)^2+(Y_1,8-Y_1,9)^2+(Y_1,9-Y_1,2+Y_1,7)^2))
Y_di11 = sqrt(0.5*((Y_di2 -Y_di7-Y_di8)^2  +(Y_di8-Y_di9)^2  +(Y_di9 -Y_di2 +Y_di7)^2));

%Tresa��ЧӦ��1��MPa��:Y_di12
%       SQRT(Y_1,10^2+3*Y_1,3^2)
Y_di12 = sqrt(Y_di10^2+3*Y_di3^2);

%Tresa��ЧӦ��2��MPa��:Y_di13
%       SQRT(Y_1,11^2+3*Y_1,3^2)
Y_di13 = sqrt(Y_di11^2+3*Y_di3^2);

%ƽ��Ӧ����MPa��:Y_di14
%      (Y_1,12+Y_1,13)/2
Y_di14 =( Y_di12+Y_di13)/2;

%Ӧ������MPa��:Y_di15
%       ABS(Y_1,12-Y_1,13)*2
Y_di15 = abs(Y_di12-Y_di13)*2;

%Ӧ����:Y_di16
%Y_1,13/Y_1,12
Y_di16 = Y_di13/Y_di12;

%��������ǿ�ȣ�MPa��:Y_di17
%J_m,8
Y_di17 = str2num(char(J_i8(end,1)));

%��Чѭ��Ӧ����MPa��:Y_di18
%       Y_1,15/(1-Y_1,14/Y_1,17)
Y_di18 = Y_di15/(1-Y_di14/Y_di17);

%ƣ��ѭ����������:Y_di19
%10^6
Y_di19 = 10^6;

%ƣ��Ӧ�����ޣ�MPa��:Y_di20
%       38+0.46*Y_1,17
Y_di20 = 38+0.46*Y_di17;

%����ƣ��Ӧ�����ޣ�MPa��:Y_di22
%       Y_1,20/2.189/1.3
Y_di22 = Y_di20/2.189/1.3;

%Ӧ���������߽ؾ�:Y_di23
%       LOG10(Y_1,22)+LOG10(Y_1,19)/(LOG10(Y_1,19)-3)*(LOG10(0.75*Y_1,17)-LOG10(Y_1,22))
Y_di23 = log10(Y_di22)+log10(Y_di19)/  (log10(Y_di19) -3)*(log10(0.75*Y_di17 )-log10(Y_di22 ));

%Ӧ����������б��:Y_di24
%       1/(LOG10(Y_1,19)-3)*(LOG10(0.75*Y_1,17)-LOG10(Y_1,22))
Y_di24 = 1/(log10(Y_di19)-3 )*(log10(0.75*Y_di17 )-log10(Y_di22));

%�׹�ƣ����������:Y_di25
%       0.68*Y_1,19*Y_1,22^Y_1,24
Y_di25 = 0.68*Y_di19*Y_di22^Y_di24;

%����ѭ��ƣ�����˶�:Y_di26
%Y_1,18^Y_1,24
Y_di26 = Y_di18^Y_di24;

%�׹ܹ���ƣ������:Y_di27
%       Y_1,25/Y_1,26
Y_di27 = Y_di25/Y_di26;

%�׹�����ƣ������:Y_di28
%8000000*(M_1,29+14.3*M_1,34)^-0.44
Y_di28 = 8000000*(str2num(M_i29)+14.3*str2num(M_i34))^(-0.44);

Y_di2 = cellstr(strjust(num2str(Y_di2),'left'));
Y_di3 = cellstr(strjust(num2str(Y_di3),'left'));
Y_di4 = cellstr(strjust(num2str(Y_di4),'left'));
Y_di5 = cellstr(strjust(num2str(Y_di5),'left'));
Y_di6 = cellstr(strjust(num2str(Y_di6),'left'));
Y_di7 = cellstr(strjust(num2str(Y_di7),'left'));
Y_di8 = cellstr(strjust(num2str(Y_di8),'left'));
Y_di9 = cellstr(strjust(num2str(Y_di9),'left'));
Y_di10 = cellstr(strjust(num2str(Y_di10),'left'));
Y_di11 = cellstr(strjust(num2str(Y_di11),'left'));
Y_di12 = cellstr(strjust(num2str(Y_di12),'left'));
Y_di13 = cellstr(strjust(num2str(Y_di13),'left'));
Y_di14 = cellstr(strjust(num2str(Y_di14),'left'));
Y_di15 = cellstr(strjust(num2str(Y_di15),'left'));
Y_di16 = cellstr(strjust(num2str(Y_di16),'left'));
Y_di17 = cellstr(strjust(num2str(Y_di17),'left'));
Y_di18 = cellstr(strjust(num2str(Y_di18),'left'));
Y_di19 = cellstr(strjust(num2str(Y_di19),'left'));
Y_di20 = cellstr(strjust(num2str(Y_di20),'left'));
Y_di22 = cellstr(strjust(num2str(Y_di22),'left'));
Y_di23 = cellstr(strjust(num2str(Y_di23),'left'));
Y_di24 = cellstr(strjust(num2str(Y_di24),'left'));
Y_di25 = cellstr(strjust(num2str(Y_di25),'left'));
Y_di26 = cellstr(strjust(num2str(Y_di26),'left'));
Y_di27 = cellstr(strjust(num2str(Y_di27),'left'));
Y_di28 = cellstr(strjust(num2str(Y_di28),'left'));

result_Y1_Data = [Y_di1;Y_di2;Y_di3;Y_di4;Y_di5;Y_di6;Y_di7;Y_di8;Y_di9;Y_di10;Y_di11;Y_di12;Y_di13;Y_di14;Y_di15;Y_di16]
set(handles.y_7_2uitable1,'Data',result_Y1_Data);
result_Y2_Data = [Y_di17;Y_di18;Y_di19;Y_di20;Y_di22;Y_di23;Y_di24;Y_di25;Y_di26;Y_di27;Y_di28];
set(handles.y_7_2uitable2,'Data',result_Y2_Data);
result_Y_Data = [Y_di1,Y_di2,Y_di3,Y_di4,Y_di5,Y_di6,Y_di7,Y_di8,Y_di9,Y_di10,Y_di11,Y_di12,Y_di13,...
    Y_di14,Y_di15,Y_di16,Y_di17,Y_di18,Y_di19,Y_di20,Y_di22,Y_di23,Y_di24,Y_di25,Y_di26,Y_di27,Y_di28];
pass_Data{44} = result_Y_Data;
pass_Data{40} = [{num2str(M_i28)},{num2str(M_i29)},{num2str(M_i30)},{num2str(M_i31)},{num2str(M_i32)},{num2str(M_i33)},{num2str(M_i34)}];

handles.output = pass_Data;% �����ݷ��͵� handles.output �С�
%������ uiresume ʱ����������У�ִ�� OutputFcn �����޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1)   %����ִ�б�uiwait�жϵĳ���


% --- Executes on button press in y_7_2pushbutton2.
function y_7_2pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to y_7_2pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M_i28 M_i29 M_i30 M_i31 M_i32 M_i33 M_i34
global pass_Data result_Y1_Data result_Y2_Data
table_Data72_1 = result_Y1_Data;
table_Data72_2 = result_Y2_Data;
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
    Selection.Text = '�ˡ����򾮹���������ƣ�����˼�ƣ������Ԥ��';
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
    Tables = Document.Tables.Add(Selection.Range,2,7);    % 2�� 5��
    DTI72_1 = Document.Tables.Item(1); % ��DTI = Tables;
    DTI72_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
    DTI72_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
    DTI72_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
    DTI72_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI72_1.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
    DTI72_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
    % ָ������Ԫ������
    DTI72_1.Cell(1,1).Range.Text = '�����������kN��';
    DTI72_1.Cell(1,2).Range.Text = '�����ѹ��kN��';
    DTI72_1.Cell(1,3).Range.Text = '����������MPa��';
    DTI72_1.Cell(1,4).Range.Text = '�����Ƿ�������';
    DTI72_1.Cell(1,5).Range.Text = '�������Һѹ��MPa��';
    DTI72_1.Cell(1,6).Range.Text = '�������Һѹ��MPa��';
    DTI72_1.Cell(1,7).Range.Text = '���Ť�أ�kN.m��';
%             DTI72_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

    %��д����
    DTI72_1.Cell(2,1).Range.Text = char(M_i28);
    DTI72_1.Cell(2,2).Range.Text = char(M_i29);
    DTI72_1.Cell(2,3).Range.Text = char(M_i30);
    DTI72_1.Cell(2,4).Range.Text = char(M_i31);
    DTI72_1.Cell(2,5).Range.Text = char(M_i32);
    DTI72_1.Cell(2,6).Range.Text = char(M_i33);
    DTI72_1.Cell(2,7).Range.Text = char(M_i34);

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

    %��1���ϳ�Ӧ��������
    Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.TypeParagraph;    %�����µĿն���
    Selection.Text = '��1���ϳ�Ӧ��������';
    Selection.Font.Size = 12;
    Selection.Font.Bold = 0; 
    Selection.MoveDown;
    Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
    Selection.TypeParagraph;    %�����µĿն���      
    Selection.Start = Content.end; % �趨���λ��Ϊ���

    %�������ݱ��
    Selection.Font.Size = 11;   %���ñ���������СΪ11
    Tables = Document.Tables.Add(Selection.Range,16,2);    % 16 �� 2��
    DTI72_2 = Document.Tables.Item(2); % ��DTI = Tables;
    DTI72_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
    DTI72_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
    DTI72_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
    DTI72_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI72_2.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
    DTI72_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���

    % ָ������Ԫ������
    DTI72_2.Cell(1,1).Range.Text = '��������';
    DTI72_2.Cell(2,1).Range.Text = '����Ӧ����MPa��';
    DTI72_2.Cell(3,1).Range.Text = '������Ӧ����MPa��';
    DTI72_2.Cell(4,1).Range.Text = '��������Ӧ����MPa��';
    DTI72_2.Cell(5,1).Range.Text = '��������Ӧ����MPa��';
    DTI72_2.Cell(6,1).Range.Text = '��������Ӧ����MPa��';
    DTI72_2.Cell(7,1).Range.Text = '��������Ӧ����MPa��';
    DTI72_2.Cell(8,1).Range.Text = '����Ӧ����MPa��';
    DTI72_2.Cell(9,1).Range.Text = '����Ӧ����MPa��';
    DTI72_2.Cell(10,1).Range.Text = 'Mises��ЧӦ��1��MPa��';
    DTI72_2.Cell(11,1).Range.Text = 'Mises��ЧӦ��2��MPa��';
    DTI72_2.Cell(12,1).Range.Text = 'Tresa��ЧӦ��1��MPa��';
    DTI72_2.Cell(13,1).Range.Text = 'Tresa��ЧӦ��2��MPa��';
    DTI72_2.Cell(14,1).Range.Text = 'ƽ��Ӧ����MPa��';
    DTI72_2.Cell(15,1).Range.Text = 'Ӧ������MPa��';
    DTI72_2.Cell(16,1).Range.Text = 'Ӧ����';
    %��д����
    DTI72_2.Cell(1,2).Range.Text = char(table_Data72_1(1,1));
    DTI72_2.Cell(2,2).Range.Text = char(table_Data72_1(2,1));
    DTI72_2.Cell(3,2).Range.Text = char(table_Data72_1(3,1));
    DTI72_2.Cell(4,2).Range.Text = char(table_Data72_1(4,1));
    DTI72_2.Cell(5,2).Range.Text = char(table_Data72_1(5,1));
    DTI72_2.Cell(6,2).Range.Text = char(table_Data72_1(6,1));
    DTI72_2.Cell(7,2).Range.Text = char(table_Data72_1(7,1));
    DTI72_2.Cell(8,2).Range.Text = char(table_Data72_1(8,1));
    DTI72_2.Cell(9,2).Range.Text = char(table_Data72_1(9,1));
    DTI72_2.Cell(10,2).Range.Text = char(table_Data72_1(10,1));
    DTI72_2.Cell(11,2).Range.Text = char(table_Data72_1(11,1));
    DTI72_2.Cell(12,2).Range.Text = char(table_Data72_1(12,1));
    DTI72_2.Cell(13,2).Range.Text = char(table_Data72_1(13,1));
    DTI72_2.Cell(14,2).Range.Text = char(table_Data72_1(14,1));
    DTI72_2.Cell(15,2).Range.Text = char(table_Data72_1(15,1));
    DTI72_2.Cell(16,2).Range.Text = char(table_Data72_1(16,1));

    %��2��ƣ�����˺�ƣ������������
     Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.TypeParagraph;    %�����µĿն���
    Selection.Text = '��2��ƣ�����˺�ƣ������������';
    Selection.Font.Size = 12;
    Selection.Font.Bold = 0; 
    Selection.MoveDown;
    Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
    Selection.TypeParagraph;    %�����µĿն���      
    Selection.Start = Content.end; % �趨���λ��Ϊ���

    %�������ݱ��
    Selection.Font.Size = 11;   %���ñ���������СΪ11
    Tables = Document.Tables.Add(Selection.Range,11,2);    % 11 �� 2��
    DTI72_2 = Document.Tables.Item(3); % ��DTI = Tables;
    DTI72_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
    DTI72_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
    DTI72_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
    DTI72_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
    DTI72_2.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
    column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
    row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
    DTI72_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���

    % ָ������Ԫ������
    DTI72_2.Cell(1,1).Range.Text = '��������ǿ�ȣ�MPa��';
    DTI72_2.Cell(2,1).Range.Text = '��Чѭ��Ӧ����MPa��';
    DTI72_2.Cell(3,1).Range.Text = 'ƣ��ѭ����������';
    DTI72_2.Cell(4,1).Range.Text = 'ƣ��Ӧ�����ޣ�MPa��';
    DTI72_2.Cell(5,1).Range.Text = '����ƣ��Ӧ�����ޣ�MPa��';
    DTI72_2.Cell(6,1).Range.Text = 'Ӧ���������߽ؾ�';
    DTI72_2.Cell(7,1).Range.Text = 'Ӧ����������б��';
    DTI72_2.Cell(8,1).Range.Text = '�׹�ƣ����������';
    DTI72_2.Cell(9,1).Range.Text = '����ѭ��ƣ�����˶�';
    DTI72_2.Cell(10,1).Range.Text = '�׹ܹ���ƣ������';
    DTI72_2.Cell(11,1).Range.Text = '�׹ܾ�������ƣ������';
    %��д����
    DTI72_2.Cell(1,2).Range.Text = char(table_Data72_2(1,1));
    DTI72_2.Cell(2,2).Range.Text = char(table_Data72_2(2,1));
    DTI72_2.Cell(3,2).Range.Text = char(table_Data72_2(3,1));
    DTI72_2.Cell(4,2).Range.Text = char(table_Data72_2(4,1));
    DTI72_2.Cell(5,2).Range.Text = char(table_Data72_2(5,1));
    DTI72_2.Cell(6,2).Range.Text = char(table_Data72_2(6,1));
    DTI72_2.Cell(7,2).Range.Text = char(table_Data72_2(7,1));
    DTI72_2.Cell(8,2).Range.Text = char(table_Data72_2(8,1));
    DTI72_2.Cell(9,2).Range.Text = char(table_Data72_2(9,1));
    DTI72_2.Cell(10,2).Range.Text = char(table_Data72_2(10,1));
    DTI72_2.Cell(11,2).Range.Text = char(table_Data72_2(11,1));

    Selection.Start = Content.end; % �趨���λ��Ϊ���
    Selection.TypeParagraph;    %�����µĿն���       

    Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % ������ͼ��ʽΪҳ��
    Document.Save; % �����ĵ�
end
