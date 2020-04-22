function varargout = Result_6_1(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_6_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_6_1_OutputFcn, ...
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


% --- Executes just before Result_6_1 is made visible.
function Result_6_1_OpeningFcn(hObject, eventdata, handles, varargin)
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','ĥ��ʣ��ǿ�ȷ���');

global pass_Data c_Array M_i20 M_i21 M_i22 M_i23 M_i24 M_i25 I_i2
global U_i1 U_i3 B_i1 B_i2 B_i3 B_i4 W_a D_i3 D_i4 D_i5
pass_Data = varargin{1};
% global W_i1 W_i2 W_i3 W_i4 W_i5 W_i6 W_i7 W_i8 W_i9 W_i10 W_i11 W_i12 W_i13 W_i14 W_i15 W_i16
%����/��ʾ���������֡���ť------------------------------------------------------
set(handles.y_6pushbutton3,'Visible','off')
if size(pass_Data{13},1)~=0 && size(pass_Data{13},2)~=0
    set(handles.y_6pushbutton3,'Visible','on')
end

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
M_i20 = table_D(:,7);

%M_i21
M_i21={};
newM_i21={};
D_i4 = table_D(:,4);
D_i5 = table_D(:,5);
D_i6 = table_D(:,6);
D_i7 = table_D(:,7);
for j = 1:size(table_D,1)
    for i=1:size(table_C,1)  %����C�������
        %�⾶
        D4 = table_C(i,2);
        DDD4 = num2str(D4{1});
        DDD4 = str2num(DDD4);
        %�ּ�
        D7 = table_C(i,5);
        DD7 = cellstr(D7{1});
        DDD7 = num2str(DD7{1});
        %����
        D6 = str2num(char(table_C(i,4)));
        DDD6 = num2str(D6,'%.2f');
        DDD6 = str2num(DDD6);
        %�ھ�
        D5 = str2num(char(table_C(i,7)));
        DDD5 = num2str(D5,'%.2f');
        DDD5 = str2num(DDD5);

        %C����2���⾶����5���ھ�����4�����أ���7�иּ�
        %D_n4:�⾶��D_n7�ּ���D_n6:���أ�D_n5���ھ�
        if(((abs(DDD4-str2num(cell2mat(D_i4(j,1)))))<=0.001) & strcmp(DDD7,cell2mat(D_i7(j,1))) ...
            & ((abs(DDD6-str2num(cell2mat(D_i6(j,1)))))<=0.001) & (abs(  DDD5-str2num(cell2mat(D_i5(j,1))))   )<=0.001)
            newM_i21 = table_C(i,10);  %�ܲ�����ǿ��
            M_i21{end+1,1} = char(newM_i21);
            break
        end
    end
end

%M_i22  =  4.39*10^(-6)*(M_n,21/6.894757)^2+0.0020*(M_n,21/6.894757)-0.0719
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
M = pass_Data{15};
M_i24 = M{1,2};

table_M = [M_i20,M_i21,M_i22,M_i23];
set(handles.y_6uitable1,'Data',table_M)
set(handles.y_6edit1,'String',M_i24)
%--------------------------------------------------------------------------
%������������Ҫ�õ�������------------------------------------------------
table_U = pass_Data{12};
U_i1 = table_U(:,1);
U_i3 = table_U(:,3);

table_B = pass_Data{2};
B_i1 = table_B(:,1);
B_i2 = table_B(:,2);
B_i3 = table_B(:,3);
B_i4 = table_B(:,4);

for i = 1:size(U_i1,1)
    if str2num(char(U_i3(i,1))) ~= 0
        W_a = i;
        break
    end
end
W_a = W_a+1;

table_I = pass_Data{6};
I_i2 = table_I(:,2);

%--------------------------------------------------------------------------
% Choose default command line output for Result_6_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Result_6_1 wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Result_6_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function y_6edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_6edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global M_i24 pass_Data
M = pass_Data{15};
M_i24 = M{1,2};
set(hObject,'String',char(M_i24(1,1)))


function y_6edit2_Callback(hObject, eventdata, handles)
% hObject    handle to y_6edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_6edit2 as text
%        str2double(get(hObject,'String')) returns contents of y_6edit2 as a double


% --- Executes during object creation, after setting all properties.
function y_6edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_6edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function y_6uitable1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_6uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global M_i20 M_i21 M_i22 M_i23
table_M = [M_i20;M_i21;M_i22;M_i23];
set(hObject,'Data',table_M)


% --- Executes on button press in y_6pushbutton1.
function y_6pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to y_6pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data M_i20 M_i21 M_i22 M_i23 M_i24 M_i25 I_i2
global U_i1 U_i3 B_i1 B_i2 B_i3 B_i4 W_a D_i3 D_i4 D_i5
global fig6_1 fig6_2 fig6_3 fig6_4
M_i25 = get(handles.y_6edit2,'String');
try
h=msgbox('���Ժ󣬼����С���','��ʾ');
%������------------------------------------------------------------------
%PS:�Ż�ʱ�ɽ�W_i7,W_i8,W_i10,W_i11 �ϲ�

W_i1 = U_i1;
W_i2 = U_i3;

W_i3 = {};
for i=1:size(U_i1,1)
    if  strcmp(B_i1{1,1},'�׹�')  == 1
        if str2num(char(W_i1(i,1))) <= str2num(char(B_i2(1,1)))
            W_i3{end+1,1} = '0.24';
        elseif str2num(char(W_i1(i,1))) > str2num(char(B_i2(1,1)))
            W_i3{end+1,1} = '0.29';
        end
    elseif strcmp(B_i1{1,1},'����')  == 1
        W_i3{end+1,1} = '0.29';
    end
end

W_i4 = {};
for j = 1:size(U_i1,1)
    for i= 1:size(B_i3,1)
        if str2num(char(W_i1(j,1))) <= str2num(char(B_i3(i,1)))
            W_i4{end+1,1} = num2str( str2num(char(B_i4(i,1)))*0.001/2  );
            break
        elseif str2num(char(B_i3(i,1))) <= str2num(char(W_i1(j,1))) && str2num(char(W_i1(j,1))) <= str2num(char(B_i3(i+1,1)))
            W_i4{end+1,1} = num2str( str2num(char(B_i4(i+1,1)))*0.001/2  );
            break
        end
    end
end


W_a1 = U_i1(W_a,1)
W_i5 = {};
for j = 1:size(U_i1,1)
    for i = 1:size(B_i3,1)
        if str2num(char(W_i1(j,1))) < str2num(char(W_a1(1,1)))
            W_i5{end+1,1} = '0';
            break
        elseif str2num(char(W_i1(j,1))) >= str2num(char(W_a1(1,1)))
            W_i5{end+1,1} = num2str( str2num(char(W_i1(j,1))) - str2num(char(W_a1(1,1)))  );
            break
        end
    end
end

W_i6 = cellstr(strjust(num2str( 60.* str2num(char(M_i24)) .* str2num(char(W_i5)) ./ str2num(char(M_i25)) ),'left'));

W_i7 = {};
for j = 1:size(U_i1,1)
    for i=1:size(D_i3,1)
        if str2num(char(W_i1(i,1))) <= str2num(char(D_i3(i,1)))
            W_i7{end+1,1} = num2str( pi .* str2num(char(W_i6(j,1))) .* str2num(char(M_i23(i,1)))  );
            break
        elseif str2num(char(D_i3(i,1))) <= str2num(char(W_i1(i,1))) && str2num(char(W_i1(i,1))) <= str2num(char(D_i3(i+1,1)))
            W_i7{end+1,1} =num2str(  pi .* str2num(char(W_i6(j+1,1))) .* str2num(char(M_i23(i,1)))  );
            break
        end
    end
end

W_i8 = {'0'};
for j = 2:size(U_i1,1)
    for i=1:size(D_i3,1)
        if str2num(char(W_i1(j,1))) <= str2num(char(D_i3(i,1)))
            W_i8{end+1,1} = num2str( str2num(char(W_i8(j-1,1))) + str2num(char(M_i22(i,1)))*(10^(-12)) *...
                str2num(char(W_i3(j,1))) * abs(str2num(char(W_i2(j,1)))*1000)...
                *(   str2num(char(W_i7(j,1))) - str2num(char(W_i7(j-1,1)))   )   );
            break
        end
    end
end
% W_i8 = ['0';W_i8];

%��������
%AA��W_i8    rr��I_i2*0.001   RR��W_i4
W_i9={};
for i = 1:size(U_i1,1)
    for j = 1:size(D_i4,1)
        if str2num(char(I_i2(j+1,1))) <= (str2num(char(D_i4(j,1)))/2)
            RR = str2num(char(W_i4(i,1)));
            AA = str2num(char(W_i8(i,1)));
            rr = str2num(char(I_i2(j,1))) * 0.001;
            break
        end
    end
    format long
    W_i9{end+1,1}= num2str(roundn(double(   get_metreK(RR,AA,rr)   ),-16),16);
end

W_i10 = {};
for j = 1:size(U_i1,1)
    for i=1:size(D_i3,1)
        if str2num(char(W_i1(i,1))) <= str2num(char(D_i3(i,1)))
            W_i10{end+1,1} = num2str( (str2num(char(D_i4(i,1)))-str2num(char(D_i5(i,1))))/2   );
            break
        elseif str2num(char(D_i3(i,1))) <= str2num(char(W_i1(i,1))) && str2num(char(W_i1(i,1))) <= str2num(char(D_i3(i+1,1)))
            W_i10{end+1,1} = num2str( (str2num(char(D_i4(i,1)))-str2num(char(D_i5(i,1))))/2   );
            break
        end
    end
end

W_i11 = {};
for j = 1:size(U_i1,1)
    for i=1:size(D_i3,1)
        if str2num(char(W_i1(j,1))) <= str2num(char(D_i3(i,1)))
            W_i11{end+1,1} = num2str( str2num(char(D_i4(i,1)))/2 + str2num(char(W_i9(j,1)))*1000 - str2num(char(W_i4(j,1)))*1000   );
            break
        elseif str2num(char(D_i3(i,1))) <= str2num(char(W_i1(i,1))) && str2num(char(W_i1(i,1))) <= str2num(char(D_i3(i+1,1)))
            W_i11{end+1,1} = num2str( str2num(char(D_i4(i,1)))/2 + str2num(char(W_i9(j,1)))*1000 - str2num(char(W_i4(j,1)))*1000   );
            break
        end
    end
end

W_i12 = {};
for i = 1:size(U_i1,1)
    W_i12{end+1,1} = num2str( str2num(char(W_i10(i,1))) - str2num(char(W_i11(i,1)))  );
end

W_i13 = {};
for i = 1:size(U_i1,1)
    W_i13{end+1,1} = num2str( 17.27 * str2num(char(W_i12(i,1))) - 81.86   );
end

W_i14 = {};
for i = 1:size(U_i1,1)
    W_i14{end+1,1} = num2str( ( str2num(char(W_i13(1,1))) - str2num(char(W_i13(i,1))) ) / str2num(char(W_i13(1,1))) * 100   );
end

%����ĥ����ʣ�࿹��ǿ�ȣ�MPa��  -42.11*(W_i,12)^2+1015.29*(W_i,12)-2802.67
W_i15 = {};
for i = 1:size(U_i1,1)
    W_i15{end+1,1} = num2str( -42.11*((str2num(char(W_i12(i,1)))).^2) + 1015.29 * str2num(char(W_i12(i,1))) - 2802.67  );
end

W_i16 = {};
for i = 1:size(U_i1,1)
    W_i16{end+1,1} = num2str( ( str2num(char(W_i15(1,1))) - str2num(char(W_i15(i,1))) ) / str2num(char(W_i15(1,1))) * 100   );
end

%��ʾ�����������������--------------------------------------------------------------
result_Data = [W_i1,W_i2,W_i3,W_i4,W_i5,W_i6,W_i7,W_i8,W_i9,W_i10,W_i11,W_i12,W_i13,W_i14,W_i15,W_i16];
set(handles.y_6uitable2,'Data',result_Data)
result_M = [M_i20,M_i21,M_i22,M_i23];
pass_Data{13} = result_Data;    %���ؽ������
pass_Data{18} = result_M;
pass_Data{20} = get(handles.y_6edit2,'String');
pass_Data{27} = M_i24;

%�ײ����ݼ��㼰��ʾ--------------------------------------------------------------
bottom1 = [W_a1,'~',W_i1(end)];
bottom2 = num2str( max(str2num(char(W_i11)))  );
bottom3 = num2str( min(str2num(char(W_i13)))  );
bottom4 = num2str( max(str2num(char(W_i14)))  );
bottom5 = num2str( min(str2num(char(W_i15)))  );
bottom6 = num2str( max(str2num(char(W_i16)))  );

set(handles.y_6text6,'String',cell2mat(bottom1))
set(handles.y_6text8,'String',bottom2)
set(handles.y_6text10,'String',bottom3)
set(handles.y_6text12,'String',bottom4)
set(handles.y_6text14,'String',bottom5)
set(handles.y_6text16,'String',bottom6)

%��ͼ----------------------------------------------------------------------
delete(fig6_1)
delete(fig6_2)
delete(fig6_3)
delete(fig6_4)
%��һ��ͼ
fig6_1 = figure(61);
set(fig6_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig6_1,'menubar','none');
set(fig6_1,'NumberTitle', 'off', 'Name', 'ĥ�����');
hold on;
y_fig_1 = str2num(char(W_i1));
x_fig_1 = str2num(char(W_i11)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹���ĥ����ȣ�mm��','FontSize',10);
ylabel('����/m','FontSize',10);
grid on;
hold off;
%�ڶ���ͼ
fig6_2 = figure(62);
set(fig6_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig6_2,'menubar','none');
set(fig6_2,'NumberTitle', 'off', 'Name', '����ǿ��');
hold on;
y_fig_2 = str2num(char(W_i1));
x_fig_2 = str2num(char(W_i13)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_2,y_fig_2,'-b','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹�������ʣ�࿹��ǿ�ȣ�kN��','FontSize',10);
ylabel('����/m','FontSize',10);
grid on;
hold off;
%������ͼ
fig6_3 = figure(63);
set(fig6_3,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig6_3,'menubar','none');
set(fig6_3,'NumberTitle', 'off', 'Name', '����ǿ��');
hold on;
y_fig_3 = str2num(char(W_i1));
x_fig_3 = str2num(char(W_i15)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_3,y_fig_3,'-b','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹�������ʣ�࿹��ǿ�ȣ�kN��','FontSize',10);
ylabel('����/m','FontSize',10);
grid on;
hold off;
%���ķ�ͼ
fig6_4 = figure(64);
set(fig6_4,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig6_4,'menubar','none');
set(fig6_4,'NumberTitle', 'off', 'Name', 'ǿ�Ƚ��Ͱٷֱ�');
hold on;
y_fig_4 = str2num(char(W_i1));
x_fig_4_1 = str2num(char(W_i14)); 
x_fig_4_2 = str2num(char(W_i16)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
plot(x_fig_4_1,y_fig_4,'-b','LineWidth',1.5)
plot(x_fig_4_2,y_fig_4,'-r','LineWidth',1.5)
xlabel('��������ʱ��ͬ������洦�׹�������ʣ�࿹��ǿ�ȣ�kN��','FontSize',10);
ylabel('����/m','FontSize',10);
legend({'����ǿ�Ƚ��Ͱٷֱ�','����ǿ�Ƚ��Ͱٷֱ�'},'Orientation','horizontal','Location','southoutside')
grid on;
hold off;
catch
    delete(h);
    msgbox('���������Ƿ���ȷ��', '����','error');
end
%---------------
delete(h);  %ɾ���Ի���

% --- Executes on button press in y_6pushbutton2.
function y_6pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to y_6pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M_i20 M_i21 M_i22 M_i23 fig6_1 fig6_2 fig6_3 fig6_4
if size(get(handles.y_6uitable2,'Data'),1)==0
    msgbox('û�м�����!','ȷ��','error');
else
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
            Selection.Text = '�ߡ�ֱ��ĥ��ȱ�����ۼ�ʣ��ǿ�ȷ���';
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
            DTI6_1 = Document.Tables.Item(1); % ��DTI = Tables;
            DTI6_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
            DTI6_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
            DTI6_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
            DTI6_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI6_1.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
            DTI6_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
            % ָ������Ԫ������
            DTI6_1.Cell(1,1).Range.Text = '�꾮�׹ּܸ�';
            DTI6_1.Cell(1,2).Range.Text = '�׹�����ǿ�ȣ�MPa��';
            DTI6_1.Cell(1,3).Range.Text = '�׹�ĥ��ϵ��(��10^(-12)Pa^(-1))';
            DTI6_1.Cell(1,4).Range.Text = '�꾮�׹��⾶��m��';
            DTI6_1.Cell(1,5).Range.Text = 'ת�٣�r/min��';
            DTI6_1.Cell(1,6).Range.Text = '��е���٣�m/h��';

            %��д����
            DTI6_1.Cell(2,1).Range.Text = char(M_i20);
            DTI6_1.Cell(2,2).Range.Text = char(M_i21);
            DTI6_1.Cell(2,3).Range.Text = char(M_i22);
            DTI6_1.Cell(2,4).Range.Text = char(M_i23);
            DTI6_1.Cell(2,5).Range.Text = char(get(handles.y_6edit1,'String'));
            DTI6_1.Cell(2,6).Range.Text = char(get(handles.y_6edit2,'String'));

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

            %�������ݱ��-------------------------------------------------------------------------------------------------------------------
            Selection.Font.Size = 11;   %���ñ���������СΪ11
            Tables = Document.Tables.Add(Selection.Range,6,2);    % 7 �� 6��
            DTI6_2 = Document.Tables.Item(2); % ��DTI = Tables;
            DTI6_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
            DTI6_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
            DTI6_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
            DTI6_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI6_2.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
            DTI6_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
            % ָ������Ԫ������-------------------------------------------------------------------------------------------------------------
            DTI6_2.Cell(1,1).Range.Text = '�׹��꾮ĥ�𾮶Σ�m��';
            DTI6_2.Cell(2,1).Range.Text = '�׹��꾮�������ĥ����ȣ�mm��';
            DTI6_2.Cell(3,1).Range.Text = '����ĥ����ʣ�࿹��ǿ�ȣ�MPa��';
            DTI6_2.Cell(4,1).Range.Text = '����ǿ�Ƚ��Ͱٷֱȣ�%��';
            DTI6_2.Cell(5,1).Range.Text = '����ĥ����ʣ�࿹��ǿ�ȣ�kN��';
            DTI6_2.Cell(6,1).Range.Text = '����ǿ�Ƚ��Ͱٷֱȣ�%��';
            %��д����----------------------------------------------------------------------------------------------------------------------
            DTI6_2.Cell(1,2).Range.Text = char(get(handles.y_6text6,'String'));  
            DTI6_2.Cell(2,2).Range.Text = char(get(handles.y_6text8,'String'));    
            DTI6_2.Cell(3,2).Range.Text = char(get(handles.y_6text10,'String')); 
            DTI6_2.Cell(4,2).Range.Text = char(get(handles.y_6text12,'String'));
            DTI6_2.Cell(5,2).Range.Text = char(get(handles.y_6text14,'String')); 
            DTI6_2.Cell(6,2).Range.Text = char(get(handles.y_6text16,'String')); 
            %����ͼƬ----------------------------------------------------------------------------------------------------------------------
             Selection.Start = Content.end; % �趨���λ��Ϊ���
                Selection.TypeParagraph;    %�����µĿն���

                hObject_fig1 = findobj(fig6_1);
                hObject_fig1 = hObject_fig1(1,1);

                hObject_fig2 = findobj(fig6_2);
                hObject_fig2 = hObject_fig2(1,1);

                hObject_fig3 = findobj(fig6_3);
                hObject_fig3 = hObject_fig3(1,1);

                hObject_fig4 = findobj(fig6_4);
                hObject_fig4 = hObject_fig4(1,1);

                hgexport(hObject_fig1, '-clipboard');
                Selection.Range.Paragraphs.Item(1).Range.Paste;

                Selection.Start = Content.end; % �趨���λ��Ϊ���
                Selection.TypeParagraph;    %�����µĿն���       
                hgexport(hObject_fig2, '-clipboard');    %��ͼ�θ��Ƶ�Microsoft? Windowsճ����
                Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %��ͼ��ճ������ǰ�ĵ���

                Selection.Start = Content.end; % �趨���λ��Ϊ���
                Selection.TypeParagraph;    %�����µĿն���   
                hgexport(hObject_fig3, '-clipboard'); 
                Selection.Range.Paragraphs.Item(1).Range.Paste;

                Selection.Start = Content.end; % �趨���λ��Ϊ���
                Selection.TypeParagraph;    %�����µĿն���   
                hgexport(hObject_fig4, '-clipboard'); 
                Selection.Range.Paragraphs.Item(1).Range.Paste;

            Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % ������ͼ��ʽΪҳ��
            Document.Save; % �����ĵ�
    %             Document.Close; % �ر��ĵ�
    %             Word.Quit; % �˳�word������
    end
end


% --- Executes on button press in y_6pushbutton3.
function y_6pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to y_6pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data U_i1 W_a fig6_1 fig6_2 fig6_3 fig6_4
%���֮ǰ��������ݣ������������-------------------------------------
set(handles.y_6edit2,'String',pass_Data{20})
mainBack_Data = pass_Data{13};
if size(mainBack_Data,1)~=0 && size(mainBack_Data,2)~=0
    W_a1 = U_i1(W_a,1);
    W_i1 = mainBack_Data(:,1);
    W_i11 = mainBack_Data(:,11);
    W_i13 = mainBack_Data(:,13);
    W_i14 = mainBack_Data(:,14);
    W_i15 = mainBack_Data(:,15);
    W_i16 = mainBack_Data(:,16);
    %�ײ����ݼ��㼰��ʾ--------------------------------------------------------------
    bottom1 = [W_a1,'~',W_i1(end)];
    bottom2 = num2str( max(str2num(char(W_i11)))  );
    bottom3 = num2str( min(str2num(char(W_i13)))  );
    bottom4 = num2str( max(str2num(char(W_i14)))  );
    bottom5 = num2str( min(str2num(char(W_i15)))  );
    bottom6 = num2str( max(str2num(char(W_i16)))  );

    set(handles.y_6text6,'String',cell2mat(bottom1))
    set(handles.y_6text8,'String',bottom2)
    set(handles.y_6text10,'String',bottom3)
    set(handles.y_6text12,'String',bottom4)
    set(handles.y_6text14,'String',bottom5)
    set(handles.y_6text16,'String',bottom6)
    set(handles.y_6uitable2,'Data',mainBack_Data)
    %��ͼ--------------------
    %��һ��ͼ
    fig6_1 = figure(61);
    set(fig6_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig6_1,'menubar','none');
    set(fig6_1,'NumberTitle', 'off', 'Name', 'ĥ�����');
    hold on;
    y_fig_1 = str2num(char(W_i1));
    x_fig_1 = str2num(char(W_i11)); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
    plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
    xlabel('��������ʱ��ͬ������洦�׹���ĥ����ȣ�mm��','FontSize',10);
    ylabel('����/m','FontSize',10);
    grid on;
    hold off;
    %�ڶ���ͼ
    fig6_2 = figure(62);
    set(fig6_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig6_2,'menubar','none');
    set(fig6_2,'NumberTitle', 'off', 'Name', '����ǿ��');
    hold on;
    y_fig_2 = str2num(char(W_i1));
    x_fig_2 = str2num(char(W_i13)); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
    plot(x_fig_2,y_fig_2,'-b','LineWidth',1.5)
    xlabel('��������ʱ��ͬ������洦�׹�������ʣ�࿹��ǿ�ȣ�kN��','FontSize',10);
    ylabel('����/m','FontSize',10);
    grid on;
    hold off;
    %������ͼ
    fig6_3 = figure(63);
    set(fig6_3,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig6_3,'menubar','none');
    set(fig6_3,'NumberTitle', 'off', 'Name', '����ǿ��');
    hold on;
    y_fig_3 = str2num(char(W_i1));
    x_fig_3 = str2num(char(W_i15)); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
    plot(x_fig_3,y_fig_3,'-b','LineWidth',1.5)
    xlabel('��������ʱ��ͬ������洦�׹�������ʣ�࿹��ǿ�ȣ�kN��','FontSize',10);
    ylabel('����/m','FontSize',10);
    grid on;
    hold off;
    %���ķ�ͼ
    fig6_4 = figure(64);
    set(fig6_4,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig6_4,'menubar','none');
    set(fig6_4,'NumberTitle', 'off', 'Name', 'ǿ�Ƚ��Ͱٷֱ�');
    hold on;
    y_fig_4 = str2num(char(W_i1));
    x_fig_4_1 = str2num(char(W_i14)); 
    x_fig_4_2 = str2num(char(W_i16)); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
    plot(x_fig_4_1,y_fig_4,'-b','LineWidth',1.5)
    plot(x_fig_4_2,y_fig_4,'-r','LineWidth',1.5)
    xlabel('��������ʱ��ͬ������洦�׹�������ʣ�࿹��ǿ�ȣ�kN��','FontSize',10);
    ylabel('����/m','FontSize',10);
    legend({'����ǿ�Ƚ��Ͱٷֱ�','����ǿ�Ƚ��Ͱٷֱ�'},'Orientation','horizontal','Location','southoutside')
    grid on;
    hold off;
end

% --- Executes during object creation, after setting all properties.
function y_6pushbutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_6pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%�ж�֮ǰ�Ƿ��������ݣ�����ʾ�ð�ť------------------------------------------
global pass_Data
mainBack_Data = pass_Data{13};
set(hObject,'Visible','off')
if size(mainBack_Data,1)~=0 && size(mainBack_Data,2)~=0
    set(hObject,'Visible','on')
end

function y_6text6_CreateFcn(hObject, eventdata, handles)