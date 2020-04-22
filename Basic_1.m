%���۹�� A
function varargout = Basic_1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Basic_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Basic_1_OutputFcn, ...
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

function Basic_1_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','���۹������');

global pass_Data
if isempty(pass_Data{1}) ~=0
    pass_Data = varargin{1};
    set(handles.P_Basic_1,'Data',pass_Data) 
else
    set(handles.P_Basic_1,'Data',pass_Data{1}) 
end

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Basic_1_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
% �����ݴ� set_pass_Data_value ������� main �к󣬽����ڹر�
delete(handles.figure1);

%����
function P_B_ReBut_1_Callback(hObject, eventdata, handles)
clear P_B_Chart;
P_B_Chart = [{'0' '0' '0' '0'};{' ','0','0',' '}]
set(handles.P_Basic_1,'Data',P_B_Chart);

%ȷ��------------------------------------------------------------------------------------------------------------------------------
function P_B_ConBut_1_Callback(hObject, eventdata, handles)
global pass_Data
B_1 = get(handles.P_Basic_1,'Data');
if isequal(pass_Data{1},B_1)
    handles.output = B_1;% �����ݷ��͵� handles.output �С�
else
    try
        handles.output = B_1;% �����ݷ��͵� handles.output �С�
        pass_Data(6:end) = [];
    catch
    end
end




%������ OpeningFcn ʹ�� uiwait��ʹ����ȴ�
%������ uiresume ʱ����������У�ִ�� OutputFcn ���� chooseGUI ���޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1);   %����ִ�б�uiwait�жϵĳ���

function P_Basic_1_CellSelectionCallback(hObject, eventdata, handles)
global row;
global col;
index=eventdata.Indices;
try
    row=index(1);
    col=index(2);
catch
end

function P_Basic_1_CellEditCallback(hObject, eventdata, handles)
clear P_B_Chart;
global row;
P_B_Chart=get(hObject,'Data');
hObject.Data(row,4) = P_B_Chart(row,1);

%"����Excel"��ť
function P_B_ImBut_1_Callback(hObject, eventdata, handles)
h=dialog('name','��ʾ','position',[500 300 600 350]);
uicontrol('parent',h,'style','text','string','���۹켣���Ϊ1m����������ʾ����ͼ','position',[140 280 350 40],'fontsize',14);
h2 = uicontrol('parent',h,'style','pushbutton','position',...
    [250 30 80 40],'string','ȷ��','fontsize',12);
axes('parent',h)
imshow('tip.png')
set(h2,'Callback', @(x,y)fun_adaptiveThreshold(handles)); % ʹ�þ�����ûص�����



function fun_adaptiveThreshold(handles) 
delete(gcbf);
    clear file;
    clear path;
    clear file_path;
    [file,path] = uigetfile('*.xlsx'); %����ļ�
    try
        file_suffix1 = file(end-5:end);
        file_suffix = file_suffix1(strfind(file_suffix1,'.'):end) %�ж��ļ�����
        clear file_suffix1;
        file_path = strcat(path,file)
        if(file_suffix == '.xlsx' | file_suffix == '.xls') 
            xls_data=xlsread(file_path);    %��ȡExcel�ļ�    
            %����б�ͷ���������ͷ����----------------------���������������
            for i=1:2   %��������������ͷΪ2�У�ѭ�����2��
                if ~isnan(str2double(xls_data(1,1))) || ~isnan(str2double(xls_data(1,2))) || ...
                        ~isnan(str2double(xls_data(1,3))) || ~isnan(str2double(xls_data(1,4)))
                    xls_data(1,:) = [];
                end
            end
            %--------------------------------------------------
            col1 = xls_data(:,1);
            col2 = xls_data(:,2);
            col3 = xls_data(:,3);
            P_tem1 = xls_data(:,4);
            xls_data = [col1,col2,col3,P_tem1];
            xls_data1 = {};
            for i=1:size(xls_data,1)
                for j = 1:size(xls_data,2)
                    xls_data1{i,j}=num2str(xls_data(i,j));
                end    
            end
            set(handles.P_Basic_1,'Data',xls_data1);
        end
        catch
    end

%������
function P_B_ImRBut_1_Callback(hObject, eventdata, handles)
clear newArray oldData newData;
global p_row_1
%�������
% P_Basic_1
oldData = get(handles.P_Basic_1,'Data');%��ȡ������ݾ��� 
if (p_row_1 ~= 1&p_row_1 ~= size(oldData,1) )
    newData_front = oldData(1:p_row_1-1,:);  
    newData_back = oldData(p_row_1:end,:);
    newArray = {'','','',''}; 
    newData = [newData_front;newArray;newData_back];
    set(handles.P_Basic_1,'Data',newData);  %��ʾ�������
elseif (p_row_1 == 1) 
    newArray = {'', '', '',''}; 
    newData = [newArray;oldData]
    set(handles.P_Basic_1,'Data',newData);  %��ʾ�������
elseif (p_row_1 == size(oldData,1))
    [indx tf]=listdlg('ListString',{'ǰ��һ��','���һ��'},...
    'Name','ѡ��һ��','OKString','ȷ��','CancelString','ȡ��',...
    'SelectionMode','single','ListSize',[180 80]);
    if (indx == 1)
        newData_front = oldData(1:p_row_1-1,:);  
        newData_back = oldData(p_row_1,:);
        newArray = {'','','',''}; 
        newData = [newData_front;newArray;newData_back];
        set(handles.P_Basic_1,'Data',newData);  %��ʾ�������
    elseif(indx == 2)
        newArray = {'','','',''}; 
        new_Data = [oldData;newArray];
        set(handles.P_Basic_1,'Data',new_Data);  %��ʾ�������
    end    
end


%ɾ����
function P_B_DelBut_1_Callback(hObject, eventdata, handles)
clear newData;
global row;
if(row>0)
    newData = get(handles.P_Basic_1,'Data');  %��ȡ������ݾ���
%     newData = newData{1,1};
    newData(row,:) = [];   %ɾ��ѡ�е�ĳ������
    set(handles.P_Basic_1,'Data',newData);  %��ʾ�������
else
    msgbox('����ѡ��Ҫɾ�����У�','ȷ��','error');
end


% --- Executes when selected cell(s) is changed in uitable2.
function uitable2_CellSelectionCallback(hObject, eventdata, handles)
global p_row_1 p_col_1;
%global c_Array cell_Grade cell_Diameter Dia_Value Wei_Value Gra_Value;
p_row_1=eventdata.Indices(1);
p_col_1=eventdata.Indices(2);
