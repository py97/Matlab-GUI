%管柱组合 D
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
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','作业管柱组合');

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
        pass_Data = chooseGUI(put_in_in);    %调用chooseGUI.m文件

        pass_Data2 = pass_Data(2)
        pass_Data3 = pass_Data(3)
        pass_Data4 = pass_Data(4)
        pass_Data5 = pass_Data(5)
        pass_Data5 = cellstr(pass_Data5{1})

        %填充数据
    %     hObject.Data(y_row_4,1) = pass_Data1;
        hObject.Data(y_row,4) = pass_Data2;
        hObject.Data(y_row,5) = pass_Data3;
        hObject.Data(y_row,6) = pass_Data4;
        hObject.Data(y_row,7) = pass_Data5;
    elseif(y_col == 1)
        [indx tf]=listdlg('ListString',{'套管','井眼'},...
        'Name','选择一个','OKString','确定','CancelString','取消',...
        'SelectionMode','single','ListSize',[200 100]);
        if (indx == 1)
            hObject.Data(y_row,y_col) = {'套管'};
            %引出套管数据库中的参数
            D1 = hObject.Data(y_row,1);
            D4 = hObject.Data(y_row,4);
            D5 = hObject.Data(y_row,5);
            D6 = hObject.Data(y_row,6);
            D7 = hObject.Data(y_row,7);
            put_in_in = {D1 D4 D5 D6 D7};
            pass_Data = chooseGUI(put_in_in);    %调用chooseGUI.m文件

            pass_Data2 = pass_Data(2)
            pass_Data3 = pass_Data(3)
            pass_Data4 = pass_Data(4)
            pass_Data5 = pass_Data(5)
            pass_Data5 = cellstr(pass_Data5{1})

            %填充数据
    %         hObject.Data(y_row_4,1) = pass_Data1;
            hObject.Data(y_row,4) = pass_Data2;
            hObject.Data(y_row,5) = pass_Data3;
            hObject.Data(y_row,6) = pass_Data4;
            hObject.Data(y_row,7) = pass_Data5;
        elseif(indx == 2)
            hObject.Data(y_row,y_col) = {'井眼'};
            %引出套管数据库中的参数
            D1 = hObject.Data(y_row,1);
            D4 = hObject.Data(y_row,4);
            D5 = hObject.Data(y_row,5);
            D6 = hObject.Data(y_row,6);
            D7 = hObject.Data(y_row,7);
            put_in_in = {D1 D4 D5 D6 D7};
            pass_Data = chooseGUI(put_in_in);    %调用chooseGUI.m文件

            pass_Data2 = pass_Data(2)
            pass_Data3 = pass_Data(3)
            pass_Data4 = pass_Data(4)
            pass_Data5 = pass_Data(5)
            pass_Data5 = cellstr(pass_Data5{1})

            %填充数据
    %         hObject.Data(y_row_4,1) = pass_Data1;
            hObject.Data(y_row,4) = pass_Data2;
            hObject.Data(y_row,5) = pass_Data3;
            hObject.Data(y_row,6) = pass_Data4;
            hObject.Data(y_row,7) = pass_Data5;
        end
    elseif(y_col == 8)
        [indx tf]=listdlg('ListString',{'STC','LTC','BTC'},...
        'Name','选择一个','OKString','确定','CancelString','取消',...
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
logical = 1;    %logical为1表示长度数据填写无误
for i=1:y_row_4 %遍历到输入数据所在行，检查长度是否填写完整
    if size(cell2mat(d_Moren(i,2)),2)==0  %第2列不为空
        logical = 0;
        hObject.Data(y_row_4,y_col_4) = cellstr('');
        errordlg('请检查长度是否填写完整！','错误','on');
        break
    end
end
if logical == 1
    if (y_row_4 == 1&& y_col_4==2)    %判断是否是第一行
        hObject.Data(y_row_4,y_col_4+1) = hObject.Data(y_row_4,y_col_4);
    end
    for j=2:size(d_Moren,1) %从第2行开始，遍历所有行，重新计算每一行的深度
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
%重组矩阵
oldData = get(handles.y_4uitable1,'Data');%获取表格数据矩阵 
if (y_row_4 ~= 1&y_row_4 ~= size(oldData,1) )
    newData_front = oldData(1:y_row_4,:);  
    newData_back = oldData(y_row_4+1:end,:);
    newArray = {'', '', '','','','','',''}; 
    newData = [newData_front;newArray;newData_back];
    set(handles.y_4uitable1,'Data',newData);  %显示到表格中
elseif (y_row_4 == 1) 
    newArray = {'', '', '','','','','',''}; 
    if size(oldData,1)==1
        newData = [oldData(1,:);newArray];
    else
        newData = [oldData(1,:);newArray;oldData(2:end,:)];
    end
    set(handles.y_4uitable1,'Data',newData);  %显示到表格中
elseif (y_row_4 == size(oldData,1))
    [indx tf]=listdlg('ListString',{'前插一行','后插一行'},...
    'Name','选择一个','OKString','确定','CancelString','取消',...
    'SelectionMode','single','ListSize',[180 80]);
    if (indx == 1)
        newData_front = oldData(1:y_row_4-1,:);  
        newData_back = oldData(y_row_4,:);
        newArray = {'', '', '','','','','',''}; 
        newData = [newData_front;newArray;newData_back];
        set(handles.y_4uitable1,'Data',newData);  %显示到表格中
    elseif(indx == 2)
        newArray = {'', '', '','','','','',''}; 
        new_Data = [oldData;newArray];
        set(handles.y_4uitable1,'Data',new_Data);  %显示到表格中
    end    
end

%确定--------------------------------------------------------------------------------------------------------------------------
function y_4button2_Callback(hObject, eventdata, handles)
global pass_Data
B_4 = get(handles.y_4uitable1,'Data');
if isequal(pass_Data{1},B_4)
    handles.output = B_4;% 将数据发送到 handles.output 中。
else
    try
        handles.output = B_4;% 将数据发送到 handles.output 中。
        pass_Data(6:end) = [];
    catch
    end
end
%存access数据库---------------------------------------------------------------------------------------------------------------------
% connA=database('YouDB','','') ;
% colnames={'D_i1','D_i2','D_i3','D_i4','D_i5','D_i6','D_i7','D_i8'};
% execdata1=B_4;
% insert(connA,'D',colnames,execdata1);

handles.output = B_4;% 将数据发送到 handles.output 中。
%程序在 OpeningFcn 使用 uiwait，使程序等待
%当遇到 uiresume 时程序继续运行，执行 OutputFcn ，将 chooseGUI 中修改之后的值通过 handles.output 输出
guidata(hObject, handles);  % 当 handles 结构体中的数据发生改变时，必须使用 guidata 更新 handles 结构体
uiresume(handles.figure1)   %继续执行被uiwait中断的程序

% --- Executes on button press in y_4button3.
function y_4button3_Callback(hObject, eventdata, handles)
% hObject    handle to y_4button3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData;
global y_row_4;
if(y_row_4>0)
    newData = get(handles.y_4uitable1,'Data');  %获取表格数据矩阵
%     newData = newData{1,1};
    newData(y_row_4,:) = [];   %删除选中的某行数据
    set(handles.y_4uitable1,'Data',newData);  %显示到表格中
else
    msgbox('请先选择要删除的行！','确认','error');
end

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData;
global y_row_4;
if(y_row_4>0)
    newData = get(handles.y_4uitable1,'Data');  %获取表格数据矩阵
%     newData = newData{1,1};
    newData(y_row_4,:) = [];   %删除选中的某行数据
    set(handles.y_4uitable1,'Data',newData);  %显示到表格中
else
    msgbox('请先选择要删除的行！','确认','error');
end
