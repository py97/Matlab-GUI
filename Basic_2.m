%井深结构 B
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
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','井深结构数据');

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
% 当数据从 set_pass_Data_value 中输出到 main 中后，将窗口关闭
delete(handles.figure1);

%重置
function P_B_ReBut_2_Callback(hObject, eventdata, handles)
clear P_B_Chart;
P_B_Chart = [{'','','','',''}];
set(handles.P_Basic_2,'Data',P_B_Chart);

%确定-----------------------------------------------------------------------------------------------------------------------
function P_B_ConBut_2_Callback(hObject, eventdata, handles)
global pass_Data
B_2 = get(handles.P_Basic_2,'Data');
if isequal(pass_Data{1},B_2)
    handles.output = B_2;% 将数据发送到 handles.output 中。
else
    try
        handles.output = B_2;% 将数据发送到 handles.output 中。
        pass_Data(6:end) = [];
    catch
    end
end


%存access数据库---------------------------------------------------------------------------------------------------------------------
% connA=database('YouDB','','') ;
% colnames={'B_i1','B_i2','B_i3','B_i4','B_i5'};
% execdata1=B_2;
% insert(connA,'B',colnames,execdata1);

handles.output = B_2;% 将数据发送到 handles.output 中。
%程序在 OpeningFcn 使用 uiwait，使程序等待
%当遇到 uiresume 时程序继续运行，执行 OutputFcn ，将 chooseGUI 中修改之后的值通过 handles.output 输出
guidata(hObject, handles);  % 当 handles 结构体中的数据发生改变时，必须使用 guidata 更新 handles 结构体
uiresume(handles.figure1)   %继续执行被uiwait中断的程序


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
        [indx tf]=listdlg('ListString',{'套管','裸眼'},...
        'Name','选择一个','OKString','确定','CancelString','取消',...
        'SelectionMode','single','ListSize',[180 80]);
        if (indx == 1)
            hObject.Data(row3,col3) = {'套管'};
            hObject.Data(row3,5) = {'0.24'}
        elseif(indx == 2)
            hObject.Data(row3,col3) = {'裸眼'};
            hObject.Data(row3,5) = {'0.29'}
        end    
    end
catch
end

function P_Basic_2_CellEditCallback(hObject, eventdata, handles)
clear b_Moren a b c logical i j;
global row3 col3;
b_Moren=get(hObject,'Data');
logical = 1;    %logical为1表示长度数据填写无误
for i=1:row3 %遍历到输入数据所在行，检查长度是否填写完整
    if size(cell2mat(b_Moren(i,2)),2)==0 && size(cell2mat(b_Moren(i,3)),2)~=0  %第2列不为空
        logical = 0;
        hObject.Data(row3,3) = cellstr('');
        errordlg('请检查长度是否填写完整！','错误','on');
        break
    end
end
if logical == 1
    if (row3 == 1&& col3==2)    %判断是否是第一行
        hObject.Data(row3,col3+1) = hObject.Data(row3,col3);
    end
    for j=2:size(b_Moren,1) %从第2行开始，遍历所有行，重新计算每一行的深度
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
%重组矩阵
oldData = get(handles.P_Basic_2,'Data');%获取表格数据矩阵 
if (row2 ~= 1&row2 ~= size(oldData,1) )
    newData_front = oldData(1:row2,:);  
    newData_back = oldData(row2+1:end,:);
    newArray = {'','','','',''}; 
    newData = [newData_front;newArray;newData_back];
    set(handles.P_Basic_2,'Data',newData);  %显示到表格中
elseif (row2 == 1) 
    newArray = {'','','','',''}; 
    if size(oldData,1)==1
        newData = [oldData(1,:);newArray];
    else
        newData = [oldData(1,:);newArray;oldData(2:end,:)];
    end
    set(handles.P_Basic_2,'Data',newData);  %显示到表格中
elseif (row2 == size(oldData,1))
    [indx tf]=listdlg('ListString',{'前插一行','后插一行'},...
    'Name','选择一个','OKString','确定','CancelString','取消',...
    'SelectionMode','single','ListSize',[180 80]);
    if (indx == 1)
        newData_front = oldData(1:row2-1,:);  
        newData_back = oldData(row2,:);
        newArray = {'','','','',''}; 
        newData = [newData_front;newArray;newData_back];
        set(handles.P_Basic_2,'Data',newData);  %显示到表格中
    elseif(indx == 2)
        newArray = {'','','','',''}; 
        new_Data = [oldData;newArray];
        set(handles.P_Basic_2,'Data',new_Data);  %显示到表格中
    end    
end


function P_B_DelBut_2_Callback(hObject, eventdata, handles)
clear newData;
global row2;
if(row2>0)
    newData = get(handles.P_Basic_2,'Data');  %获取表格数据矩阵
%     newData = newData{1,1};
    newData(row2,:) = [];   %删除选中的某行数据
    set(handles.P_Basic_2,'Data',newData);  %显示到表格中
else
    msgbox('请先选择要删除的行！','确认','error');
end
