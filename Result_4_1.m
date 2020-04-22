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
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','ֱ��ĥ��Ť�ؼ���');

global pass_Data c_Array
global M_i14 D_n3 D_n4 S_i1 S_i2 S_i3 K_i1 K_i3 B_i1 B_i3 O_i2 O_i9 F_i7
pass_Data = varargin{1};
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
%--------------------------------------------------------------------------
%����M��ֵ-----------------------------------------------------------------
table_D = pass_Data{3};
M_i14 = table_D(:,4);
M_i14 = M_i14(1,1);
D_n4={};
D_n4{end+1,1} = num2str( str2num(char(M_i14))/1000);
set(handles.y_4text9,'String',D_n4(1,1))
D_n3 = table_D(:,3);
%------------------------------------------------------------------------------------
%����U��Ҫ�õ�������-----------------------------------------------------------------
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
%����UU��Ҫ�õ�������----------------------------------------------------------------
table_O = pass_Data{9};
O_i2 = table_O(:,2);
O_i9 = table_O(:,9);
table_F =pass_Data{5};
F_i7 = table_F(:,7);

%�ж�֮ǰ�Ƿ�����pass_Data---------------------------------------------------------------%
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
%��һ��ͼ
fig4_1 = figure(41);
set(fig4_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_1,'menubar','none');
set(fig4_1,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹�������Ħ���������ͼ');
hold on;
y_fig_1 = str2num(char(U_i1));
x_fig_1 = str2num(char(U_i5)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹�������Ħ������/kN','FontSize',10);
ylabel('����/m','FontSize',10);
grid on;
hold off;
%�ڶ���ͼ
fig4_2 = figure(42);
set(fig4_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_2,'menubar','none');
set(fig4_2,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹�������Ħ���������ͼ');
hold on;
y_fig_2 = str2num(char(U_i1));
x_fig_2 = str2num(char(U_i6)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_2,y_fig_2,'-b','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹�������Ħ��Ť��/(kN��m)','FontSize',10);
ylabel('����/m','FontSize',10);
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
    errordlg('����д�����ķ��������ݣ�','����')
end
if bool_value
%��д����������j���ο�ʼ�����--------------------------------------------------
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
%ͨ��S_i3ȷ��M_i6���ڵ�����--------------------------------------------------------
for i=1:size(S_i3,1)
    if str2num(char(S_i3(i,1))) ~= 0
        hang_M_i6 = i
        break
    end
end

%���¼���U_i1 U_i2 U_i3--------------------------------------------------------
M_i17 = get(handles.y_4edit7,'String');
% M_i17 = round( num2str(D_n3(1,1))-num2str(M_i18(1,1))*num2str(M_i19(1,1))-20  );
%U_i1����M_i17---------------------------------------------------------------------------
for i=1:size(U_i1,1)
    if str2num(char(U_i1(i,1))) >= str2num(M_i17)
        hang = i-1     %M_i17���ڡ�hang���롰hang+1��֮�䣨��U_i1Ϊ������
        break
    end
end
up_U_i1 = U_i1(1:hang,1);                           %M_i17֮ǰ�Ĳ���
down_U_i1 = U_i1(hang+2:end,1);                     %M_1,6֮��Ĳ��֣���������"0""850""1250"������"850"��һ�У�
addData = str2num(M_i17);                           %��M_i17��ʼ
up_U_i1{end+1,1} = num2str(addData-1)               %ѭ��֮ǰ���Ȳ����a-1��     * M_i17��Ϊ��hang+2����
while addData < str2num(char(U_i1(hang_M_i6,1)))         %һֱ�ۼӵ�M_1,6��һ��
    up_U_i1{end+1,1} = num2str(addData);
    addData = addData+1;
end
U_i1 = [up_U_i1;down_U_i1];                          %U_i1������ɣ������������������U_i1��ͬ

%����U_i2--------------------------------------------------------------------
down_U_i2 = S_i2(hang_M_i6:end,1);                  %U_i2��b��k��,��M_i6��Ӧ��S_i2�����һ��
%����˼�룺ͨ��K���һ�еĴ�����U_i1�Ƚϣ��Ӷ�ȷ��K_i3��ֵ
U_m16_hang = size(U_i1,1)-size(down_U_i2,1)+1;          %M_i16��U�е�����
for i=U_m16_hang-1:-1:1                             %����U_i2�ϰ벿��  U_b,2+K_i+1,3*[U_i+1,1-U_i,1]*0.001
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

%����U_i3--------------------------------------------------------------------
up_U_i3={};
for i=1:U_m16_hang-1
    up_U_i3{end+1,1} = '0';
end
down_U_i3 = S_i3(hang_M_i6:end,1);
U_i3 = [up_U_i3;down_U_i3];

%U_i4----------------------------------------------------------------------
U_i4 = {};
M_i14 = get(handles.y_4text9,'String');
% for i = 1:U_m16_hang-1  %ѭ����ֵM_i14ֱ��M_1,16��һ��
for i = 1:hang+2-1              %ѭ����ֵM_i14ֱ��M_1,17��һ��,'hang+2'ΪM_i17������
    U_i4{end+1,1} = char(M_i14);
end
try
    M_i16 = get(handles.y_4edit6,'String');
    if size(M_i16,1) == 0 || size(M_i16,2) == 0 
        msgbox('������������⾶��', '����','error');
    else   %��ӷ�����            %��������ࣺM_i18   ������������M_i19
        if size(get(handles.y_4edit9,'String'),1)==0 || size(get(handles.y_4edit9,'String'),2)==0
            msgbox('�����������������', '����','error');
        else
            if size(get(handles.y_4edit8,'String'),1)==0 || size(get(handles.y_4edit8,'String'),2)==0
                msgbox('����������������࣡', '����','error');
            else
    %             for j = 1:(size(U_i1,1)-U_m16_hang+1)
                n = 1;  %�ӵ�1����������ʼ
                m=0;    %���������
                U_i4{end+1,1} = num2str( str2num(char(M_i16))  );
                for j = 1:(size(U_i1,1)-(hang+2)+1)
    %                 while m == round(str2num(char(M_i18)))
                    if round(str2num(char(M_i18)))==m    %�ж��Ƿ�ѭ������������������
                        U_i4{end+1,1} = num2str( str2num(char(M_i16))  );
                        m=0;    %���÷��������
                        n=n+1;  %ͳ�Ʒ���������+1
                    else
                        U_i4{end+1,1} = char(M_i14);
                    end
                        m = m+1;
    %                 end
                    if n == str2num(char(M_i19))    %�����������ϣ�break����ѭ��
                        break
                    end
                end
            end
        end
    end
    for k = 1:size(U_i1,1)-size(U_i4,1)   %����ѭ����������U_i4��ȫ��M_1,14��
        U_i4{end+1,1} = char(M_i14);
    end
catch
    msgbox('��������������༰�����Ƿ�������ȷ��', '����','error');
end

%U_i5----------------------------------------------------------------------
U_i5 = {};
for k = 1:size(U_i1,1)
    U_i5{end+1,1} = '0';
end
for j = size(U_i1,1)-1:-1:1
    for i=1:size(B_i1,1)
        if strcmp(char(B_i1(i,1)),'����') == 1
            B_i5 = 0.29;
            break
        elseif strcmp(char(B_i1(i,1)),'�׹�') == 1
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
        if strcmp(char(B_i1(i,1)),'����') == 1
            B_i5 = 0.29;
            break
        elseif strcmp(char(B_i1(i,1)),'�׹�') == 1
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

%����UU������ʾ����---------------------------------------------------------
UU_1_2 = num2str(  max(str2num(char(U_i5))) ,'%.3f');
set(handles.y_4edit2,'String',UU_1_2)
UU_1_3 = num2str(  max(str2num(char(U_i6))) ,'%.3f' );
set(handles.y_4edit3,'String',UU_1_3)
%O_n+1,2/��MAX��U_i,6��+O_1,9��
UU_1_4 = num2str(   str2num(char(O_i2(end,1))) / (  max(str2num(char(U_i6))) + str2num(char(O_i9(1,1)))   )    );
set(handles.y_4edit4,'String',UU_1_4)
if str2num(UU_1_4) > str2num(char(F_i7(1,1)))
    set(handles.y_4edit5,'String','����Ҫ��')
elseif str2num(UU_1_4) <= str2num(char(F_i7(1,1)))
    set(handles.y_4edit5,'String','������Ҫ��')
end

%U��ʾ��table����-----------------------------------------------------------
result_Data = [U_i1,U_i2,U_i3,U_i4,U_i5,U_i6];
set(handles.y_4uitable2,'Data',result_Data);
pass_Data{12} = result_Data;    %��U���ظ�main
pass_Data{17} = [get(handles.y_4text9,'String'),get(handles.y_4text11,'String'),get(handles.y_4edit6,'String')...
    get(handles.y_4edit8,'String'),get(handles.y_4edit7,'String'),get(handles.y_4edit9,'String')];
pass_Data{30} = [{UU_1_2},{UU_1_3},{UU_1_4},{get(handles.y_4edit5,'String')}];

%��ͼ-----------------------------------------------------------------------
%��һ��ͼ
fig4_1 = figure(41);
set(fig4_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_1,'menubar','none');
set(fig4_1,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹�������Ħ���������ͼ');
hold on;
y_fig_1 = str2num(char(U_i1));
x_fig_1 = str2num(char(U_i5)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹�������Ħ������/kN','FontSize',10);
ylabel('����/m','FontSize',10);
grid on;
hold off;
%�ڶ���ͼ
fig4_2 = figure(42);
set(fig4_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_2,'menubar','none');
set(fig4_2,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹�������Ħ���������ͼ');
hold on;
y_fig_2 = str2num(char(U_i1));
x_fig_2 = str2num(char(U_i6)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_2,y_fig_2,'-b','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹�������Ħ��Ť��/(kN��m)','FontSize',10);
ylabel('����/m','FontSize',10);
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
        Selection.Text = '�塢ֱ��Ħ��Ť�ؼ�����';
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
        Tables = Document.Tables.Add(Selection.Range,2,6);    % 2�� 4��
        DTI4_1 = Document.Tables.Item(1); % ��DTI = Tables;
        DTI4_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
        DTI4_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
        DTI4_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
        DTI4_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI4_1.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
        DTI4_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
        % ָ������Ԫ������
        DTI4_1.Cell(1,1).Range.Text = '�꾮�׹��⾶��m��';
        DTI4_1.Cell(1,2).Range.Text = '�Ƿ���ӷ�������kN��';
        DTI4_1.Cell(1,3).Range.Text = '�������⾶��m��';
        DTI4_1.Cell(1,4).Range.Text = '���������뾮�ο�ʼ�㣨m��';
        DTI4_1.Cell(1,5).Range.Text = '��������������m��';
        DTI4_1.Cell(1,6).Range.Text = '��������������������';
%             DTI4_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %��д����
        DTI4_1.Cell(2,1).Range.Text = char(get(handles.y_4text9,'String'));
        DTI4_1.Cell(2,2).Range.Text = get(handles.y_4text11,'String');
        DTI4_1.Cell(2,3).Range.Text = char(get(handles.y_4edit6,'String'));
        DTI4_1.Cell(2,4).Range.Text = char(get(handles.y_4edit7,'String'));
        DTI4_1.Cell(2,5).Range.Text = char(get(handles.y_4edit8,'String'));
        DTI4_1.Cell(2,6).Range.Text = char(get(handles.y_4edit9,'String'));


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
        Tables = Document.Tables.Add(Selection.Range,2,5);    % 2 �� 3��
        DTI4_2 = Document.Tables.Item(2); % ��DTI = Tables;
        DTI4_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
        DTI4_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
        DTI4_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
        DTI4_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI4_2.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
        DTI4_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
        
        % ָ������Ԫ������
        DTI4_2.Cell(1,1).Range.Text = '�������';
        DTI4_2.Cell(1,2).Range.Text = '���Ħ��������kN��';
        DTI4_2.Cell(1,3).Range.Text = '���Ħ��Ť��(kN��m)';
        DTI4_2.Cell(1,4).Range.Text = '�ۺϿ�Ť��ȫϵ��';
        DTI4_2.Cell(1,5).Range.Text = 'У�˽��';
        %��д����
        DTI4_2.Cell(2,1).Range.Text = '�����С'; 
        DTI4_2.Cell(2,2).Range.Text = char(get(handles.y_4edit2,'String'));  
        DTI4_2.Cell(2,3).Range.Text = char(get(handles.y_4edit3,'String'));
        DTI4_2.Cell(2,4).Range.Text = char(get(handles.y_4edit4,'String'));
        DTI4_2.Cell(2,5).Range.Text = char(get(handles.y_4edit5,'String'));
        
         %����ͼƬ-------------------
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���
            
            hObject_fig4_1 = findobj(fig4_1);
            hObject_fig4_1 = hObject_fig4_1(1,1);
            
            hObject_fig4_2 = findobj(fig4_2);
            hObject_fig4_2 = hObject_fig4_2(1,1);
            
            hgexport(hObject_fig4_1, '-clipboard');
            Selection.Range.Paragraphs.Item(1).Range.Paste;
            
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���       
            hgexport(hObject_fig4_2, '-clipboard');    %��ͼ�θ��Ƶ�Microsoft? Windowsճ����
            Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %��ͼ��ճ������ǰ�ĵ���

        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % ������ͼ��ʽΪҳ��
        Document.Save; % �����ĵ�
%             Document.Close; % �ر��ĵ�
%             Word.Quit; % �˳�word������
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
%     [indx tf]=listdlg('ListString',{'��','��'},...
%     'Name','ѡ��һ��','OKString','ȷ��','CancelString','ȡ��',...
%     'SelectionMode','single','ListSize',[200 100]);
%     if (indx == 1)
%         hObject.Data(row_1,col_1) = {'��'};
%     elseif (indx == 2)
%         hObject.Data(row_1,col_1) = {'��'};
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
% handles.y_4uitable1.Data(:,2) = {'��'};
% handles.y_4uitable1.Data(2:end,3) = {'��'};
% handles.y_4uitable1.Data(2:end,4) = {'��'};
% handles.y_4uitable1.Data(2:end,5) = {'��'};
% handles.y_4uitable1.Data(2:end,6) = {'��'};
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
%(D_n,3-M_1,18*M_1,19-20)����ȡ��
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
