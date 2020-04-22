%������� D
function varargout = Basic_4(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Basic_4_OpeningFcn, ...
                   'gui_OutputFcn',  @Basic_4_OutputFcn, ...
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

function Basic_4_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center')
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','��ҵ�������');

global pass_Data
if isempty(pass_Data{3}) ~=0
    pass_Data = varargin{1};
    set(handles.y_4uitable1,'Data',pass_Data) 
else
    set(handles.y_4uitable1,'Data',pass_Data{3}) 
end

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Basic_4_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;
delete(handles.figure1);


function y_4uitable1_CellSelectionCallback(hObject, eventdata, handles)
clear cell_Grade cell_Diameter Dia_Value Wei_Value Gra_Value;
global y_row_4 y_col_4;
%global c_Array cell_Grade cell_Diameter Dia_Value Wei_Value Gra_Value;
try
    y_row_4=eventdata.Indices(1);
    y_col_4=eventdata.Indices(2);
    y_row = y_row_4;
    y_col = y_col_4;
    if(y_col ~= 1 && y_col ~= 2 && y_col ~= 3 && y_col ~= 8)
        D1 = hObject.Data(y_row,1);
        D4 = hObject.Data(y_row,4);
        D5 = hObject.Data(y_row,5);
        D6 = hObject.Data(y_row,6);
        D7 = hObject.Data(y_row,7);
        put_in_in = {D1 D4 D5 D6 D7};
        pass_Data = chooseGUI(put_in_in);    %����chooseGUI.m�ļ�

        pass_Data2 = pass_Data(2)
        pass_Data3 = pass_Data(3)
        pass_Data4 = pass_Data(4)
        pass_Data5 = pass_Data(5)
        pass_Data5 = cellstr(pass_Data5{1})

        %�������
    %     hObject.Data(y_row_4,1) = pass_Data1;
        hObject.Data(y_row,4) = pass_Data2;
        hObject.Data(y_row,5) = pass_Data3;
        hObject.Data(y_row,6) = pass_Data4;
        hObject.Data(y_row,7) = pass_Data5;
    elseif(y_col == 1)
        [indx tf]=listdlg('ListString',{'�׹�','����'},...
        'Name','ѡ��һ��','OKString','ȷ��','CancelString','ȡ��',...
        'SelectionMode','single','ListSize',[200 100]);
        if (indx == 1)
            hObject.Data(y_row,y_col) = {'�׹�'};
            %�����׹����ݿ��еĲ���
            D1 = hObject.Data(y_row,1);
            D4 = hObject.Data(y_row,4);
            D5 = hObject.Data(y_row,5);
            D6 = hObject.Data(y_row,6);
            D7 = hObject.Data(y_row,7);
            put_in_in = {D1 D4 D5 D6 D7};
            pass_Data = chooseGUI(put_in_in);    %����chooseGUI.m�ļ�

            pass_Data2 = pass_Data(2)
            pass_Data3 = pass_Data(3)
            pass_Data4 = pass_Data(4)
            pass_Data5 = pass_Data(5)
            pass_Data5 = cellstr(pass_Data5{1})

            %�������
    %         hObject.Data(y_row_4,1) = pass_Data1;
            hObject.Data(y_row,4) = pass_Data2;
            hObject.Data(y_row,5) = pass_Data3;
            hObject.Data(y_row,6) = pass_Data4;
            hObject.Data(y_row,7) = pass_Data5;
        elseif(indx == 2)
            hObject.Data(y_row,y_col) = {'����'};
            %�����׹����ݿ��еĲ���
            D1 = hObject.Data(y_row,1);
            D4 = hObject.Data(y_row,4);
            D5 = hObject.Data(y_row,5);
            D6 = hObject.Data(y_row,6);
            D7 = hObject.Data(y_row,7);
            put_in_in = {D1 D4 D5 D6 D7};
            pass_Data = chooseGUI(put_in_in);    %����chooseGUI.m�ļ�

            pass_Data2 = pass_Data(2)
            pass_Data3 = pass_Data(3)
            pass_Data4 = pass_Data(4)
            pass_Data5 = pass_Data(5)
            pass_Data5 = cellstr(pass_Data5{1})

            %�������
    %         hObject.Data(y_row_4,1) = pass_Data1;
            hObject.Data(y_row,4) = pass_Data2;
            hObject.Data(y_row,5) = pass_Data3;
            hObject.Data(y_row,6) = pass_Data4;
            hObject.Data(y_row,7) = pass_Data5;
        end
    elseif(y_col == 8)
        [indx tf]=listdlg('ListString',{'STC','LTC','BTC'},...
        'Name','ѡ��һ��','OKString','ȷ��','CancelString','ȡ��',...
        'SelectionMode','single','ListSize',[200 100]);
        if (indx == 1)
            hObject.Data(y_row,y_col) = {'STC'};
        elseif(indx == 2)
            hObject.Data(y_row,y_col) = {'LTC'};
        elseif(indx == 3)
            hObject.Data(y_row,y_col) = {'BTC'};
        end    
    end
catch
end


% --- Executes when entered data in editable cell(s) in y_4uitable1.
function y_4uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to y_4uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
clear d_Moren a b c logical;
global y_row_4 y_col_4;
d_Moren=get(hObject,'Data');
logical = 1;    %logicalΪ1��ʾ����������д����
for i=1:y_row_4 %�������������������У���鳤���Ƿ���д����
    if size(cell2mat(d_Moren(i,2)),2)==0  %��2�в�Ϊ��
        logical = 0;
        hObject.Data(y_row_4,y_col_4) = cellstr('');
        errordlg('���鳤���Ƿ���д������','����','on');
        break
    end
end
if logical == 1
    if (y_row_4 == 1&& y_col_4==2)    %�ж��Ƿ��ǵ�һ��
        hObject.Data(y_row_4,y_col_4+1) = hObject.Data(y_row_4,y_col_4);
    end
    for j=2:size(d_Moren,1) %�ӵ�2�п�ʼ�����������У����¼���ÿһ�е����
        a=str2num(cell2mat(hObject.Data(j-1,3)));
        b=str2num(cell2mat(hObject.Data(j,2)));
        c={num2str(b+a)};
        hObject.Data(j,3) = c;
    end
end


% --- Executes on button press in y_4button1.
function y_4button1_Callback(hObject, eventdata, handles)
% hObject    handle to y_4button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newArray oldData newData;
global y_row_4;
%�������
oldData = get(handles.y_4uitable1,'Data');%��ȡ������ݾ��� 
if (y_row_4 ~= 1&y_row_4 ~= size(oldData,1) )
    newData_front = oldData(1:y_row_4,:);  
    newData_back = oldData(y_row_4+1:end,:);
    newArray = {'', '', '','','','','',''}; 
    newData = [newData_front;newArray;newData_back];
    set(handles.y_4uitable1,'Data',newData);  %��ʾ�������
elseif (y_row_4 == 1) 
    newArray = {'', '', '','','','','',''}; 
    if size(oldData,1)==1
        newData = [oldData(1,:);newArray];
    else
        newData = [oldData(1,:);newArray;oldData(2:end,:)];
    end
    set(handles.y_4uitable1,'Data',newData);  %��ʾ�������
elseif (y_row_4 == size(oldData,1))
    [indx tf]=listdlg('ListString',{'ǰ��һ��','���һ��'},...
    'Name','ѡ��һ��','OKString','ȷ��','CancelString','ȡ��',...
    'SelectionMode','single','ListSize',[180 80]);
    if (indx == 1)
        newData_front = oldData(1:y_row_4-1,:);  
        newData_back = oldData(y_row_4,:);
        newArray = {'', '', '','','','','',''}; 
        newData = [newData_front;newArray;newData_back];
        set(handles.y_4uitable1,'Data',newData);  %��ʾ�������
    elseif(indx == 2)
        newArray = {'', '', '','','','','',''}; 
        new_Data = [oldData;newArray];
        set(handles.y_4uitable1,'Data',new_Data);  %��ʾ�������
    end    
end

%ȷ��--------------------------------------------------------------------------------------------------------------------------
function y_4button2_Callback(hObject, eventdata, handles)
global pass_Data
B_4 = get(handles.y_4uitable1,'Data');
if isequal(pass_Data{1},B_4)
    handles.output = B_4;% �����ݷ��͵� handles.output �С�
else
    try
        handles.output = B_4;% �����ݷ��͵� handles.output �С�
        pass_Data(6:end) = [];
    catch
    end
end
%��access���ݿ�---------------------------------------------------------------------------------------------------------------------
% connA=database('YouDB','','') ;
% colnames={'D_i1','D_i2','D_i3','D_i4','D_i5','D_i6','D_i7','D_i8'};
% execdata1=B_4;
% insert(connA,'D',colnames,execdata1);

handles.output = B_4;% �����ݷ��͵� handles.output �С�
%������ OpeningFcn ʹ�� uiwait��ʹ����ȴ�
%������ uiresume ʱ����������У�ִ�� OutputFcn ���� chooseGUI ���޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1)   %����ִ�б�uiwait�жϵĳ���

% --- Executes on button press in y_4button3.
function y_4button3_Callback(hObject, eventdata, handles)
% hObject    handle to y_4button3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData;
global y_row_4;
if(y_row_4>0)
    newData = get(handles.y_4uitable1,'Data');  %��ȡ������ݾ���
%     newData = newData{1,1};
    newData(y_row_4,:) = [];   %ɾ��ѡ�е�ĳ������
    set(handles.y_4uitable1,'Data',newData);  %��ʾ�������
else
    msgbox('����ѡ��Ҫɾ�����У�','ȷ��','error');
end

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData;
global y_row_4;
if(y_row_4>0)
    newData = get(handles.y_4uitable1,'Data');  %��ȡ������ݾ���
%     newData = newData{1,1};
    newData(y_row_4,:) = [];   %ɾ��ѡ�е�ĳ������
    set(handles.y_4uitable1,'Data',newData);  %��ʾ�������
else
    msgbox('����ѡ��Ҫɾ�����У�','ȷ��','error');
end
