%����ṹ B
function varargout = Basic_2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Basic_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Basic_2_OutputFcn, ...
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

function Basic_2_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center')
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','����ṹ����');

global pass_Data
if isempty(pass_Data{2}) ~=0
    pass_Data{2} = varargin{1};
    set(handles.P_Basic_2,'Data',pass_Data{2}) 
else
    set(handles.P_Basic_2,'Data',pass_Data{2}) 
end

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Basic_2_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;
% �����ݴ� set_pass_Data_value ������� main �к󣬽����ڹر�
delete(handles.figure1);

%����
function P_B_ReBut_2_Callback(hObject, eventdata, handles)
clear P_B_Chart;
P_B_Chart = [{'','','','',''}];
set(handles.P_Basic_2,'Data',P_B_Chart);

%ȷ��-----------------------------------------------------------------------------------------------------------------------
function P_B_ConBut_2_Callback(hObject, eventdata, handles)
global pass_Data
B_2 = get(handles.P_Basic_2,'Data');
if isequal(pass_Data{1},B_2)
    handles.output = B_2;% �����ݷ��͵� handles.output �С�
else
    try
        handles.output = B_2;% �����ݷ��͵� handles.output �С�
        pass_Data(6:end) = [];
    catch
    end
end


%��access���ݿ�---------------------------------------------------------------------------------------------------------------------
% connA=database('YouDB','','') ;
% colnames={'B_i1','B_i2','B_i3','B_i4','B_i5'};
% execdata1=B_2;
% insert(connA,'B',colnames,execdata1);

handles.output = B_2;% �����ݷ��͵� handles.output �С�
%������ OpeningFcn ʹ�� uiwait��ʹ����ȴ�
%������ uiresume ʱ����������У�ִ�� OutputFcn ���� chooseGUI ���޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1)   %����ִ�б�uiwait�жϵĳ���


function P_Basic_2_CellSelectionCallback(hObject, eventdata, handles)
global row3;
global col3;

global row2;
global col2;
try
    index=eventdata.Indices;
    row2=index(1)
    col2=index(2);

    row3=eventdata.Indices(1);
    col3=eventdata.Indices(2);
    if(col3 == 1)
        [indx tf]=listdlg('ListString',{'�׹�','����'},...
        'Name','ѡ��һ��','OKString','ȷ��','CancelString','ȡ��',...
        'SelectionMode','single','ListSize',[180 80]);
        if (indx == 1)
            hObject.Data(row3,col3) = {'�׹�'};
            hObject.Data(row3,5) = {'0.24'}
        elseif(indx == 2)
            hObject.Data(row3,col3) = {'����'};
            hObject.Data(row3,5) = {'0.29'}
        end    
    end
catch
end

function P_Basic_2_CellEditCallback(hObject, eventdata, handles)
clear b_Moren a b c logical i j;
global row3 col3;
b_Moren=get(hObject,'Data');
logical = 1;    %logicalΪ1��ʾ����������д����
for i=1:row3 %�������������������У���鳤���Ƿ���д����
    if size(cell2mat(b_Moren(i,2)),2)==0 && size(cell2mat(b_Moren(i,3)),2)~=0  %��2�в�Ϊ��
        logical = 0;
        hObject.Data(row3,3) = cellstr('');
        errordlg('���鳤���Ƿ���д������','����','on');
        break
    end
end
if logical == 1
    if (row3 == 1&& col3==2)    %�ж��Ƿ��ǵ�һ��
        hObject.Data(row3,col3+1) = hObject.Data(row3,col3);
    end
    for j=2:size(b_Moren,1) %�ӵ�2�п�ʼ�����������У����¼���ÿһ�е����
        a=str2num(cell2mat(hObject.Data(j-1,3)));
        b=str2num(cell2mat(hObject.Data(j,2)));
        c={num2str(b+a)};
        hObject.Data(j,3) = c;
    end
end

function P_B_ImBut_2_Callback(hObject, eventdata, handles)
clear newData_front newData_back newArray oldData;
clear prompt title lines def tab newrow1 newrow2 newrow3;
clear indx tf new_Data;
global row2;
%�������
oldData = get(handles.P_Basic_2,'Data');%��ȡ������ݾ��� 
if (row2 ~= 1&row2 ~= size(oldData,1) )
    newData_front = oldData(1:row2,:);  
    newData_back = oldData(row2+1:end,:);
    newArray = {'','','','',''}; 
    newData = [newData_front;newArray;newData_back];
    set(handles.P_Basic_2,'Data',newData);  %��ʾ�������
elseif (row2 == 1) 
    newArray = {'','','','',''}; 
    if size(oldData,1)==1
        newData = [oldData(1,:);newArray];
    else
        newData = [oldData(1,:);newArray;oldData(2:end,:)];
    end
    set(handles.P_Basic_2,'Data',newData);  %��ʾ�������
elseif (row2 == size(oldData,1))
    [indx tf]=listdlg('ListString',{'ǰ��һ��','���һ��'},...
    'Name','ѡ��һ��','OKString','ȷ��','CancelString','ȡ��',...
    'SelectionMode','single','ListSize',[180 80]);
    if (indx == 1)
        newData_front = oldData(1:row2-1,:);  
        newData_back = oldData(row2,:);
        newArray = {'','','','',''}; 
        newData = [newData_front;newArray;newData_back];
        set(handles.P_Basic_2,'Data',newData);  %��ʾ�������
    elseif(indx == 2)
        newArray = {'','','','',''}; 
        new_Data = [oldData;newArray];
        set(handles.P_Basic_2,'Data',new_Data);  %��ʾ�������
    end    
end


function P_B_DelBut_2_Callback(hObject, eventdata, handles)
clear newData;
global row2;
if(row2>0)
    newData = get(handles.P_Basic_2,'Data');  %��ȡ������ݾ���
%     newData = newData{1,1};
    newData(row2,:) = [];   %ɾ��ѡ�е�ĳ������
    set(handles.P_Basic_2,'Data',newData);  %��ʾ�������
else
    msgbox('����ѡ��Ҫɾ�����У�','ȷ��','error');
end
