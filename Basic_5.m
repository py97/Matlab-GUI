%钻井液性能 E
function varargout = Basic_5(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Basic_5_OpeningFcn, ...
                   'gui_OutputFcn',  @Basic_5_OutputFcn, ...
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


function Basic_5_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center')
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','钻井液性能');

global pass_Data
if isempty(pass_Data{4}) ~=0
    pass_Data = varargin{1};
    set(handles.P_Basic_5,'Data',pass_Data) 
else
    set(handles.P_Basic_5,'Data',pass_Data{4}) 
end

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Basic_5_OutputFcn(hObject, eventdata, handles) 



varargout{1} = handles.output;
% 当数据从 set_pass_Data_value 中输出到 main 中后，将窗口关闭
delete(handles.figure1);

%重置
function pushbutton1_Callback(hObject, eventdata, handles)
clear P_B_Chart;
P_B_Chart = [{' ' ' ' ' '}]
set(handles.P_Basic_5,'Data',P_B_Chart);

%确定
function P_B_ConBut_5_Callback(hObject, eventdata, handles)
B_5 = get(handles.P_Basic_5,'Data');

%存access数据库---------------------------------------------------------------------------------------------------------------------
% connA=database('YouDB','','') ;
% colnames={'E_i1','E_i2','E_i3'};
% execdata1=B_5;
% insert(connA,'E',colnames,execdata1);

handles.output = B_5;% 将数据发送到 handles.output 中。
%程序在 OpeningFcn 使用 uiwait，使程序等待
%当遇到 uiresume 时程序继续运行，执行 OutputFcn ，将 chooseGUI 中修改之后的值通过 handles.output 输出
guidata(hObject, handles);  % 当 handles 结构体中的数据发生改变时，必须使用 guidata 更新 handles 结构体
uiresume(handles.figure1)   %继续执行被uiwait中断的程序
