%相关基础参数录入 F
function varargout = Basic_6(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Basic_6_OpeningFcn, ...
                   'gui_OutputFcn',  @Basic_6_OutputFcn, ...
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

function Basic_6_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center')
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','相关基础数据');

global pass_Data
if isempty(pass_Data{5}) ~=0
    pass_Data = varargin{1};
    set(handles.P_Basic_6,'Data',pass_Data) 
else
    set(handles.P_Basic_6,'Data',pass_Data{5}) 
end

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Basic_6_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
% 当数据从 set_pass_Data_value 中输出到 main 中后，将窗口关闭
delete(handles.figure1);

function P_B_ReBut_6_Callback(hObject, eventdata, handles)
clear P_B_Chart;
P_B_Chart = [{'7.85',' ',' ','1.8','1.125','1.15'}];
set(handles.P_Basic_6,'Data',P_B_Chart);

%确定
function P_B_ConBut_6_Callback(hObject, eventdata, handles)
global pass_Data
B_6 = get(handles.P_Basic_6,'Data');
if isequal(pass_Data{1},B_6)
    handles.output = B_6;% 将数据发送到 handles.output 中。
else
    try
        handles.output = B_6;% 将数据发送到 handles.output 中。
        pass_Data(6:end) = [];
    catch
    end
end

%存access数据库---------------------------------------------------------------------------------------------------------------------
% connA=database('YouDB','','') ;
% colnames={'F_i1','F_i2','F_i3','F_i4','F_i5','F_i6','F_i7'};
% execdata1=B_6;
% insert(connA,'F',colnames,execdata1);

handles.output = B_6;% 将数据发送到 handles.output 中。
%程序在 OpeningFcn 使用 uiwait，使程序等待
%当遇到 uiresume 时程序继续运行，执行 OutputFcn ，将 chooseGUI 中修改之后的值通过 handles.output 输出
guidata(hObject, handles);  % 当 handles 结构体中的数据发生改变时，必须使用 guidata 更新 handles 结构体
uiresume(handles.figure1)   %继续执行被uiwait中断的程序


% --- Executes during object creation, after setting all properties.
function P_Basic_6_CreateFcn(hObject, eventdata, handles)
clear P_B_Chart;
P_B_Chart = [{'7.85',' ',' ','1.8','1.125','1.15'}]
set(hObject,'Data',P_B_Chart);
