function varargout = main(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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

function main_OpeningFcn(hObject, eventdata, handles, varargin)
global ctrl_stat strORdir flag 
flag = 0 ;
strORdir = 0;   %创建时既不是直井也不是定向井(后面判断的标志)
try
ctrl_stat = {['>>欢迎!(',char(datestr(now)),')']}; %定义控制台处显示的记录
set(handles.listbox1,'String',ctrl_stat)
catch
end
%修改左上角图标

h = handles.figure1; %返回其句柄
newIcon = javax.swing.ImageIcon('icon1.png')
figFrame = get(h,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标

newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','套管钻井管串力学分析系统');
set(handles.text9,'String','请输入基础数据')
set(handles.pushbutton36,'Enable','off')
set(handles.pushbutton38,'Enable','off')
set(handles.pushbutton39,'Enable','off')
set(handles.pushbutton40,'Enable','off')
set(handles.pushbutton41,'Enable','off')
set(handles.pushbutton42,'Enable','off')
set(handles.pushbutton43,'Enable','off')
set(handles.menu1_9,'Enable','off')

global P_B_1 P_B_2 y_B_4 P_B_5 P_B_6 pass_Data
P_B_1 = [{'0' '0' '0' '0'};{'','0','0',''}];
P_B_2 = [{'','','','',''}];
y_B_4 = [{'','','','','','','',''}];
P_B_5 = [{'','',''}];
P_B_6 = [{'7.85','','','1.94','1.215','1.24','1.24'}];

% [{''}];                                                                     %1
% [{'',''}];                                                                  %2
% [{'','',''}];                                                               %3
% [{'','','',''}];                                                            %4
% [{'','','','',''}];                                                         %5
% [{'','','','','',''}];                                                      %6
% [{'','','','','','',''}];                                                   %7
% [{'','','','','','','',''}];                                                %8
% [{'','','','','','','','',''}];                                             %9
% [{'','','','','','','','','',''}];                                          %10
% [{'','','','','','','','','','',''}];                                       %11
% [{'','','','','','','','','','','',''}];                                    %12
% [{'','','','','','','','','','','','',''}];                                 %13
% [{'','','','','','','','','','','','','',''}];                              %14
% [{'','','','','','','','','','','','','','',''}];                           %15
% [{'','','','','','','','','','','','','','','',''}];                        %16
% [{'','','','','','','','','','','','','','','','',''}];                     %17
% [{'','','','','','','','','','','','','','','','','',''}];                  %18
% [{'','','','','','','','','','','','','','','','','','',''}];               %19
% [{'','','','','','','','','','','','','','','','','','','',''}];            %20
% [{'','','','','','','','','','','','','','','','','','','','',''}];         %21
% [{'','','','','','','','','','','','','','','','','','','','','',''}];      %22

% R_6 = [{'','','','','','','','','','',''}];                                       %11
% R_7 = [{'','','','','','','','','','','','','','',''}];                           %15
% R_8 = [{'','','','','','','','','','',''}];                                       %11
% R_9 = [{'','','','','','','','','','','','',''}];                                 %13
% R_15 = [{'','','',''}];                                                            %4
% R_10 = [{'','','','','','','','',''}];                                             %9
% R_11 = [{'','',''}];                                                               %3
% R_16 = [{'','','','','',''}];                                                      %6
% R_29 = [{'','','',''}];                                                                  %2
% R_12 = [{'','','','','',''}];                                                      %6
% R_17 = [{'','','','','',''}];                                                      %6
% R_13 = [{'','','','','','','','','','','','','','','',''}];                        %16
% R_18 = [{'','','',''}];                                                            %4
% R_27 = [{''}];                                                                     %1
% R_20 = [{''}];                                                                     %1
% R_14 = [{'','','','','','','','','','','','','','','','','','','','','','','','','','','',''}];      %28
% R_24 = [{'','','','','','',''}];                                                   %7
% R_23 = [{'','','','','','','',''}];                                                %8
% R_21 = [{'','','','','','','','','','',''}];                                       %11
% R_22 = [{'','','','',''}];                                                         %5
% {R_6},{R_7},,{R_8},{R_9},{R_15},{R_10},{R_11},{R_16},{R_29},{R_12},{R_17},{R_13},{R_18},{R_27},{R_20},{R_14},{R_24},{R_23},{R_21},{R_22}
pass_Data = [{P_B_1},{P_B_2},{y_B_4},{P_B_5},{P_B_6}];

pic = imread('you.jpg');
% axes(handles.axes1);
imshow(pic);

handles.output = hObject;
guidata(hObject, handles);
% uiwait(handles.figure1);

function varargout = main_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

%main界面功能--------------------------------------------------------------------------------------------------------------------------
function listbox1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global ctrl_stat
try
ctrl_stat = {['>>欢迎!(',char(datestr(now)),')']}; %定义控制台处显示的记录
set(handles.listbox1,'String',ctrl_stat)
catch
end

function menu1_6_Callback(hObject, eventdata, handles)
selection=questdlg(['是否要退出系统？'], ...
['退出系统 '],'是','否','是');%当选择退出按钮时，得出一个问是否确定关闭的框
if strcmp(selection,'否')
return;
else
    clc; %当选择关闭时，清空所有matla输入面上的所有错误信息，同时关闭图像窗口
    delete(gcf);
end

function main_axes1_CreateFcn(hObject, eventdata, handles)
pic = imread('you.jpg');
% axes(handles.axes1);
imshow(pic);

%Basic文件------------------------------------------------------------------------------------------------------------------------------
%调用Basic_1.m文件
function menu2_5_Callback(hObject, eventdata, handles)
global pass_Data P_B_1 ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了井眼轨道(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    P_B_1 = Basic_1(P_B_1);    %调用Basic_1.m文件
    pass_Data(1,1) = {P_B_1};
    ctrl_stat = [ctrl_stat;{['>>井眼轨道输入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了井眼轨道(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

%调用Basic_2.m文件
function menu2_4_Callback(hObject, eventdata, handles)
global pass_Data P_B_2 ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了井身结构(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    P_B_2 = Basic_2(P_B_2);    %调用Basic_2.m文件
    pass_Data(1,2) = {P_B_2};
    ctrl_stat = [ctrl_stat;{['>>井身结构输入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了井身结构(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

%调用Basic_4.m文件
function menu2_6_Callback(hObject, eventdata, handles)
global pass_Data y_B_4 ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了管柱组合(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    y_B_4 = Basic_4(y_B_4);    %调用Basic_4.m文件
    pass_Data(1,3) = {y_B_4};
    ctrl_stat = [ctrl_stat;{['>>管柱组合输入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了管柱组合(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

%调用Basic_5.m文件
function menu2_7_Callback(hObject, eventdata, handles)
global pass_Data P_B_5 ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了钻井液性能(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    P_B_5 = Basic_5(P_B_5);
    pass_Data(1,4) = {P_B_5};
    ctrl_stat = [ctrl_stat;{['>>钻井液性能输入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了钻井液性能(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

%调用Basic_6.m文件
function menu2_8_Callback(hObject, eventdata, handles)
global pass_Data P_B_6 ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了相关基础参数录入(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    P_B_6 = Basic_6(P_B_6);
    pass_Data(1,5) = {P_B_6};
    ctrl_stat = [ctrl_stat;{['>>相关基础参数录入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了相关基础参数录入(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

%读取保存新的taoguanDB文件------------------------------------------------------------------------------------------------------------------------
function menu2_1_Callback(hObject, eventdata, handles)
try
    clear file path file_path;
    [file,path] = uigetfile('*.xlsx'); %浏览文件
    file_suffix1 = file(end-5:end);
    file_suffix = file_suffix1(strfind(file_suffix1,'.'):end); %判断文件类型
    clear file_suffix1;
    file_path = strcat(path,file)
    if(file_suffix == '.xlsx' | file_suffix == '.xls') 
        taoguanDB = table2array(readtable(file_path)); %读取Excel文件并转化为字符串元胞数组
        %如果有表头名，则处理表头名，----------------------
        for i=1:3   %这里设置最大检测表头为3行，循环检测3次
            if ~~isnan(str2double(taoguanDB{1,2}))
                taoguanDB(1,:) = [];
            end
        end
        %--------------------------------------------------
        save('taoguanDB','taoguanDB');  
        msgbox('导入套管数据成功！','提示');
    end
catch
end

%直井------------------------------------------------------------------------------------------------------------------------------------
%调用Result_1.m文件
function menu3_1_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了直井套管柱轴向载荷计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_1(pass_Data);
ctrl_stat = [ctrl_stat;{['>>直井套管柱轴向载荷计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了直井套管柱轴向载荷计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu4_1_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了直井套管柱扭矩计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_2_1(pass_Data)
ctrl_stat = [ctrl_stat;{['>>直井旋转扭矩计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了直井旋转扭矩计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu5_1_Callback(hObject, eventdata, handles)
global 	pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了直井屈曲分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_3_1(pass_Data)    %调用Result_3_1.m文件
ctrl_stat = [ctrl_stat;{['>>直井屈曲分析完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了直井屈曲分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu7_1_Callback(hObject, eventdata, handles)
global 	pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了直井螺纹受力计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_5_1(pass_Data);
ctrl_stat = [ctrl_stat;{['>>直井螺纹受力计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了直井螺纹受力计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu8_1_Callback(hObject, eventdata, handles)
global 	pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了直井表面磨损及剩余强度计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_6_1(pass_Data);   
ctrl_stat = [ctrl_stat;{['>>直井表面磨损及剩余强度计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了直井表面磨损及剩余强度计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu9_4_Callback(hObject, eventdata, handles)
global 	pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了直井螺纹疲劳损伤和疲劳寿命计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_7_1(pass_Data);  
ctrl_stat = [ctrl_stat;{['>>直井螺纹疲劳损伤和疲劳寿命计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了直井螺纹疲劳损伤和疲劳寿命计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

%二维------------------------------------------------------------------------------------------------------------------------------------
function menu3_2_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了定向井眼轴向载荷计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_1_2(pass_Data);
ctrl_stat = [ctrl_stat;{['>>定向井眼轴向载荷计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了定向井眼轴向载荷计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu4_2_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了定向井管柱旋转扭矩计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_2_2(pass_Data);
ctrl_stat = [ctrl_stat;{['>>定向井管柱旋转扭矩计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了定向井管柱旋转扭矩计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end


function menu1_Callback(hObject, eventdata, handles)

function menu2_Callback(hObject, eventdata, handles)

function menu3_Callback(hObject, eventdata, handles)

function Untitled_2_Callback(hObject, eventdata, handles)

function Untitled_3_Callback(hObject, eventdata, handles)

function menu4_Callback(hObject, eventdata, handles)

function menu5_Callback(hObject, eventdata, handles)

function menu6_Callback(hObject, eventdata, handles)

function menu7_Callback(hObject, eventdata, handles)

function menu8_Callback(hObject, eventdata, handles)

function menu9_Callback(hObject, eventdata, handles)

function menu10_Callback(hObject, eventdata, handles)

function menu3_3_Callback(hObject, eventdata, handles)

function menu10_1_Callback(hObject, eventdata, handles)

function menu10_2_Callback(hObject, eventdata, handles)

function menu10_3_Callback(hObject, eventdata, handles)

function menu9_1_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了直井疲劳损伤和疲劳寿命分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_7_1(pass_Data);
ctrl_stat = [ctrl_stat;{['>>直井疲劳损伤和疲劳寿命分析完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了直井疲劳损伤和疲劳寿命分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu9_2_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了定向井疲劳损伤和疲劳寿命分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_7_2(pass_Data)  
ctrl_stat = [ctrl_stat;{['>>定向井疲劳损伤和疲劳寿命分析完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了定向井疲劳损伤和疲劳寿命分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu9_3_Callback(hObject, eventdata, handles) 

function menu9_5_Callback(hObject, eventdata, handles)

function menu8_2_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了定向井磨损及剩余强度分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_6_2(pass_Data)  
ctrl_stat = [ctrl_stat;{['>>定向井磨损及剩余强度分析完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了定向井磨损及剩余强度分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu8_3_Callback(hObject, eventdata, handles)

function menu7_2_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了定向井螺纹工作力学(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_5_2(pass_Data);
ctrl_stat = [ctrl_stat;{['>>定向井螺纹工作力学计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了定向井螺纹工作力学计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu7_3_Callback(hObject, eventdata, handles)

function menu7_4_Callback(hObject, eventdata, handles)

function menu6_1_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了直井摩阻、扭矩计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_4_1(pass_Data)
ctrl_stat = [ctrl_stat;{['>>直井摩阻、扭矩计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了直井摩阻、扭矩计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu6_2_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了定向井眼摩阻、扭矩计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_4_2(pass_Data);
ctrl_stat = [ctrl_stat;{['>>定向井眼摩阻、扭矩计算完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了定向井眼摩阻、扭矩计算(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu6_3_Callback(hObject, eventdata, handles)

function menu6_5_Callback(hObject, eventdata, handles)


function menu6_6_Callback(hObject, eventdata, handles)

function menu5_2_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了定向井管柱轴向力和屈曲行为分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
pass_Data = Result_3_2(pass_Data)  
ctrl_stat = [ctrl_stat;{['>>定向井管柱轴向力和屈曲行为分析完毕(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
catch
ctrl_stat = [ctrl_stat;{['>>关闭了定向井管柱轴向力和屈曲行为分析(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
end

function menu5_3_Callback(hObject, eventdata, handles)

function menu5_4_Callback(hObject, eventdata, handles)

function menu4_3_Callback(hObject, eventdata, handles)

function menu2_2_Callback(hObject, eventdata, handles)

function menu2_3_Callback(hObject, eventdata, handles)

function menu1_1_Callback(hObject, eventdata, handles)

%打开项目
function menu1_2_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat strORdir  bbb flag
flag = 1;
clear filename;
clear pathname;
try
    ctrl_stat = [ctrl_stat;{['>>打开项目(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
    [filename ,pathname]=uigetfile({'*.mat','MAT-files(*.mat)'},'打开');%pathname获取打开数据路径
    clear str;
    str=strcat(pathname,filename);%字符串连接
    bbb= str
    load(str);
    Basic_1 = Basic_Data(1);
    Basic_2 = Basic_Data(2);
    Basic_3 = Basic_Data(3);
    Basic_4 = Basic_Data(4);
    Basic_5 = Basic_Data(5);
    
    Data{1} = Basic_1{1};
    Data{2} = Basic_2{1};
    Data{3} = Basic_3{1};
    Data{4} = Basic_4{1};
    Data{5} = Basic_5{1};
    
try
    Basic_6 = Basic_Data(6);
    if size(Basic_Data(6),1) ~= 0 && size(Basic_Data(6),2) ~= 0
    Data{6} = Basic_6{1};
    end
catch
end

try
    Basic_7 = Basic_Data(7);
    if size(Basic_Data(7),1) ~= 0 && size(Basic_Data(7),2) ~= 0
    Data{7} = Basic_7{1};
    end
catch
end
    
try
    Basic_8 = Basic_Data(8);
    if size(Basic_Data(8),1) ~= 0 && size(Basic_Data(8),2) ~= 0
    Data{8} = Basic_8{1};
    end
catch
end

try
    Basic_9 = Basic_Data(9);
    if size(Basic_Data(9),1) ~= 0 && size(Basic_Data(9),2) ~= 0
    Data{9} = Basic_9{1};
    end
catch
end
    
try
    Basic_15 = Basic_Data(15);
    if size(Basic_Data(15),1) ~= 0 && size(Basic_Data(15),2) ~= 0
    Data{15} = Basic_15{1};
    end
catch
end

try
    Basic_10 = Basic_Data(10);
    if size(Basic_Data(10),1) ~= 0 && size(Basic_Data(10),2) ~= 0
    Data{10} = Basic_10{1};
    end
catch
end
    
try
    Basic_11 = Basic_Data(11);
    if size(Basic_Data(11),1) ~= 0 && size(Basic_Data(11),2) ~= 0
    Data{11} = Basic_11{1};
    end
catch
end

try
    Basic_16 = Basic_Data(16);
    if size(Basic_Data(16),1) ~= 0 && size(Basic_Data(16),2) ~= 0
    Data{16} = Basic_16{1};
    end
catch
end
    
try
    Basic_29 = Basic_Data(29);
    if size(Basic_Data(29),1) ~= 0 && size(Basic_Data(29),2) ~= 0
    Data{29} = Basic_29{1};
    end
catch
end

try
    Basic_12 = Basic_Data(12);
    if size(Basic_Data(12),1) ~= 0 && size(Basic_Data(12),2) ~= 0
    Data{12} = Basic_12{1};
    end
catch
end
    
try
    Basic_17 = Basic_Data(17);
    if size(Basic_Data(17),1) ~= 0 && size(Basic_Data(17),2) ~= 0
    Data{17} = Basic_17{1};
    end
catch
end

try
    Basic_30 = Basic_Data(30);
    if size(Basic_Data(30),1) ~= 0 && size(Basic_Data(30),2) ~= 0
    Data{30} = Basic_30{1};
    end
catch
end
    
try
    Basic_13 = Basic_Data(13);
    if size(Basic_Data(13),1) ~= 0 && size(Basic_Data(13),2) ~= 0
    Data{13} = Basic_13{1};
    end
catch
end

try
    Basic_18 = Basic_Data(18);
    if size(Basic_Data(18),1) ~= 0 && size(Basic_Data(18),2) ~= 0
    Data{18} = Basic_18{1};
    end
catch
end
    
try
    Basic_27 = Basic_Data(27);
    if size(Basic_Data(27),1) ~= 0 && size(Basic_Data(27),2) ~= 0
    Data{27} = Basic_27{1};
    end
catch
end

try
    Basic_20 = Basic_Data(20);
    if size(Basic_Data(20),1) ~= 0 && size(Basic_Data(20),2) ~= 0
    Data{20} = Basic_20{1};
    end
catch
end
    
try
    Basic_14 = Basic_Data(14);
    if size(Basic_Data(14),1) ~= 0 && size(Basic_Data(14),2) ~= 0
    Data{14} = Basic_14{1};
    end
catch
end

try
    Basic_24 = Basic_Data(24);
    if size(Basic_Data(24),1) ~= 0 && size(Basic_Data(24),2) ~= 0
    Data{24} = Basic_24{1};
    end
catch
end
    
try
    Basic_23 = Basic_Data(23);
    if size(Basic_Data(23),1) ~= 0 && size(Basic_Data(23),2) ~= 0
    Data{23} = Basic_23{1};
    end
catch
end

try
    Basic_21 = Basic_Data(21);
    if size(Basic_Data(21),1) ~= 0 && size(Basic_Data(21),2) ~= 0
    Data{21} = Basic_21{1};
    end
catch
end
    
try
    Basic_22 = Basic_Data(22);
    if size(Basic_Data(22),1) ~= 0 && size(Basic_Data(22),2) ~= 0
    Data{22} = Basic_22{1};
    end
catch
end

try
    Basic_31 = Basic_Data(31);
    if size(Basic_Data(31),1) ~= 0 && size(Basic_Data(31),2) ~= 0
    Data{31} = Basic_31{1};
    end
catch
end
    
try
    Basic_32 = Basic_Data(32);
    if size(Basic_Data(32),1) ~= 0 && size(Basic_Data(32),2) ~= 0
    Data{32} = Basic_32{1};
    end
catch
end

try
    Basic_41 = Basic_Data(41);
    if size(Basic_Data(41),1) ~= 0 && size(Basic_Data(41),2) ~= 0
    Data{41} = Basic_41{1};
    end
catch
end
    
try
    Basic_33 = Basic_Data(33);
    if size(Basic_Data(33),1) ~= 0 && size(Basic_Data(33),2) ~= 0
    Data{33} = Basic_33{1};
    end
catch
end

try
    Basic_34 = Basic_Data(34);
    if size(Basic_Data(34),1) ~= 0 && size(Basic_Data(34),2) ~= 0
    Data{34} = Basic_34{1};
    end
catch
end
    
try
    Basic_35 = Basic_Data(35);
    if size(Basic_Data(35),1) ~= 0 && size(Basic_Data(35),2) ~= 0
    Data{35} = Basic_35{1};
    end
catch
end

try
    Basic_36 = Basic_Data(36);
    if size(Basic_Data(36),1) ~= 0 && size(Basic_Data(36),2) ~= 0
    Data{36} = Basic_36{1};
    end
catch
end
    
try
    Basic_50 = Basic_Data(50);
    if size(Basic_Data(50),1) ~= 0 && size(Basic_Data(50),2) ~= 0
    Data{50} = Basic_50{1};
    end
catch
end

try
    Basic_42 = Basic_Data(42);
    if size(Basic_Data(42),1) ~= 0 && size(Basic_Data(42),2) ~= 0
    Data{42} = Basic_42{1};
    end
catch
end
    
try
    Basic_37 = Basic_Data(37);
    if size(Basic_Data(37),1) ~= 0 && size(Basic_Data(37),2) ~= 0
    Data{37} = Basic_37{1};
    end
catch
end

try
    Basic_38 = Basic_Data(38);
    if size(Basic_Data(38),1) ~= 0 && size(Basic_Data(38),2) ~= 0
    Data{38} = Basic_38{1};
    end
catch
end
    
try
    Basic_39 = Basic_Data(39);
    if size(Basic_Data(39),1) ~= 0 && size(Basic_Data(39),2) ~= 0
    Data{39} = Basic_39{1};
    end
catch
end

try
    Basic_43 = Basic_Data(43);
    if size(Basic_Data(43),1) ~= 0 && size(Basic_Data(43),2) ~= 0
    Data{43} = Basic_43{1};
    end
catch
end
    
try
    Basic_49 = Basic_Data(49);
    if size(Basic_Data(49),1) ~= 0 && size(Basic_Data(49),2) ~= 0
    Data{49} = Basic_49{1};
    end
catch
end

try
    Basic_40 = Basic_Data(40);
    if size(Basic_Data(40),1) ~= 0 && size(Basic_Data(40),2) ~= 0
    Data{40} = Basic_40{1};
    end
catch
end
    
try
    Basic_44 = Basic_Data(44);
    if size(Basic_Data(44),1) ~= 0 && size(Basic_Data(44),2) ~= 0
    Data{44} = Basic_44{1};
    end
catch
end

try
    Basic_45 = Basic_Data(45);
    if size(Basic_Data(45),1) ~= 0 && size(Basic_Data(45),2) ~= 0
    Data{45} = Basic_45{1};
    end
catch
end
    
try
    Basic_46 = Basic_Data(46);
    if size(Basic_Data(46),1) ~= 0 && size(Basic_Data(46),2) ~= 0
    Data{46} = Basic_46{1};
    end
catch
end

try
    Basic_47 = Basic_Data(47);
    if size(Basic_Data(47),1) ~= 0 && size(Basic_Data(47),2) ~= 0
    Data{47} = Basic_47{1};
    end
catch
end
    
try
    Basic_48 = Basic_Data(48);
    if size(Basic_Data(48),1) ~= 0 && size(Basic_Data(48),2) ~= 0
    Data{48} = Basic_48{1};
    end
catch
end

    pass_Data = Data;
    
    jug_a = Basic_1{1};
    if size(jug_a,1) == 2 && isempty(jug_a{2,4})
        strORdir = 0   %判断为既不是直井也不是定向井
        set(handles.text9,'String','请输入基础数据')
        set(handles.pushbutton36,'Enable','off')
        set(handles.pushbutton38,'Enable','off')
        set(handles.pushbutton39,'Enable','off')
        set(handles.pushbutton40,'Enable','off')
        set(handles.pushbutton41,'Enable','off')
        set(handles.pushbutton42,'Enable','off')
        set(handles.pushbutton43,'Enable','off')
    elseif size(jug_a,1) == 2 && ~isempty(jug_a{2,4})
        strORdir = 1   %判断是直井
        set(handles.text9,'String','当前为直井')
        set(handles.pushbutton36,'Enable','on')
        set(handles.pushbutton38,'Enable','on')
        set(handles.pushbutton39,'Enable','on')
        set(handles.pushbutton40,'Enable','on')
        set(handles.pushbutton41,'Enable','on')
        set(handles.pushbutton42,'Enable','on')
        set(handles.pushbutton43,'Enable','on')
    else
        strORdir = 2   %判断为定向井
        set(handles.text9,'String','当前为二维定向井')
        set(handles.pushbutton36,'Enable','on')
        set(handles.pushbutton38,'Enable','on')
        set(handles.pushbutton39,'Enable','on')
        set(handles.pushbutton40,'Enable','on')
        set(handles.pushbutton41,'Enable','on')
        set(handles.pushbutton42,'Enable','on')
        set(handles.pushbutton43,'Enable','on')
    end
    ctrl_stat = [ctrl_stat;{['>>数据读取成功(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>没有打开项目(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

%保存项目
function menu1_3_Callback(hObject, eventdata, handles)
global pass_Data bbb flag 
% save('C:\Users\hp\Desktop\file.mat','pass_Data');
    Basic_Data = {}
    Basic_Data{1} = pass_Data{1};
    Basic_Data{2} = pass_Data{2};
    Basic_Data{3} = pass_Data{3};
    Basic_Data{4} = pass_Data{4};
    Basic_Data{5} = pass_Data{5};

try
    Basic_Data{6} = pass_Data{6};
    if size(Basic_Data{6},1) ~= 0 && size(Basic_Data{6},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{6}}]
    end
catch
end

try
    Basic_Data{7} = pass_Data{7};
    if size(Basic_Data{7},1) ~= 0 && size(Basic_Data{7},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{7}}]
    end
catch
end

try
    Basic_Data{8} = pass_Data{8};
    if size(Basic_Data{8},1) ~= 0 && size(Basic_Data{8},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{8}}]
    end
catch
end

try
    Basic_Data{9} = pass_Data{9};
    if size(Basic_Data{9},1) ~= 0 && size(Basic_Data{9},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{9}}]
    end
catch
end

try
    Basic_Data{15} = pass_Data{15};
    if size(Basic_Data{15},1) ~= 0 && size(Basic_Data{15},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{15}}]
    end
catch
end

try
    Basic_Data{10} = pass_Data{10};
    if size(Basic_Data{10},1) ~= 0 && size(Basic_Data{10},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{10}}]
    end
catch
end

try
    Basic_Data{11} = pass_Data{11};
    if size(Basic_Data{11},1) ~= 0 && size(Basic_Data{11},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{11}}]
    end
catch
end

try
    Basic_Data{16} = pass_Data{16};
    if size(Basic_Data{16},1) ~= 0 && size(Basic_Data{16},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{16}}]
    end
catch
end

try
    Basic_Data{29} = pass_Data{29};
    if size(Basic_Data{29},1) ~= 0 && size(Basic_Data{29},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{29}}]
    end
catch
end

try
    Basic_Data{12} = pass_Data{12};
    if size(Basic_Data{12},1) ~= 0 && size(Basic_Data{12},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{12}}]
    end
catch
end

try
    Basic_Data{17} = pass_Data{17};
    if size(Basic_Data{17},1) ~= 0 && size(Basic_Data{17},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{17}}]
    end
catch
end

try
    Basic_Data{30} = pass_Data{30};
    if size(Basic_Data{30},1) ~= 0 && size(Basic_Data{30},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{30}}]
    end
catch
end

try
    Basic_Data{13} = pass_Data{13};
    if size(Basic_Data{13},1) ~= 0 && size(Basic_Data{13},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{13}}]
    end
catch
end

try
    Basic_Data{18} = pass_Data{18};
    if size(Basic_Data{18},1) ~= 0 && size(Basic_Data{18},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{18}}]
    end
catch
end

try
    Basic_Data{27} = pass_Data{27};
    if size(Basic_Data{27},1) ~= 0 && size(Basic_Data{27},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{27}}]
    end
catch
end

try
    Basic_Data{20} = pass_Data{20};
    if size(Basic_Data{20},1) ~= 0 && size(Basic_Data{20},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{20}}]
    end
catch
end

try
    Basic_Data{14} = pass_Data{14};
    if size(Basic_Data{14},1) ~= 0 && size(Basic_Data{14},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{14}}]
    end
catch
end

try
    Basic_Data{24} = pass_Data{24};
    if size(Basic_Data{24},1) ~= 0 && size(Basic_Data{24},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{24}}]
    end
catch
end

try
    Basic_Data{23} = pass_Data{23};
    if size(Basic_Data{23},1) ~= 0 && size(Basic_Data{23},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{23}}]
    end
catch
end

try
    Basic_Data{21} = pass_Data{21};
    if size(Basic_Data{21},1) ~= 0 && size(Basic_Data{21},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{21}}]
    end
catch
end

try
    Basic_Data{22} = pass_Data{22};
    if size(Basic_Data{22},1) ~= 0 && size(Basic_Data{22},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{22}}]
    end
catch
end

try
    Basic_Data{31} = pass_Data{31};
    if size(Basic_Data{31},1) ~= 0 && size(Basic_Data{31},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{31}}]
    end
catch
end

try
    Basic_Data{32} = pass_Data{32};
    if size(Basic_Data{32},1) ~= 0 && size(Basic_Data{32},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{32}}]
    end
catch
end

try
    Basic_Data{41} = pass_Data{41};
    if size(Basic_Data{41},1) ~= 0 && size(Basic_Data{41},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{41}}]
    end
catch
end

try
    Basic_Data{33} = pass_Data{33};
    if size(Basic_Data{33},1) ~= 0 && size(Basic_Data{33},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{33}}]
    end
catch
end

try
    Basic_Data{34} = pass_Data{34};
    if size(Basic_Data{34},1) ~= 0 && size(Basic_Data{34},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{34}}]
    end
catch
end

try
    Basic_Data{35} = pass_Data{35};
    if size(Basic_Data{35},1) ~= 0 && size(Basic_Data{35},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{35}}]
    end
catch
end

try
    Basic_Data{36} = pass_Data{36};
    if size(Basic_Data{36},1) ~= 0 && size(Basic_Data{36},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{36}}]
    end
catch
end

try
    Basic_Data{50} = pass_Data{50};
    if size(Basic_Data{50},1) ~= 0 && size(Basic_Data{50},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{50}}]
    end
catch
end

try
    Basic_Data{42} = pass_Data{42};
    if size(Basic_Data{42},1) ~= 0 && size(Basic_Data{42},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{42}}]
    end
catch
end

try
    Basic_Data{37} = pass_Data{37};
    if size(Basic_Data{37},1) ~= 0 && size(Basic_Data{37},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{37}}]
    end
catch
end

try
    Basic_Data{38} = pass_Data{38};
    if size(Basic_Data{38},1) ~= 0 && size(Basic_Data{38},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{38}}]
    end
catch
end

try
    Basic_Data{39} = pass_Data{39};
    if size(Basic_Data{39},1) ~= 0 && size(Basic_Data{39},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{39}}]
    end
catch
end

try
    Basic_Data{43} = pass_Data{43};
    if size(Basic_Data{43},1) ~= 0 && size(Basic_Data{43},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{43}}]
    end
catch
end

try
    Basic_Data{49} = pass_Data{49};
    if size(Basic_Data{49},1) ~= 0 && size(Basic_Data{49},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{49}}]
    end
catch
end

try
    Basic_Data{40} = pass_Data{40};
    if size(Basic_Data{40},1) ~= 0 && size(Basic_Data{40},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{40}}]
    end
catch
end

try
    Basic_Data{44} = pass_Data{44};
    if size(Basic_Data{44},1) ~= 0 && size(Basic_Data{44},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{44}}]
    end
catch
end

try
    Basic_Data{45} = pass_Data{45};
    if size(Basic_Data{45},1) ~= 0 && size(Basic_Data{45},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{45}}]
    end
catch
end

try
    Basic_Data{46} = pass_Data{46};
    if size(Basic_Data{46},1) ~= 0 && size(Basic_Data{46},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{46}}]
    end
catch
end

try
    Basic_Data{47} = pass_Data{47};
    if size(Basic_Data{47},1) ~= 0 && size(Basic_Data{47},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{47}}]
    end
catch
end

try
    Basic_Data{48} = pass_Data{48};
    if size(Basic_Data{48},1) ~= 0 && size(Basic_Data{48},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{48}}]
    end
catch
end

if flag == 1
    aaa = bbb;
end
try
    save(char(aaa), 'Basic_Data');
    %普通对话框
    h=dialog('name','消息','position',[650 450 200 70]);
    uicontrol('parent',h,'style','text','string','项目保存完成！','position',[50 40 120 20],'fontsize',12);
    uicontrol('parent',h,'style','pushbutton','position',...
    [80 10 50 20],'string','确定','callback','delete(gcbf)');
catch
    clear filename;
    clear pathname;
    [filename ,pathname]=uiputfile({'*.mat','MAT-files(*.mat)'},'保存');%pathname获取保存数据路径
    ccc=strcat(pathname,filename);%字符串连接
    save(char(ccc), 'Basic_Data');
end




%另存为    
function menu1_4_Callback(hObject, eventdata, handles)
global pass_Data
% save('C:\Users\hp\Desktop\file.mat','pass_Data');
    Basic_Data = {}
    Basic_Data{1} = pass_Data{1};
    Basic_Data{2} = pass_Data{2};
    Basic_Data{3} = pass_Data{3};
    Basic_Data{4} = pass_Data{4};
    Basic_Data{5} = pass_Data{5};

try
    Basic_Data{6} = pass_Data{6};
    if size(Basic_Data{6},1) ~= 0 && size(Basic_Data{6},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{6}}]
    end
catch
end

try
    Basic_Data{7} = pass_Data{7};
    if size(Basic_Data{7},1) ~= 0 && size(Basic_Data{7},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{7}}]
    end
catch
end

try
    Basic_Data{8} = pass_Data{8};
    if size(Basic_Data{8},1) ~= 0 && size(Basic_Data{8},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{8}}]
    end
catch
end

try
    Basic_Data{9} = pass_Data{9};
    if size(Basic_Data{9},1) ~= 0 && size(Basic_Data{9},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{9}}]
    end
catch
end

try
    Basic_Data{15} = pass_Data{15};
    if size(Basic_Data{15},1) ~= 0 && size(Basic_Data{15},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{15}}]
    end
catch
end

try
    Basic_Data{10} = pass_Data{10};
    if size(Basic_Data{10},1) ~= 0 && size(Basic_Data{10},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{10}}]
    end
catch
end

try
    Basic_Data{11} = pass_Data{11};
    if size(Basic_Data{11},1) ~= 0 && size(Basic_Data{11},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{11}}]
    end
catch
end

try
    Basic_Data{16} = pass_Data{16};
    if size(Basic_Data{16},1) ~= 0 && size(Basic_Data{16},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{16}}]
    end
catch
end

try
    Basic_Data{29} = pass_Data{29};
    if size(Basic_Data{29},1) ~= 0 && size(Basic_Data{29},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{29}}]
    end
catch
end

try
    Basic_Data{12} = pass_Data{12};
    if size(Basic_Data{12},1) ~= 0 && size(Basic_Data{12},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{12}}]
    end
catch
end

try
    Basic_Data{17} = pass_Data{17};
    if size(Basic_Data{17},1) ~= 0 && size(Basic_Data{17},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{17}}]
    end
catch
end

try
    Basic_Data{30} = pass_Data{30};
    if size(Basic_Data{30},1) ~= 0 && size(Basic_Data{30},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{30}}]
    end
catch
end

try
    Basic_Data{13} = pass_Data{13};
    if size(Basic_Data{13},1) ~= 0 && size(Basic_Data{13},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{13}}]
    end
catch
end

try
    Basic_Data{18} = pass_Data{18};
    if size(Basic_Data{18},1) ~= 0 && size(Basic_Data{18},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{18}}]
    end
catch
end

try
    Basic_Data{27} = pass_Data{27};
    if size(Basic_Data{27},1) ~= 0 && size(Basic_Data{27},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{27}}]
    end
catch
end

try
    Basic_Data{20} = pass_Data{20};
    if size(Basic_Data{20},1) ~= 0 && size(Basic_Data{20},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{20}}]
    end
catch
end

try
    Basic_Data{14} = pass_Data{14};
    if size(Basic_Data{14},1) ~= 0 && size(Basic_Data{14},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{14}}]
    end
catch
end

try
    Basic_Data{24} = pass_Data{24};
    if size(Basic_Data{24},1) ~= 0 && size(Basic_Data{24},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{24}}]
    end
catch
end

try
    Basic_Data{23} = pass_Data{23};
    if size(Basic_Data{23},1) ~= 0 && size(Basic_Data{23},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{23}}]
    end
catch
end

try
    Basic_Data{21} = pass_Data{21};
    if size(Basic_Data{21},1) ~= 0 && size(Basic_Data{21},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{21}}]
    end
catch
end

try
    Basic_Data{22} = pass_Data{22};
    if size(Basic_Data{22},1) ~= 0 && size(Basic_Data{22},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{22}}]
    end
catch
end

try
    Basic_Data{31} = pass_Data{31};
    if size(Basic_Data{31},1) ~= 0 && size(Basic_Data{31},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{31}}]
    end
catch
end

try
    Basic_Data{32} = pass_Data{32};
    if size(Basic_Data{32},1) ~= 0 && size(Basic_Data{32},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{32}}]
    end
catch
end

try
    Basic_Data{41} = pass_Data{41};
    if size(Basic_Data{41},1) ~= 0 && size(Basic_Data{41},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{41}}]
    end
catch
end

try
    Basic_Data{33} = pass_Data{33};
    if size(Basic_Data{33},1) ~= 0 && size(Basic_Data{33},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{33}}]
    end
catch
end

try
    Basic_Data{34} = pass_Data{34};
    if size(Basic_Data{34},1) ~= 0 && size(Basic_Data{34},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{34}}]
    end
catch
end

try
    Basic_Data{35} = pass_Data{35};
    if size(Basic_Data{35},1) ~= 0 && size(Basic_Data{35},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{35}}]
    end
catch
end

try
    Basic_Data{36} = pass_Data{36};
    if size(Basic_Data{36},1) ~= 0 && size(Basic_Data{36},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{36}}]
    end
catch
end

try
    Basic_Data{50} = pass_Data{50};
    if size(Basic_Data{50},1) ~= 0 && size(Basic_Data{50},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{50}}]
    end
catch
end

try
    Basic_Data{42} = pass_Data{42};
    if size(Basic_Data{42},1) ~= 0 && size(Basic_Data{42},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{42}}]
    end
catch
end

try
    Basic_Data{37} = pass_Data{37};
    if size(Basic_Data{37},1) ~= 0 && size(Basic_Data{37},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{37}}]
    end
catch
end

try
    Basic_Data{38} = pass_Data{38};
    if size(Basic_Data{38},1) ~= 0 && size(Basic_Data{38},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{38}}]
    end
catch
end

try
    Basic_Data{39} = pass_Data{39};
    if size(Basic_Data{39},1) ~= 0 && size(Basic_Data{39},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{39}}]
    end
catch
end

try
    Basic_Data{43} = pass_Data{43};
    if size(Basic_Data{43},1) ~= 0 && size(Basic_Data{43},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{43}}]
    end
catch
end

try
    Basic_Data{49} = pass_Data{49};
    if size(Basic_Data{49},1) ~= 0 && size(Basic_Data{49},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{49}}]
    end
catch
end

try
    Basic_Data{40} = pass_Data{40};
    if size(Basic_Data{40},1) ~= 0 && size(Basic_Data{40},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{40}}]
    end
catch
end

try
    Basic_Data{44} = pass_Data{44};
    if size(Basic_Data{44},1) ~= 0 && size(Basic_Data{44},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{44}}]
    end
catch
end

try
    Basic_Data{45} = pass_Data{45};
    if size(Basic_Data{45},1) ~= 0 && size(Basic_Data{45},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{45}}]
    end
catch
end

try
    Basic_Data{46} = pass_Data{46};
    if size(Basic_Data{46},1) ~= 0 && size(Basic_Data{46},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{46}}]
    end
catch
end

try
    Basic_Data{47} = pass_Data{47};
    if size(Basic_Data{47},1) ~= 0 && size(Basic_Data{47},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{47}}]
    end
catch
end

try
    Basic_Data{48} = pass_Data{48};
    if size(Basic_Data{48},1) ~= 0 && size(Basic_Data{48},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{48}}]
    end
catch
end

    clear filename;
    clear pathname;
    [filename ,pathname]=uiputfile({'*.mat','MAT-files(*.mat)'},'保存');%pathname获取保存数据路径
    str=strcat(pathname,filename);%字符串连接
    save(char(str), 'Basic_Data');

%删除项目
function menu1_5_Callback(hObject, eventdata, handles)
global bbb pass_Data
try
    %普通对话框
    h=dialog('name','消息','position',[650 450 200 70]);
 
    uicontrol('parent',h,'style','text','string','项目删除完成！','position',[50 40 120 20],'fontsize',12);
    uicontrol('parent',h,'style','pushbutton','position',...
   [80 10 50 20],'string','确定','callback','delete(gcbf)');
    delete(bbb) %删除当前路径下名为XXXX的mat文件
    P_B_1 = [{'0' '0' '0' '0'};{'','0','0',''}];
    P_B_2 = [{'','','','',''}];
    y_B_4 = [{'','','','','','','',''}];
    P_B_5 = [{'','',''}];
    P_B_6 = [{'7.85','','','1.94','1.215','1.24','1.24'}];
    pass_Data = [{P_B_1},{P_B_2},{y_B_4},{P_B_5},{P_B_6}];
catch
    errordlg('当前目录下无该项目文件，请确认项目目录未变更','错误')
end



function listbox1_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function menu1_7_Callback(hObject, eventdata, handles)
% hObject    handle to menu1_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu1_8_Callback(hObject, eventdata, handles)
% hObject    handle to menu1_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu1_9_OpeningFcn(hObject, eventdata, handles)
set(hObject,'Enable','off')


%直井word --------------------------------------------------------------------
function menu1_10_Callback(hObject, eventdata, handles)
% hObject    handle to menu1_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data
%画图所需的参数------------------------------------------------------------
table_K = pass_Data{7};
newK_i2 = table_K(:,2);
newK_i4 = table_K(:,4);
newK_i5 = table_K(:,5);
newK_i6 = table_K(:,6);
newK_i7 = table_K(:,7);
newK_i8 = table_K(:,8);
newK_i9 = table_K(:,9);
newK_i10 = table_K(:,10);
newK_i11 = table_K(:,11);
newK_i12 = table_K(:,12);
newK_i13 = table_K(:,13);
newK_i14 = table_K(:,14);
newK_i15 = table_K(:,15);
table_S = pass_Data{11};
S_i1 = table_S(:,1);
S_i3 = table_S(:,3);
table_U = pass_Data{12};
U_i1 = table_U(:,1);
U_i5 = table_U(:,5);
U_i6 = table_U(:,6);
table_W = pass_Data{13};
W_i1 = table_W(:,1);
W_i11 = table_W(:,11);
W_i13 = table_W(:,13);
W_i14 = table_W(:,14);
W_i15 = table_W(:,15);
W_i16 = table_W(:,16);

%导出报告所需的参数---------------------------------------------------------
y_A_cell = pass_Data{1};
y_B_cell = pass_Data{2};
y_D_cell = pass_Data{3};
y_E_cell = pass_Data{4};
y_F_cell = pass_Data{5};
result1_1 = max(str2num(char(newK_i4))); 
result1_2 = 0.9 * min(str2num(char(newK_i5)))-max(str2num(char(newK_i4)));
result1_3 = min(0.9.*str2num(char(newK_i5))./str2num(char(newK_i4)));
result1_4 = min(str2num(char(newK_i10)));
result1_5 = min(str2num(char(newK_i13))./str2num(char(newK_i12)));
y_k6 = 0.9.*str2num(char(newK_i5))./str2num(char(newK_i4));
for i = 1:size(newK_i6,1)
    if abs(y_k6(i,1)-result1_3) < 0.0001
        result3_3 = newK_i7{i,1};
    end
end
y_k10 = str2num(char(newK_i10));
for i = 1:size(y_k10,1)
    if abs(y_k10(i,1)-result1_4)<0.0001
        result3_4 = newK_i11{i,1};
    end
end
y_k14 = str2num(char(newK_i14));
for i = 1:size(newK_i14,1)
    if abs(y_k14(i,1)-result1_5)<0.0001
        result3_5 = newK_i15{i,1};
    end
end
table_2_1_M = pass_Data{15};
M_1 = table_2_1_M(1,1);
M_2 = table_2_1_M(1,2);
M_3 = table_2_1_M(1,3);
M_4 = table_2_1_M(1,4);
table_O = pass_Data{9};
O_i2 = table_O(:,2);
O_i4 = table_O(:,4);
O_i5 = table_O(:,5);
O_i9 = table_O(:,9);
O_i10 = table_O(:,10);
O_i11 = table_O(:,11);
O_i12 = table_O(:,12);
O_i13 = table_O(:,13);
table_3_1_M = pass_Data{16};
M3_1 = table_3_1_M(1,1);
M3_5 = table_3_1_M(1,2);
M3_6 = table_3_1_M(1,3);
M3_7 = table_3_1_M(1,4);
M3_8 = table_3_1_M(1,5);
M3_26 = table_3_1_M(1,6);
table_R = pass_Data{10};
R_i1 = table_R(:,1);
R_i3 = table_R(:,3);
R_i4 = table_R(:,4);
R_i8 = table_R(:,8);
table_S = pass_Data{11};
S_i1 = table_S(:,1);
S_i3 = table_S(:,3);
[S_6] = find(str2num(char(S_i1))==str2num(char(M3_6)));
[S_8] = find(str2num(char(S_i1))==str2num(char(M3_8)));
S_16_3 = S_i3(S_6,1);
S_18_3 = S_i3(S_8,1);
table_4_1_M = pass_Data{17}
M_14 = table_4_1_M(:,1);
M_15 = table_4_1_M(:,2);
M_16 = table_4_1_M(:,3);
M_17 = table_4_1_M(:,4);
M_18 = table_4_1_M(:,5);
M_19 = table_4_1_M(:,6);
table_U = pass_Data{12};
U_i1 = table_U(:,1);
U_i3 = table_U(:,3);
U_i5 = table_U(:,5);
U_i6 = table_U(:,6);
UU_1_2 = num2str(  max(str2num(char(U_i5)))  );
UU_1_3 = num2str(  max(str2num(char(U_i6)))  );
UU_1_4 = num2str(   str2num(char(O_i2(end,1))) / (  max(str2num(char(U_i6))) + str2num(char(O_i9(1,1)))   )    );
if str2num(UU_1_4) > str2num(char(y_F_cell(1,1)))
    UU_1_5 = {'满足要求'};
elseif str2num(UU_1_4) <= str2num(char(y_F_cell(1,1)))
    UU_1_5 = {'不满足要求'};
end
table_Data5_1 = pass_Data{22};
table_Data5_2 = pass_Data{23};
table_Data5_3 = pass_Data{21};
table_6_1_M = pass_Data{18};
M_i20 = table_6_1_M(1,1);
M_i21 = table_6_1_M(1,2);
M_i22 = table_6_1_M(1,3);
M_i23 = table_6_1_M(1,4);
M_i24 = pass_Data{27};
M_i25 = pass_Data{20};
table_W = pass_Data{13};
W_i1 = table_W(:,1);
W_i11 = table_W(:,11);
W_i13 = table_W(:,13);
W_i14 = table_W(:,14);
W_i15 = table_W(:,15);
W_i16 = table_W(:,16);
for i = 1:size(U_i1,1)
    if str2num(char(U_i3(i,1))) ~= 0
        W_a = i-1;
        break
    end
end
W_a1 = W_i1(W_a,1);
table_7_1_M = pass_Data{24};
M_1_28 = table_7_1_M(1,1);
M_1_29 = table_7_1_M(1,2);
M_1_30 = table_7_1_M(1,3);
M_1_31 = table_7_1_M(1,4);
M_1_32 = table_7_1_M(1,5);
M_1_33 = table_7_1_M(1,6);
M_1_34 = table_7_1_M(1,7);
table_Data7_1 = pass_Data{25};
table_Data7_2 = pass_Data{26};

%------------------------------------------------------------------------------------------%
%Result_1图像
%第一幅图
fig1_1 = figure(11);
set(fig1_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig1_1,'menubar','none');
set(fig1_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱轴向力结果图');
hold on;
y_fig_1 = str2num(char(newK_i2));
x_fig_1 = str2num(char(newK_i4)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱轴向力/kN','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第二幅图
fig1_2 = figure(12);
set(fig1_2,'units','normalized','position',[0.12 0.3 0.7 0.55]);
set(fig1_2,'menubar','none');
set(fig1_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处所受力值结果图');
hold on;
x_fig_2 = y_fig_1;  %井深
y1_fig_2 = x_fig_1; %有效轴向力
y2_fig_2 = str2num(char(newK_i5));    %三轴轴向力
y3_fig_2 = str2num(char(newK_i8));  %最大外挤压力
y4_fig_2 = str2num(char(newK_i9));  %三轴抗挤强度
y5_fig_2 = str2num(char(newK_i12)); %最大内压力
y6_fig_2 = str2num(char(newK_i13)); %三轴抗内压强度
yyaxis left;    %yyaxis left 激活当前坐标区中与左侧 y 轴关联的一侧。后续图形命令的目标为左侧。
plot(x_fig_2,y1_fig_2,'-r','LineWidth',1.5)
plot(x_fig_2,y2_fig_2,'-g','LineWidth',1.5)
xlabel('井深/m','FontSize',10);
ylabel('轴向力/kN','FontSize',10);
yyaxis right;
plot(x_fig_2,y3_fig_2,'-b','LineWidth',1.5)
plot(x_fig_2,y4_fig_2,'-k','LineWidth',1.5)
plot(x_fig_2,y5_fig_2,'-m','LineWidth',1.5)
plot(x_fig_2,y6_fig_2,'-y','LineWidth',1.5)
ylabel('压力强度/MPa','FontSize',10);
legend2 = legend({'有效轴向力','三轴轴向力','最大外挤压力','三轴抗挤强度','任意井深处最大内压力','三轴抗内压强度'},'Orientation','horizontal','Location','northoutside')
title(legend2,'钻至井底时不同井深截面处所受力值','FontSize',14);      %图像上方加入字符串标题（string）
grid on
hold off;
%第三幅图
fig1_3 = figure(13);
set(fig1_3,'units','normalized','position',[0.32 0.15 0.35 0.8]);
set(fig1_3,'menubar','none');
set(fig1_3,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面安全系数的对数坐标结果图');
hold on;

y_fig_3 = str2num(char(newK_i2(1:end)));
x1_fig_3 = str2num(char(newK_i6(1:end)));
x2_fig_3 = str2num(char(newK_i10(1:end)));
x3_fig_3 = str2num(char(newK_i14(1:end)));
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x1_fig_3,y_fig_3,'-b','LineWidth',1.5)
plot(x2_fig_3,y_fig_3,'-k','LineWidth',1.5)
plot(x3_fig_3,y_fig_3,'-r','LineWidth',1.5)
%     xlabel('钻至井底时不同井深截面处套管柱轴向力/kN','FontSize',10);
ylabel('井深/m','FontSize',10);
legend({'抗拉安全系数','抗挤安全系数','抗内压安全系数'},'Orientation','horizontal','Location','southoutside')

for i = 1:size(x2_fig_3,1)
    if abs(min(x1_fig_3)-x1_fig_3(i))<0.001
        jshen1 = y_fig_3(i);
    end
    if abs(min(x2_fig_3)-x2_fig_3(i))<0.001
        jshen2 = y_fig_3(i);
    end
    if abs(min(x3_fig_3)-x3_fig_3(i))<0.001
        jshen3 = y_fig_3(i);
    end
end

str3 = ['最小抗拉安全系数：',num2str(min(x1_fig_3)),'    ','井深：',num2str(jshen3)]
str1 = ['最小抗挤安全系数：',num2str(min(x2_fig_3)),'    ','井深：',num2str(jshen2)];
%     str1_1 =[]
str2 = ['最小抗内压安全系数：',num2str(min(x3_fig_3)),'    ','井深：',num2str(jshen1)]

str = {'钻至井底时不同井深截面安全系数的对数坐标';'';str3;str2;str1;''};
title(str,'FontSize',12);
grid on;
hold off;
%隐藏Result_1图像------------------------------------------------------------------
set(fig1_1,'Visible','off')
set(fig1_2,'Visible','off')
set(fig1_3,'Visible','off')

%Result_3_1图像--------------------------------------------------------------
fig3_1 = figure(31);
set(fig3_1,'units','normalized','position',[0.35 0.15 0.4 0.8]);
set(fig3_1,'menubar','none');
set(fig3_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力');
hold on;
y_fig_1 = str2num(char(S_i1));
x_fig_1 = str2num(char(S_i3)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力（kN/m）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%隐藏Result_3_1图像------------------------------------------------------------------
set(fig3_1,'Visible','off')

%Result_4_1图像--------------------------------------------------------------
fig4_1 = figure(41);
set(fig4_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_1,'menubar','none');
set(fig4_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_1 = str2num(char(U_i1));
x_fig_1 = str2num(char(U_i5)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦阻力/kN','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第二幅图
fig4_2 = figure(42);
set(fig4_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig4_2,'menubar','none');
set(fig4_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig_2 = str2num(char(U_i1));
x_fig_2 = str2num(char(U_i6)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_2,y_fig_2,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦扭矩/(kN·m)','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%隐藏Result_4_1图像------------------------------------------------------------------
set(fig4_1,'Visible','off')
set(fig4_2,'Visible','off')

%Result_6_1图像--------------------------------------------------------------
fig6_1 = figure(61);
set(fig6_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig6_1,'menubar','none');
set(fig6_1,'NumberTitle', 'off', 'Name', '磨损深度');
hold on;
y_fig_1 = str2num(char(W_i1));
x_fig_1 = str2num(char(W_i11)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱磨损深度（mm）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第二幅图
fig6_2 = figure(62);
set(fig6_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig6_2,'menubar','none');
set(fig6_2,'NumberTitle', 'off', 'Name', '抗挤强度');
hold on;
y_fig_2 = str2num(char(W_i1));
x_fig_2 = str2num(char(W_i13)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_2,y_fig_2,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱极限剩余抗挤强度（kN）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第三幅图
fig6_3 = figure(63);
set(fig6_3,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig6_3,'menubar','none');
set(fig6_3,'NumberTitle', 'off', 'Name', '抗拉强度');
hold on;
y_fig_3 = str2num(char(W_i1));
x_fig_3 = str2num(char(W_i15)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_3,y_fig_3,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱极限剩余抗拉强度（kN）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第四幅图
fig6_4 = figure(64);
set(fig6_4,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig6_4,'menubar','none');
set(fig6_4,'NumberTitle', 'off', 'Name', '强度降低百分比');
hold on;
y_fig_4 = str2num(char(W_i1));
x_fig_4_1 = str2num(char(W_i14)); 
x_fig_4_2 = str2num(char(W_i16)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig_4_1,y_fig_4,'-b','LineWidth',1.5)
plot(x_fig_4_2,y_fig_4,'-r','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱极限剩余强度降低百分比（%）','FontSize',10);
ylabel('井深/m','FontSize',10);
legend({'抗挤强度降低百分比','抗拉强度降低百分比'},'Orientation','horizontal','Location','southoutside')
grid on;
hold off;
%隐藏Result_6_1图像------------------------------------------------------------------
set(fig6_1,'Visible','off')
set(fig6_2,'Visible','off')
set(fig6_3,'Visible','off')
set(fig6_4,'Visible','off')

%导出报告-----------------------------------------------------------------------
filter = {'*.docx';'*.*'};
    [Filename,Pathname] = uiputfile(filter,'另存为','data.docx');  %创建文件保存对话框
    if (Filename==0 & Pathname==0)
        msgbox('您没有保存数据!','确认','error');
    else
        str=[Pathname Filename];
        %生成Word文档
        filespec_user = [str];  % 设定测试Word文件名和路径
        % 判断Word是否已经打开，若已打开，就在打开的Word中进行操作，否则就打开Word
        try
            % 若Word服务器已经打开，返回其句柄Word
            Word = actxGetRunningServer('Word.Application');
        catch
        % 否则，创建一个Microsoft Word服务器，返回句柄Word
            Word = actxserver('Word.Application');
        end;
        Word.Enable = 1; % 或set(Word, 'Enable', 1);

        % 若测试文件存在，打开该测试文件，否则，新建一个文件，并保存，文件名为测试.docx
        if exist(filespec_user,'file');
            Document = Word.Documents.Open(filespec_user);
        % Document = invoke(Word.Documents,'Open',filespec_user);
        else
            Document = Word.Documents.Add;
        % Document = invoke(Word.Documents, 'Add');
            Document.SaveAs2(filespec_user);
        end

        % 设定光标位置从头开始
        Content = Document.Content;
        Selection = Word.Selection;
        Paragraphformat = Selection.ParagraphFormat;

        % 设定页面大小
        Document.PageSetup.TopMargin = 60; % 单位像素
        Document.PageSetup.BottomMargin = 45;
        Document.PageSetup.LeftMargin = 45;
        Document.PageSetup.RightMargin = 45;

        % Content.InsertParagraphAfter;% 插入一段
        % Content.Collapse=0; % 0为不覆盖
        Content.Start = 0;
        Content.Text = '直井计算输出报告';
        Content.Font.Size = 22 ;
        Content.Font.Bold = 4 ;
        Content.Paragraphs.Alignment = 'wdAlignParagraphCenter';% 设定段落格式
        Selection.Start = Content.end;% 定义开始的位置
        Selection.TypeParagraph;

        %第一板块
        Selection.Text = '一、输入基本数据';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落

        %第一个 表
        Selection.Text = '1.1井眼轨道数据';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{1},1)+1,5);    % ”data_cell+1“ 行 5列
        DTI1_1 = Document.Tables.Item(1); % 或DTI = Tables;
        DTI1_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI1_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI1_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI1_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI1_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI1_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI1_1.Cell(1,1).Range.Text = '序号';
        DTI1_1.Cell(1,2).Range.Text = '测深(m)';
        DTI1_1.Cell(1,3).Range.Text = '井斜角(°)';
        DTI1_1.Cell(1,4).Range.Text = '方位角(°)';
        DTI1_1.Cell(1,5).Range.Text = '垂深(m)';
%             DTI1_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        for cell_word = 1:size(y_A_cell,1)
            DTI1_1.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
            DTI1_1.Cell(cell_word+1,2).Range.Text = num2str(y_A_cell{cell_word,1});      %测深    
            DTI1_1.Cell(cell_word+1,3).Range.Text = num2str(y_A_cell{cell_word,2});     %井斜角
            DTI1_1.Cell(cell_word+1,4).Range.Text = num2str(y_A_cell{cell_word,3});     %方位角
            DTI1_1.Cell(cell_word+1,5).Range.Text = num2str(y_A_cell{cell_word,4});    %垂深
        end

        %第二个 表
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '1.2井身结构数据';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{2},1)+1,6);    % ”data_cell+1“ 行 6列
        DTI1_2 = Document.Tables.Item(2); % 或DTI = Tables;
        DTI1_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI1_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI1_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI1_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI1_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI1_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI1_2.Cell(1,1).Range.Text = '序号';
        DTI1_2.Cell(1,2).Range.Text = '井段类型';
        DTI1_2.Cell(1,3).Range.Text = '长度(m)';
        DTI1_2.Cell(1,4).Range.Text = '深度(m)';
        DTI1_2.Cell(1,5).Range.Text = '有效井眼直径(mm)';
        DTI1_2.Cell(1,6).Range.Text = '摩擦系数';

        %填写数据
        for cell_word = 1:size(y_B_cell,1)
            DTI1_2.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
            DTI1_2.Cell(cell_word+1,2).Range.Text = num2str(y_B_cell{cell_word,1});      %井段类型    
            DTI1_2.Cell(cell_word+1,3).Range.Text = num2str(y_B_cell{cell_word,2});     %长度
            DTI1_2.Cell(cell_word+1,4).Range.Text = num2str(y_B_cell{cell_word,3});     %深度
            DTI1_2.Cell(cell_word+1,5).Range.Text = num2str(y_B_cell{cell_word,4});    %有效井眼直径
            DTI1_2.Cell(cell_word+1,6).Range.Text = num2str(y_B_cell{cell_word,5});    %摩擦系数
        end

        %第三个 表
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        Selection.Text = '1.3作业管柱组合';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{3},1)+1,9);    % ”data_cell+1“ 行 9列
        DTI1_3 = Document.Tables.Item(3); % 或DTI = Tables;
        DTI1_3.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI1_3.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI1_3.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI1_3.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI1_3.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI1_3.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI1_3.Cell(1,1).Range.Text = '序号';
        DTI1_3.Cell(1,2).Range.Text = '管柱类型';
        DTI1_3.Cell(1,3).Range.Text = '长度(m)';
        DTI1_3.Cell(1,4).Range.Text = '深度(m)';
        DTI1_3.Cell(1,5).Range.Text = '外径(mm)';
        DTI1_3.Cell(1,6).Range.Text = '内径(mm)';
        DTI1_3.Cell(1,7).Range.Text = '线重(mm)';
        DTI1_3.Cell(1,8).Range.Text = '钢级';
        DTI1_3.Cell(1,9).Range.Text = '扣型';
        %DTI1_3.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        for cell_word = 1:size(y_D_cell,1)
            DTI1_3.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
            DTI1_3.Cell(cell_word+1,2).Range.Text = num2str(y_D_cell{cell_word,1});      %管柱类型    
            DTI1_3.Cell(cell_word+1,3).Range.Text = num2str(y_D_cell{cell_word,2});     %长度
            DTI1_3.Cell(cell_word+1,4).Range.Text = num2str(y_D_cell{cell_word,3});     %深度
            DTI1_3.Cell(cell_word+1,5).Range.Text = num2str(y_D_cell{cell_word,4});    %外径
            DTI1_3.Cell(cell_word+1,6).Range.Text = num2str(y_D_cell{cell_word,5});    %内径
            DTI1_3.Cell(cell_word+1,7).Range.Text = num2str(y_D_cell{cell_word,6});    %线重
            DTI1_3.Cell(cell_word+1,8).Range.Text = num2str(y_D_cell{cell_word,7});    %钢级
            DTI1_3.Cell(cell_word+1,9).Range.Text = num2str(y_D_cell{cell_word,8});    %扣型
        end

        %第四个 表
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        Selection.Text = '1.4钻井液性能';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{4},1)+1,4);    % ”data_cell+1“ 行 4列
        DTI1_4 = Document.Tables.Item(4); % 或DTI = Tables;
        DTI1_4.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI1_4.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI1_4.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI1_4.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI1_4.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI1_4.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI1_4.Cell(1,1).Range.Text = '序号';
        DTI1_4.Cell(1,2).Range.Text = '密度(g/cm^3)';
        DTI1_4.Cell(1,3).Range.Text = '塑性黏度(mPa·s)';
        DTI1_4.Cell(1,4).Range.Text = '动切力(Pa)';
        %DTI1_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        for cell_word = 1:size(y_E_cell,1)
            DTI1_4.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
            DTI1_4.Cell(cell_word+1,2).Range.Text = num2str(y_E_cell{cell_word,1});      %密度    
            DTI1_4.Cell(cell_word+1,3).Range.Text = num2str(y_E_cell{cell_word,2});     %塑性黏度
            DTI1_4.Cell(cell_word+1,4).Range.Text = num2str(y_E_cell{cell_word,3});     %动切力
        end

        %第五个 表
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        Selection.Text = '1.5相关基础数据';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{5},1)+1,7);    % ”data_cell+1“ 行 7列
        DTI1_5 = Document.Tables.Item(5); % 或DTI = Tables;
        DTI1_5.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI1_5.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI1_5.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI1_5.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI1_5.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI1_5.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI1_5.Cell(1,1).Range.Text = '序号';
        DTI1_5.Cell(1,2).Range.Text = '管柱钢材密度(g/cm^3)';
        DTI1_5.Cell(1,3).Range.Text = '钻压(kN)';
        DTI1_5.Cell(1,4).Range.Text = '套管钻深地层压力梯度(m)';
        DTI1_5.Cell(1,5).Range.Text = '许用抗拉安全系数';
        DTI1_5.Cell(1,6).Range.Text = '许用抗外挤安全系数';
        DTI1_5.Cell(1,7).Range.Text = '许用抗内压安全系数';
        %DTI1_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        for cell_word = 1:size(y_F_cell,1)
            DTI1_5.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
            DTI1_5.Cell(cell_word+1,2).Range.Text = num2str(y_F_cell{cell_word,1});     
            DTI1_5.Cell(cell_word+1,3).Range.Text = num2str(y_F_cell{cell_word,2});    
            DTI1_5.Cell(cell_word+1,4).Range.Text = num2str(y_F_cell{cell_word,3});   
            DTI1_5.Cell(cell_word+1,5).Range.Text = num2str(y_F_cell{cell_word,4});   
            DTI1_5.Cell(cell_word+1,6).Range.Text = num2str(y_F_cell{cell_word,5});   
            DTI1_5.Cell(cell_word+1,7).Range.Text = num2str(y_F_cell{cell_word,6});    
        end

        %第二板块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.InsertBreak;   %插入分页符

        Selection.Text = '二、直井轴向力计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{7},1)+1,6);    % ”pass_Data{7}+1“ 行 6列
        DTI1_6 = Document.Tables.Item(6); % 或DTI = Tables;
        DTI1_6.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI1_6.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI1_6.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI1_6.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI1_6.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI1_6.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI1_6.Cell(1,1).Range.Text = '计算参数';
        DTI1_6.Cell(1,2).Range.Text = '最大有效轴向力(kN)';
        DTI1_6.Cell(1,3).Range.Text = '拉力余量(kN)';
        DTI1_6.Cell(1,4).Range.Text = '抗拉安全系数';
        DTI1_6.Cell(1,5).Range.Text = '抗挤安全系数';
        DTI1_6.Cell(1,6).Range.Text = '抗内压安全系数';
        DTI1_6.Cell(2,1).Range.Text = '结果大小';
        DTI1_6.Cell(3,1).Range.Text = '对应位置';
        DTI1_6.Cell(4,1).Range.Text = '校核结果';
        DTI1_6.Cell(2,2).Range.Text = num2str(result1_1);
        DTI1_6.Cell(2,3).Range.Text = num2str(result1_2);
        DTI1_6.Cell(2,4).Range.Text = num2str(result1_3);
        DTI1_6.Cell(2,5).Range.Text = num2str(result1_4);
        DTI1_6.Cell(2,6).Range.Text = num2str(result1_5);
        DTI1_6.Cell(3,2).Range.Text = '井口';
        DTI1_6.Cell(3,3).Range.Text = '井口';
        DTI1_6.Cell(3,4).Range.Text = '井口';
        DTI1_6.Cell(3,5).Range.Text = '井底';
        DTI1_6.Cell(3,6).Range.Text = '井口';
        DTI1_6.Cell(4,2).Range.Text = '—';
        DTI1_6.Cell(4,3).Range.Text = '—';
        DTI1_6.Cell(4,4).Range.Text = result3_3;
        DTI1_6.Cell(4,5).Range.Text = result3_4;
        DTI1_6.Cell(4,6).Range.Text = result3_5;

        %导出图片
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        hObject_fig1_1 = findobj(fig1_1);
        hObject_fig1_1 = hObject_fig1_1(1,1);

        hObject_fig1_2 = findobj(fig1_2);
        hObject_fig1_2 = hObject_fig1_2(1,1);

        hObject_fig1_3 = findobj(fig1_3);
        hObject_fig1_3 = hObject_fig1_3(1,1);

        hgexport(hObject_fig1_2, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        hgexport(hObject_fig1_1, '-clipboard');    %将图形复制到Microsoft? Windows粘贴板
        Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %将图形粘贴到当前文档里

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        hgexport(hObject_fig1_3, '-clipboard'); 
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        %Result_2_1报告-----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落  
        Selection.Text = '三、直井旋转扭矩计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,4);    % 2行 4列
        DTI_2_1 = Document.Tables.Item(7); % 或DTI = Tables;
        DTI_2_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI_2_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI_2_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI_2_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI_2_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI_2_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI_2_1.Cell(1,1).Range.Text = '钻压（kN）';
        DTI_2_1.Cell(1,3).Range.Text = '套管转速（r/min）';
        DTI_2_1.Cell(2,1).Range.Text = '钻头外径(mm)';
        DTI_2_1.Cell(2,3).Range.Text = '许用抗扭安全系数';
%             DTI_2_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI_2_1.Cell(1,2).Range.Text = char(M_1);
        DTI_2_1.Cell(1,4).Range.Text = char(M_2);
        DTI_2_1.Cell(2,2).Range.Text = char(M_3);
        DTI_2_1.Cell(2,4).Range.Text = char(M_4);


        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,7,2);    % 7 行 6列
        DTI_2_2 = Document.Tables.Item(8); % 或DTI = Tables;
        DTI_2_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI_2_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI_2_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI_2_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI_2_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI_2_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI_2_2.Cell(1,1).Range.Text = '轴向拉伸套管许用扭矩（井口）（kN.m）';
        DTI_2_2.Cell(2,1).Range.Text = '轴向压缩套管许用扭矩（钻头附近）（kN.m）';
        DTI_2_2.Cell(3,1).Range.Text = '动态旋转套管实际最大扭矩(井口)（kN.m）';
        DTI_2_2.Cell(4,1).Range.Text = '套管旋转时最大扭转剪应力（MPa）';
        DTI_2_2.Cell(5,1).Range.Text = '抗扭安全系数';
        DTI_2_2.Cell(6,1).Range.Text = '管柱校核结果';
        DTI_2_2.Cell(7,1).Range.Text = '套管螺纹校核结果螺纹';
        %填写数据
        DTI_2_2.Cell(1,2).Range.Text = char(O_i4(1,1));                  
        DTI_2_2.Cell(2,2).Range.Text = char(O_i5(end,1));   
        DTI_2_2.Cell(3,2).Range.Text = char(O_i9(1,1));   
        DTI_2_2.Cell(4,2).Range.Text = char(O_i10(1,1));   
        DTI_2_2.Cell(5,2).Range.Text = char(O_i11(1,1));   
        DTI_2_2.Cell(6,2).Range.Text = char(O_i12(1,1));   
        DTI_2_2.Cell(7,2).Range.Text = char(O_i13(1,1));
        
        %Result_3_1报告-----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '四、直井屈曲分析计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,6);    % 2行 4列
        DTI3_1 = Document.Tables.Item(9); % 或DTI = Tables;
        DTI3_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI3_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI3_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI3_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI3_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI3_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI3_1.Cell(1,1).Range.Text = '钻压（kN）';
        DTI3_1.Cell(1,2).Range.Text = '管柱正弦弯曲临界受压长度（m）';
        DTI3_1.Cell(1,3).Range.Text = '管柱正弦弯曲临界受压点井深（m）';
        DTI3_1.Cell(1,4).Range.Text = '管柱螺旋弯曲临界受压长度（m）';
        DTI3_1.Cell(1,5).Range.Text = '管柱螺旋弯曲临界受压点井深（m）';
        DTI3_1.Cell(1,6).Range.Text = '套管旋转扭矩（kN.m）';
%             DTI3_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI3_1.Cell(2,1).Range.Text = char(M3_1);
        DTI3_1.Cell(2,2).Range.Text = char(M3_5);
        DTI3_1.Cell(2,3).Range.Text = char(M3_6);
        DTI3_1.Cell(2,4).Range.Text = char(M3_7);
        DTI3_1.Cell(2,5).Range.Text = char(M3_8);
        DTI3_1.Cell(2,6).Range.Text = char(M3_26);

        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(R_i8,1)-1+3,3);    % size(R_i8,1)+3 行 6列
        DTI3_2 = Document.Tables.Item(10); % 或DTI = Tables;
        DTI3_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI3_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI3_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI3_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI3_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI3_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
         
        % 指定标题各单元格内容
        DTI3_2.Cell(1,1).Range.Text = '直井管柱发生正弦弯曲临界压力（kN）';
        DTI3_2.Cell(2,1).Range.Text = '直井管柱发生螺旋弯曲临界压力（kN）';
        DTI3_2.Cell(3,1).Range.Text = '判断管柱是否发生屈曲';
        DTI3_2.Cell(3,2).Range.Text = '对应井段（m）';
        DTI3_2.Cell(3,3).Range.Text = '与井壁最大附加接触力（kN/m）';
        % 合并单元格
        DTI3_2.Cell(1, 2).Merge(DTI3_2.Cell(1, 3));
        DTI3_2.Cell(2, 2).Merge(DTI3_2.Cell(2, 3));
        

        %填写数据
        DTI3_2.Cell(1,2).Range.Text = num2str(min(str2num(char(R_i3)))); 
        DTI3_2.Cell(2,2).Range.Text = num2str(min(str2num(char(R_i4))));  
        for U8_row = 1:size(R_i8,1)
            DTI3_2.Cell(U8_row+3,1).Range.Text = char(R_i8(U8_row,1)); %管柱失稳/未失稳
        end
        DTI3_2.Cell(4,2).Range.Text = ['0~',char(M3_6)];  
        DTI3_2.Cell(5,2).Range.Text = [char(M3_6),'~',char(M3_8)];  
        DTI3_2.Cell(6,2).Range.Text = [char(M3_8),'~',char(R_i1(end,1))];  
        DTI3_2.Cell(4,3).Range.Text = '0';  
        DTI3_2.Cell(5,3).Range.Text = num2str(max(str2num(char(S_16_3))-str2num(char(S_18_3))));  
        DTI3_2.Cell(6,3).Range.Text = num2str(max(str2num(char(S_18_3))-str2num(char(S_i3(end,1)))));  
        %导出图片-------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        hObject_fig3_1 = findobj(fig3_1);
        hObject_fig3_1 = hObject_fig3_1(1,1);
        hgexport(hObject_fig3_1, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;
        
        %Result_4_1报告----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        Selection.Text = '五、直井摩阻扭矩计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,6);    % 2行 4列
        DTI4_1 = Document.Tables.Item(11); % 或DTI = Tables;
        DTI4_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI4_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI4_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI4_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI4_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI4_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI4_1.Cell(1,1).Range.Text = '钻井套管外径（m）';
        DTI4_1.Cell(1,2).Range.Text = '是否添加扶正器（kN）';
        DTI4_1.Cell(1,3).Range.Text = '扶正器外径（m）';
        DTI4_1.Cell(1,4).Range.Text = '扶正器下入井段开始点（m）';
        DTI4_1.Cell(1,5).Range.Text = '扶正器下入间隔（m）';
        DTI4_1.Cell(1,6).Range.Text = '扶正器下入数量（个）';
%             DTI4_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI4_1.Cell(2,1).Range.Text = char(M_14);
        DTI4_1.Cell(2,2).Range.Text = char(M_15);
        DTI4_1.Cell(2,3).Range.Text = char(M_16);
        DTI4_1.Cell(2,4).Range.Text = char(M_17);
        DTI4_1.Cell(2,5).Range.Text = char(M_18);
        DTI4_1.Cell(2,6).Range.Text = char(M_19);


        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,5);    % 2 行 3列
        DTI4_2 = Document.Tables.Item(12); % 或DTI = Tables;
        DTI4_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI4_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI4_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI4_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI4_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI4_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI4_2.Cell(1,1).Range.Text = '计算参数';
        DTI4_2.Cell(1,2).Range.Text = '最大摩擦阻力（kN）';
        DTI4_2.Cell(1,3).Range.Text = '最大摩擦扭矩(kN·m)';
        DTI4_2.Cell(1,4).Range.Text = '综合抗扭安全系数';
        DTI4_2.Cell(1,5).Range.Text = '校核结果';
        %填写数据
        DTI4_2.Cell(2,1).Range.Text = '结果大小'; 
        DTI4_2.Cell(2,2).Range.Text = char(UU_1_2);
        DTI4_2.Cell(2,3).Range.Text = char(UU_1_3);
        DTI4_2.Cell(2,4).Range.Text = char(UU_1_4);
        DTI4_2.Cell(2,5).Range.Text = char(UU_1_5);
        
        %导出图片-------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        hObject_fig4_1 = findobj(fig4_1);
        hObject_fig4_1 = hObject_fig4_1(1,1);

        hObject_fig4_2 = findobj(fig4_2);
        hObject_fig4_2 = hObject_fig4_2(1,1);

        hgexport(hObject_fig4_1, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        hgexport(hObject_fig4_2, '-clipboard');    %将图形复制到Microsoft? Windows粘贴板
        Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %将图形粘贴到当前文档里
        
        %Result_5_1报告-----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '六、直井螺纹工作力学计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,5);    % 2行 5列
        DTI5_1 = Document.Tables.Item(13); % 或DTI = Tables;
        DTI5_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI5_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI5_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI5_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI5_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI5_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI5_1.Cell(1,1).Range.Text = '最大轴向力（kN）';
        DTI5_1.Cell(1,2).Range.Text = '最大钻压（kN）';
        DTI5_1.Cell(1,3).Range.Text = '管外最大液压（MPa）';
        DTI5_1.Cell(1,4).Range.Text = '管内最大液压（MPa）';
        DTI5_1.Cell(1,5).Range.Text = '最大扭矩（kN.m）';
%             DTI5_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI5_1.Cell(2,1).Range.Text = char(table_Data5_1(1,1));
        DTI5_1.Cell(2,2).Range.Text = char(table_Data5_1(1,2));
        DTI5_1.Cell(2,3).Range.Text = char(table_Data5_1(1,3));
        DTI5_1.Cell(2,4).Range.Text = char(table_Data5_1(1,4));
        DTI5_1.Cell(2,5).Range.Text = char(table_Data5_1(1,5));

        %第二个已知表格
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落  
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,8);    % 2行 5列
        DTI5_2 = Document.Tables.Item(14); % 或DTI = Tables;
        DTI5_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI5_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI5_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI5_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI5_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI5_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI5_2.Cell(1,1).Range.Text = '螺纹类型';
        DTI5_2.Cell(1,2).Range.Text = '套管尺寸（mm）';
        DTI5_2.Cell(1,3).Range.Text = '钢材';
        DTI5_2.Cell(1,4).Range.Text = '管材屈服强度（MPa）';
        DTI5_2.Cell(1,5).Range.Text = '管材极限抗拉强度（MPa）';
        DTI5_2.Cell(1,6).Range.Text = '螺纹升角（°）';
        DTI5_2.Cell(1,7).Range.Text = '承载面夹角（°）';
        DTI5_2.Cell(1,8).Range.Text = '导向面夹角（°）';
%             DTI5_2.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI5_2.Cell(2,1).Range.Text = char(table_Data5_2(1,1));
        DTI5_2.Cell(2,2).Range.Text = char(table_Data5_2(1,2));
        DTI5_2.Cell(2,3).Range.Text = char(table_Data5_2(1,3));
        DTI5_2.Cell(2,4).Range.Text = char(table_Data5_2(1,4));
        DTI5_2.Cell(2,5).Range.Text = char(table_Data5_2(1,5));
        DTI5_2.Cell(2,6).Range.Text = char(table_Data5_2(1,6));
        DTI5_2.Cell(2,7).Range.Text = char(table_Data5_2(1,7));
        DTI5_2.Cell(2,8).Range.Text = char(table_Data5_2(1,8));
        
        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,11,2);    % 11 行 2列
        DTI5_3 = Document.Tables.Item(15); % 或DTI = Tables;
        DTI5_3.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI5_3.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI5_3.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI5_3.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI5_3.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI5_3.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI5_3.Cell(1,1).Range.Text = '套管螺纹拉扭等效应力(MPa)';
        DTI5_3.Cell(2,1).Range.Text = '套管螺纹拉扭极限应力(MPa)';
        DTI5_3.Cell(3,1).Range.Text = '套管螺纹拉扭安全系数';
        DTI5_3.Cell(4,1).Range.Text = '套管螺纹压扭等效应力(MPa)';
        DTI5_3.Cell(5,1).Range.Text = '套管螺纹压扭极限应力(MPa)';
        DTI5_3.Cell(6,1).Range.Text = '套管螺纹压扭安全系数';
        DTI5_3.Cell(7,1).Range.Text = '套管螺纹等效密封应力(MPa)';
        DTI5_3.Cell(8,1).Range.Text = '套管螺纹极限密封应力(MPa)';
        DTI5_3.Cell(9,1).Range.Text = '套管内部液压螺纹径向变形(mm)';
        DTI5_3.Cell(10,1).Range.Text = '套管螺纹密封安全系数';
        DTI5_3.Cell(11,1).Range.Text = '套管螺纹可靠性校核结果';
        %填写数据
        DTI5_3.Cell(1,2).Range.Text = char(table_Data5_3(1,1));
        DTI5_3.Cell(2,2).Range.Text = char(table_Data5_3(2,1));
        DTI5_3.Cell(3,2).Range.Text = char(table_Data5_3(3,1));
        DTI5_3.Cell(4,2).Range.Text = char(table_Data5_3(4,1));
        DTI5_3.Cell(5,2).Range.Text = char(table_Data5_3(5,1));
        DTI5_3.Cell(6,2).Range.Text = char(table_Data5_3(6,1));
        DTI5_3.Cell(7,2).Range.Text = char(table_Data5_3(7,1));
        DTI5_3.Cell(8,2).Range.Text = char(table_Data5_3(8,1));
        DTI5_3.Cell(9,2).Range.Text = char(table_Data5_3(9,1));
        DTI5_3.Cell(10,2).Range.Text = char(table_Data5_3(10,1));
        DTI5_3.Cell(11,2).Range.Text = char(table_Data5_3(11,1));
        
        
        %Result6_1报告-----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落    
        Selection.Text = '七、直井磨损缺陷评价及剩余强度分析';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,6);    % 2行 6列
        DTI6_1 = Document.Tables.Item(16); % 或DTI = Tables;
        DTI6_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI6_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI6_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI6_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI6_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI6_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI6_1.Cell(1,1).Range.Text = '钻井套管钢级';
        DTI6_1.Cell(1,2).Range.Text = '套管屈服强度（MPa）';
        DTI6_1.Cell(1,3).Range.Text = '套管磨损系数(×10^(-12)Pa^(-1))';
        DTI6_1.Cell(1,4).Range.Text = '钻井套管外径（m）';
        DTI6_1.Cell(1,5).Range.Text = '转速（r/min）';
        DTI6_1.Cell(1,6).Range.Text = '机械钻速（m/h）';

        %填写数据
        DTI6_1.Cell(2,1).Range.Text = char(M_i20);
        DTI6_1.Cell(2,2).Range.Text = char(M_i21);
        DTI6_1.Cell(2,3).Range.Text = char(M_i22);
        DTI6_1.Cell(2,4).Range.Text = char(M_i23);
        DTI6_1.Cell(2,5).Range.Text = char(M_i24);
        DTI6_1.Cell(2,6).Range.Text = char(M_i25);

        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格-------------------------------------------------------------------------------------------------------------------
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,6,2);    % 7 行 6列
        DTI6_2 = Document.Tables.Item(17); % 或DTI = Tables;
        DTI6_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI6_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI6_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI6_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI6_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI6_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容-------------------------------------------------------------------------------------------------------------
        DTI6_2.Cell(1,1).Range.Text = '套管钻井磨损井段（m）';
        DTI6_2.Cell(2,1).Range.Text = '套管钻井管柱最大磨损深度（mm）';
        DTI6_2.Cell(3,1).Range.Text = '均匀磨损极限剩余抗挤强度（MPa）';
        DTI6_2.Cell(4,1).Range.Text = '抗挤强度降低百分比（%）';
        DTI6_2.Cell(5,1).Range.Text = '均匀磨损极限剩余抗拉强度（kN）';
        DTI6_2.Cell(6,1).Range.Text = '抗拉强度降低百分比（%）';
        %填写数据----------------------------------------------------------------------------------------------------------------------
        DTI6_2.Cell(1,2).Range.Text = char(cell2mat([W_a1,'~',W_i1(end)]));  
        DTI6_2.Cell(2,2).Range.Text = num2str(max(str2num(char(W_i11))));    
        DTI6_2.Cell(3,2).Range.Text = num2str(min(str2num(char(W_i13)))); 
        DTI6_2.Cell(4,2).Range.Text = num2str(max(str2num(char(W_i14))));
        DTI6_2.Cell(5,2).Range.Text = num2str(min(str2num(char(W_i15)))); 
        DTI6_2.Cell(6,2).Range.Text = num2str(max(str2num(char(W_i16)))); 
        %导出图片----------------------------------------------------------------------------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        hObject_fig6_1 = findobj(fig6_1);
        hObject_fig6_1 = hObject_fig6_1(1,1);

        hObject_fig6_2 = findobj(fig6_2);
        hObject_fig6_2 = hObject_fig6_2(1,1);

        hObject_fig6_3 = findobj(fig6_3);
        hObject_fig6_3 = hObject_fig6_3(1,1);

        hObject_fig6_4 = findobj(fig6_4);
        hObject_fig6_4 = hObject_fig6_4(1,1);

        hgexport(hObject_fig6_1, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        hgexport(hObject_fig6_2, '-clipboard');    %将图形复制到Microsoft? Windows粘贴板
        Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %将图形粘贴到当前文档里

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        hgexport(hObject_fig6_3, '-clipboard'); 
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        hgexport(hObject_fig6_4, '-clipboard'); 
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        %Result_7_1报告------------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        Selection.Text = '八、直井管柱及螺纹疲劳损伤及疲劳寿命预测';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,7);    % 2行 5列
        DTI7_1 = Document.Tables.Item(18); % 或DTI = Tables;
        DTI7_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI7_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI7_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI7_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI7_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI7_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI7_1.Cell(1,1).Range.Text = '最大轴向力（kN）';
        DTI7_1.Cell(1,2).Range.Text = '最大钻压（kN）';
        DTI7_1.Cell(1,3).Range.Text = '最大剪切力（MPa）';
        DTI7_1.Cell(1,4).Range.Text = '管柱是否发生屈曲';
        DTI7_1.Cell(1,5).Range.Text = '管外最大液压（MPa）';
        DTI7_1.Cell(1,6).Range.Text = '管内最大液压（MPa）';
        DTI7_1.Cell(1,7).Range.Text = '最大扭矩（kN.m）';
%             DTI7_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI7_1.Cell(2,1).Range.Text = char(M_1_28);
        DTI7_1.Cell(2,2).Range.Text = char(M_1_29);
        DTI7_1.Cell(2,3).Range.Text = char(M_1_30);
        DTI7_1.Cell(2,4).Range.Text = char(M_1_31);
        DTI7_1.Cell(2,5).Range.Text = char(M_1_32);
        DTI7_1.Cell(2,6).Range.Text = char(M_1_33);
        DTI7_1.Cell(2,7).Range.Text = char(M_1_34);
        
         %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %（1）合成应力计算结果
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '（1）合成应力计算结果';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,16,2);    % 11 行 2列
        DTI7_2 = Document.Tables.Item(19); % 或DTI = Tables;
        DTI7_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI7_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI7_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI7_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI7_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI7_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI7_2.Cell(1,1).Range.Text = '螺纹类型';
        DTI7_2.Cell(2,1).Range.Text = '轴向应力（MPa）';
        DTI7_2.Cell(3,1).Range.Text = '最大剪切应力（MPa）';
        DTI7_2.Cell(4,1).Range.Text = '管柱弯曲应力（MPa）';
        DTI7_2.Cell(5,1).Range.Text = '正弦屈曲应力（MPa）';
        DTI7_2.Cell(6,1).Range.Text = '螺旋屈曲应力（MPa）';
        DTI7_2.Cell(7,1).Range.Text = '弯曲附加应力（MPa）';
        DTI7_2.Cell(8,1).Range.Text = '径向应力（MPa）';
        DTI7_2.Cell(9,1).Range.Text = '切向应力（MPa）';
        DTI7_2.Cell(10,1).Range.Text = 'Mises等效应力1（MPa）';
        DTI7_2.Cell(11,1).Range.Text = 'Mises等效应力2（MPa）';
        DTI7_2.Cell(12,1).Range.Text = 'Tresa等效应力1（MPa）';
        DTI7_2.Cell(13,1).Range.Text = 'Tresa等效应力2（MPa）';
        DTI7_2.Cell(14,1).Range.Text = '平均应力（MPa）';
        DTI7_2.Cell(15,1).Range.Text = '应力幅（MPa）';
        DTI7_2.Cell(16,1).Range.Text = '应力比';
        %填写数据
        DTI7_2.Cell(1,2).Range.Text = char(table_Data7_1(1,1));
        DTI7_2.Cell(2,2).Range.Text = char(table_Data7_1(2,1));
        DTI7_2.Cell(3,2).Range.Text = char(table_Data7_1(3,1));
        DTI7_2.Cell(4,2).Range.Text = char(table_Data7_1(4,1));
        DTI7_2.Cell(5,2).Range.Text = char(table_Data7_1(5,1));
        DTI7_2.Cell(6,2).Range.Text = char(table_Data7_1(6,1));
        DTI7_2.Cell(7,2).Range.Text = char(table_Data7_1(7,1));
        DTI7_2.Cell(8,2).Range.Text = char(table_Data7_1(8,1));
        DTI7_2.Cell(9,2).Range.Text = char(table_Data7_1(9,1));
        DTI7_2.Cell(10,2).Range.Text = char(table_Data7_1(10,1));
        DTI7_2.Cell(11,2).Range.Text = char(table_Data7_1(11,1));
        DTI7_2.Cell(12,2).Range.Text = char(table_Data7_1(12,1));
        DTI7_2.Cell(13,2).Range.Text = char(table_Data7_1(13,1));
        DTI7_2.Cell(14,2).Range.Text = char(table_Data7_1(14,1));
        DTI7_2.Cell(15,2).Range.Text = char(table_Data7_1(15,1));
        DTI7_2.Cell(16,2).Range.Text = char(table_Data7_1(16,1));
        
        %（2）疲劳损伤和疲劳寿命计算结果
         Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '（2）疲劳损伤和疲劳寿命计算结果';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,11,2);    % 11 行 2列
        DTI7_2 = Document.Tables.Item(20); % 或DTI = Tables;
        DTI7_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI7_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI7_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI7_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI7_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI7_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI7_2.Cell(1,1).Range.Text = '材料屈服强度（MPa）';
        DTI7_2.Cell(2,1).Range.Text = '等效循环应力（MPa）';
        DTI7_2.Cell(3,1).Range.Text = '疲劳循环寿命极限';
        DTI7_2.Cell(4,1).Range.Text = '疲劳应力极限（MPa）';
        DTI7_2.Cell(5,1).Range.Text = '修正疲劳应力极限（MPa）';
        DTI7_2.Cell(6,1).Range.Text = '应力寿命曲线截距';
        DTI7_2.Cell(7,1).Range.Text = '应力寿命曲线斜率';
        DTI7_2.Cell(8,1).Range.Text = '套管疲劳损伤总量';
        DTI7_2.Cell(9,1).Range.Text = '单次循环疲劳损伤度';
        DTI7_2.Cell(10,1).Range.Text = '套管管体疲劳寿命';
        DTI7_2.Cell(11,1).Range.Text = '套管井底螺纹疲劳寿命';
        %填写数据
        DTI7_2.Cell(1,2).Range.Text = char(table_Data7_2(1,1));
        DTI7_2.Cell(2,2).Range.Text = char(table_Data7_2(2,1));
        DTI7_2.Cell(3,2).Range.Text = char(table_Data7_2(3,1));
        DTI7_2.Cell(4,2).Range.Text = char(table_Data7_2(4,1));
        DTI7_2.Cell(5,2).Range.Text = char(table_Data7_2(5,1));
        DTI7_2.Cell(6,2).Range.Text = char(table_Data7_2(6,1));
        DTI7_2.Cell(7,2).Range.Text = char(table_Data7_2(7,1));
        DTI7_2.Cell(8,2).Range.Text = char(table_Data7_2(8,1));
        DTI7_2.Cell(9,2).Range.Text = char(table_Data7_2(9,1));
        DTI7_2.Cell(10,2).Range.Text = char(table_Data7_2(10,1));
        DTI7_2.Cell(11,2).Range.Text = char(table_Data7_2(11,1));
        
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        
        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
        Document.Save; % 保存文档
        msgbox('导出完成！','提示');
    end
    
%二维定向word --------------------------------------------------------------------
function menu1_11_Callback(hObject, eventdata, handles)
% hObject    handle to menu1_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data
%画图所需的参数------------------------------------------------------------
table_L = pass_Data{32};
newL_i2 = table_L(:,2);
newL_i3 = table_L(:,3);
newL_i5 = table_L(:,5);
newL_i6 = table_L(:,6);
newL_i8 = table_L(:,8);
newL_i9 = table_L(:,9);
newL_i10 = table_L(:,10);
newL_i12 = table_L(:,12);
newL_i13 = table_L(:,13);
newL_i14 = table_L(:,14);
newL_i7 = table_L(:,7);
newL_i11 = table_L(:,11);
newL_i15 = table_L(:,15);
newL_i16 = table_L(:,16);
table_T = pass_Data{36};
newT_i13 = table_T(:,13);
newT_i1 = table_T(:,1);
newT_i7 = table_T(:,7);
table_V = pass_Data{37};
newV_i6 = table_V(:,6);
newV_i1 = table_V(:,1);
newV_i7 = table_V(:,7);
table_X = pass_Data{39};
newX_i12 = table_X(:,12);
newX_i1 = table_X(:,1);
newX_i14 = table_X(:,14);
newX_i16 = table_X(:,16);
newX_i15 = table_X(:,15);
newX_i17 = table_X(:,17);

%导出报告所需的参数---------------------------------------------------------
%基础数据---------
y_A_cell = pass_Data{1};
y_B_cell = pass_Data{2};
y_D_cell = pass_Data{3};
y_E_cell = pass_Data{4};
y_F_cell = pass_Data{5};
%第一部分---------
result12_1_1 = max(str2num(char(newL_i5))); 
result12_1_2 = 0.9 * min(str2num(char(newL_i6)))-max(str2num(char(newL_i5)));
result12_1_3 = min(str2num(char(newL_i7)));
result12_1_4 = min(str2num(char(newL_i11)));
result12_1_5 = min(str2num(char(newL_i15)));
y_L7 = 0.9.*str2num(char(newL_i6))./str2num(char(newL_i5));
for i = 1:size(newL_i7,1)
    if abs(y_L7(i,1)-result12_1_3) < 0.0001
        result12_3_3 = newL_i8{i,1};
        break
    end
end
y_L11 = str2num(char(newL_i11));
for i = 1:size(y_L11,1)
    if abs(y_L11(i,1)-result12_1_4)<0.0001
        result12_3_4 = newL_i12{i,1};
    end
end
y_L15 = str2num(char(newL_i15));
for i = 1:size(newL_i15,1)
    if abs(y_L15(i,1)-result12_1_5)<0.0001
        result12_3_5 = newL_i16{i,1};
    end
end
%第二部分-----------
table_2_2_M = pass_Data{41};
M22_1 = table_2_2_M(1,1);
M22_2 = table_2_2_M(1,2);
M22_3 = table_2_2_M(1,3);
M22_4 = table_2_2_M(1,4);
table_Q = pass_Data{34};
Q_i2 = table_Q(:,2);
Q_i4 = table_Q(:,4);
Q_i5 = table_Q(:,5);
Q_i9 = table_Q(:,9);
Q_i10 = table_Q(:,10);
Q_i11 = table_Q(:,11);
Q_i12 = table_Q(:,12);
Q_i13 = table_Q(:,13);
%第三部分--------
table_3_2_M = pass_Data{35};
M32_1 = table_3_2_M(1,1);
M32_9 = table_3_2_M(1,2);
M32_10 = table_3_2_M(1,3);
M32_11 = table_3_2_M(1,4);
M32_12 = table_3_2_M(1,5);
M32_13 = table_3_2_M(1,6);
M32_27 = table_3_2_M(1,7);
table_T = pass_Data{36};
T_i1 = table_T(:,1);
T_i3 = table_T(:,3);
T_i4 = table_T(:,4);
T_i7 = table_T(:,7);
T_i8 = table_T(:,8);
T_i12 = table_T(:,12);
T_i13 = table_T(:,13);
new_a=0;new_b=0;new_c=0;new_d=0;new_e=0;new_f=0;
for i = 1:size(T_i12,1)
    if strcmp('未失稳',char(T_i12(i,1))) == 1
        new_a = i;
        break
    end
end
for i = 1:size(T_i12,1)
    if strcmp('正弦弯曲',char(T_i12(i,1))) == 1
        new_c = i;
        break
    end
end
for i = 1:size(T_i12,1)
    if strcmp('螺旋弯曲',char(T_i12(i,1))) == 1
        new_e = i;
        break
    end
end
for i = size(T_i12,1):-1:1
    if strcmp('未失稳',char(T_i12(i,1))) == 1
        new_b = i;
        break
    end
end
for i = size(T_i12,1):-1:1
    if strcmp('正弦弯曲',char(T_i12(i,1))) == 1
        new_d = i;
        break
    end
end
for i = size(T_i12,1):-1:1
    if strcmp('螺旋弯曲',char(T_i12(i,1))) == 1
        new_f = i;
        break
    end
end
%第四部分----------
table_4_2_M = pass_Data{42};
M42_14 = table_4_2_M(:,1);
M42_15 = table_4_2_M(:,2);
M42_16 = table_4_2_M(:,3);
M42_17 = table_4_2_M(:,4);
M42_18 = table_4_2_M(:,5);
M42_19 = table_4_2_M(:,6);
table_V = pass_Data{37};
V_i1 = table_V(:,1);
V_i4 = table_V(:,4);
V_i6 = table_V(:,6);
V_i7 = table_V(:,7);
VV_1_2 = num2str(  max(str2num(char(V_i6)))  );
VV_1_3 = num2str(  max(str2num(char(V_i7)))  );
VV_1_4 = num2str(   str2num(char(Q_i2(end,1))) / (  max(str2num(char(V_i7))) + str2num(char(Q_i9(1,1)))   )    );
if str2num(VV_1_4) > str2num(char(y_F_cell(1,1)))
    VV_1_5 = {'满足要求'};
elseif str2num(VV_1_4) <= str2num(char(y_F_cell(1,1)))
    VV_1_5 = {'不满足要求'};
end
%第五部分-----------
table_Data52_1 = pass_Data{45};
table_Data52_2 = pass_Data{46};
table_Data52_3 = pass_Data{47};
%第六部分-------------
table_6_2_M1 = pass_Data{43};
M_i20 = table_6_2_M1(1,1);
M_i21 = table_6_2_M1(1,2);
M_i22 = table_6_2_M1(1,3);
M_i23 = table_6_2_M1(1,4);
table_6_2_M2 = pass_Data{49};
M_i24 = table_6_2_M2(:,1);
M_i25 = table_6_2_M2(:,2);
table_X = pass_Data{39};
X_i1 = table_X(:,1);
X_i12 = table_X(:,12);
X_i14 = table_X(:,14);
X_i15 = table_X(:,15);
X_i16 = table_X(:,16);
X_i17 = table_X(:,17);
for i = 1:size(V_i1,1)
    if str2num(char(V_i4(i,1))) ~= 0
        X_b = i-1;
        break
    end
end
X_b1 = X_i1(X_b,1);
%第七部分---------
table_7_2_M = pass_Data{40};
M_72_28 = table_7_2_M(1,1);
M_72_29 = table_7_2_M(1,2);
M_72_30 = table_7_2_M(1,3);
M_72_31 = table_7_2_M(1,4);
M_72_32 = table_7_2_M(1,5);
M_72_33 = table_7_2_M(1,6);
M_72_34 = table_7_2_M(1,7);
table_Data_Y = pass_Data{44};

%------------------------------------------------------------------------------------------%
%Result1_2图像
%第一幅图
fig12_1 = figure(121);
set(fig12_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig12_1,'menubar','none');
set(fig12_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱轴向力结果图');
hold on;
y_fig12_1 = str2num(char(newL_i3));
x_fig12_1 = str2num(char(newL_i5)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig12_1,y_fig12_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱轴向力/kN','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第二幅图
fig12_2 = figure(122);
set(fig12_2,'units','normalized','position',[0.12 0.3 0.7 0.55]);
set(fig12_2,'menubar','none');
set(fig12_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处所受力值结果图');
hold on;
x_fig12_2 = y_fig12_1;  %井深
y1_fig12_2 = x_fig12_1; %有效轴向力
y2_fig12_2 = str2num(char(newL_i6));    %三轴轴向力
y3_fig12_2 = str2num(char(newL_i9));  %最大外挤压力
y4_fig12_2 = str2num(char(newL_i10));  %三轴抗挤强度
y5_fig12_2 = str2num(char(newL_i13)); %最大内压力
y6_fig12_2 = str2num(char(newL_i14)); %三轴抗内压强度
yyaxis left;    %yyaxis left 激活当前坐标区中与左侧 y 轴关联的一侧。后续图形命令的目标为左侧。
plot(x_fig12_2,y1_fig12_2,'-r','LineWidth',1.5)
plot(x_fig12_2,y2_fig12_2,'-g','LineWidth',1.5)
xlabel('井深/m','FontSize',10);
ylabel('轴向力/kN','FontSize',10);
yyaxis right;
plot(x_fig12_2,y3_fig12_2,'-b','LineWidth',1.5)
plot(x_fig12_2,y4_fig12_2,'-k','LineWidth',1.5)
plot(x_fig12_2,y5_fig12_2,'-m','LineWidth',1.5)
plot(x_fig12_2,y6_fig12_2,'-y','LineWidth',1.5)
ylabel('压力强度/MPa','FontSize',10);
legend12_2 = legend({'有效轴向力','三轴轴向力','最大外挤压力','三轴抗挤强度','任意井深处最大内压力','三轴抗内压强度'},'Orientation','horizontal','Location','northoutside')
title(legend12_2,'钻至井底时不同井深截面处所受力值','FontSize',14);      %图像上方加入字符串标题（string）
grid on
hold off;
%第三幅图
fig12_3 = figure(123);
set(fig12_3,'units','normalized','position',[0.32 0.15 0.35 0.8]);
set(fig12_3,'menubar','none');
set(fig12_3,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面安全系数的对数坐标结果图');
y_fig12_3 = str2num(char(newL_i3(2:end-1)));
x1_fig12_3 = str2num(char(newL_i7(2:end-1)));
x2_fig12_3 = str2num(char(newL_i11(2:end-1)));
x3_fig12_3 = str2num(char(newL_i15(2:end-1)));
semilogx(x1_fig12_3,y_fig12_3,x2_fig12_3,y_fig12_3,x3_fig12_3,y_fig12_3,'LineWidth',1.5)
axis ij;     %设置原点位置位于左上角
set(gca,'xaxislocation','top');
%     xlabel('钻至井底时不同井深截面处套管柱轴向力/kN','FontSize',10);
ylabel('井深/m','FontSize',10);
legend({'抗拉安全系数','抗挤安全系数','抗内压安全系数'},'Orientation','horizontal','Location','southoutside')

for i = 1:size(x2_fig12_3,1)
    if abs(min(x1_fig12_3)-x1_fig12_3(i))<0.001
        jshen1 = y_fig12_3(i);
    end
    if abs(min(x2_fig12_3)-x2_fig12_3(i))<0.001
        jshen2 = y_fig12_3(i);
    end
    if abs(min(x3_fig12_3)-x3_fig12_3(i))<0.001
        jshen3 = y_fig12_3(i);
    end
end

str12_3 = ['最小抗拉安全系数：',num2str(min(x1_fig12_3)),'    ','井深：',num2str(jshen3)];
str12_2 = ['最小抗挤安全系数：',num2str(min(x2_fig12_3)),'    ','井深：',num2str(jshen2)];
%     str1_1 =[]
str12_1 = ['最小抗内压安全系数：',num2str(min(x3_fig12_3)),'    ','井深：',num2str(jshen1)];

str12 = {'钻至井底时不同井深截面安全系数的对数坐标';'';str12_3;str12_2;str12_1;''};
title(str12,'FontSize',12);
grid on;
%隐藏Result_1_2图像------------------------------------------------------------------
set(fig12_1,'Visible','off')
set(fig12_2,'Visible','off')
set(fig12_3,'Visible','off')

%Result_3_2图像--------------------------------------------------------------
fig32_1 = figure(321);
set(fig32_1,'units','normalized','position',[0.35 0.15 0.4 0.8]);
set(fig32_1,'menubar','none');
set(fig32_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力');
hold on;
y_fig32_1 = str2num(char(T_i1(1:end-1,1)));
x_fig32_1 = str2num(char(T_i7(1:end-1,1))); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig32_1,y_fig32_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱弯曲与井壁附加接触力（kN/m）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%隐藏Result_3_2图像------------------------------------------------------------------
set(fig32_1,'Visible','off')

%Result_4_2图像--------------------------------------------------------------
fig42_1 = figure(421);
set(fig42_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig42_1,'menubar','none');
set(fig42_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig42_1 = str2num(char(V_i1));
x_fig42_1 = str2num(char(V_i6)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig42_1,y_fig42_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦阻力/kN','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第二幅图
fig42_2 = figure(422);
set(fig42_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig42_2,'menubar','none');
set(fig42_2,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱所受摩擦阻力结果图');
hold on;
y_fig42_2 = str2num(char(V_i1));
x_fig42_2 = str2num(char(V_i7)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig42_2,y_fig42_2,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱所受摩擦扭矩/(kN·m)','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%隐藏Result_4_2图像------------------------------------------------------------------
set(fig42_1,'Visible','off')
set(fig42_2,'Visible','off')

%Result_6_2图像--------------------------------------------------------------
fig62_1 = figure(621);
set(fig62_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig62_1,'menubar','none');
set(fig62_1,'NumberTitle', 'off', 'Name', '磨损深度');
hold on;
y_fig62_1 = str2num(char(X_i1));
x_fig62_1 = str2num(char(X_i12)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig62_1,y_fig62_1,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱磨损深度（mm）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第二幅图
fig62_2 = figure(622);
set(fig62_2,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig62_2,'menubar','none');
set(fig62_2,'NumberTitle', 'off', 'Name', '抗挤强度');
hold on;
y_fig62_2 = str2num(char(X_i1));
x_fig62_2 = str2num(char(X_i14)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig62_2,y_fig62_2,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱极限剩余抗挤强度（kN）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第三幅图
fig62_3 = figure(623);
set(fig62_3,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig62_3,'menubar','none');
set(fig62_3,'NumberTitle', 'off', 'Name', '抗拉强度');
hold on;
y_fig62_3 = str2num(char(X_i1));
x_fig62_3 = str2num(char(X_i16)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig62_3,y_fig62_3,'-b','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱极限剩余抗拉强度（kN）','FontSize',10);
ylabel('井深/m','FontSize',10);
grid on;
hold off;
%第四幅图
fig62_4 = figure(624);
set(fig62_4,'units','normalized','position',[0.35 0.15 0.3 0.8]);
set(fig62_4,'menubar','none');
set(fig62_4,'NumberTitle', 'off', 'Name', '强度降低百分比');
hold on;
y_fig62_4 = str2num(char(X_i1));
x_fig62_4_1 = str2num(char(X_i15)); 
x_fig62_4_2 = str2num(char(X_i17)); 
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
plot(x_fig62_4_1,y_fig62_4,'-b','LineWidth',1.5)
plot(x_fig62_4_2,y_fig62_4,'-r','LineWidth',1.5)
xlabel('钻至井底时不同井深截面处套管柱极限剩余强度降低百分比（%）','FontSize',10);
ylabel('井深/m','FontSize',10);
legend({'抗挤强度降低百分比','抗拉强度降低百分比'},'Orientation','horizontal','Location','southoutside')
grid on;
hold off;
%隐藏Result_6_2图像------------------------------------------------------------------
set(fig62_1,'Visible','off')
set(fig62_2,'Visible','off')
set(fig62_3,'Visible','off')
set(fig62_4,'Visible','off')
%导出报告-----------------------------------------------------------------------
filter_2v = {'*.docx';'*.*'};
    [Filename,Pathname] = uiputfile(filter_2v,'另存为','data.docx');  %创建文件保存对话框
    if (Filename==0 & Pathname==0)
        msgbox('您没有保存数据!','确认','error');
    else
        str=[Pathname Filename];
        %生成Word文档
        filespec_user = [str];  % 设定测试Word文件名和路径
        % 判断Word是否已经打开，若已打开，就在打开的Word中进行操作，否则就打开Word
        try
            % 若Word服务器已经打开，返回其句柄Word
            Word = actxGetRunningServer('Word.Application');
        catch
        % 否则，创建一个Microsoft Word服务器，返回句柄Word
            Word = actxserver('Word.Application');
        end;
        Word.Enable = 1; % 或set(Word, 'Enable', 1);

        % 若测试文件存在，打开该测试文件，否则，新建一个文件，并保存，文件名为测试.docx
        if exist(filespec_user,'file');
            Document = Word.Documents.Open(filespec_user);
        % Document = invoke(Word.Documents,'Open',filespec_user);
        else
            Document = Word.Documents.Add;
        % Document = invoke(Word.Documents, 'Add');
            Document.SaveAs2(filespec_user);
        end

        % 设定光标位置从头开始
        Content = Document.Content;
        Selection = Word.Selection;
        Paragraphformat = Selection.ParagraphFormat;

        % 设定页面大小
        Document.PageSetup.TopMargin = 60; % 单位像素
        Document.PageSetup.BottomMargin = 45;
        Document.PageSetup.LeftMargin = 45;
        Document.PageSetup.RightMargin = 45;

        % Content.InsertParagraphAfter;% 插入一段
        % Content.Collapse=0; % 0为不覆盖
        Content.Start = 0;
        Content.Text = '定向井计算输出报告';
        Content.Font.Size = 22 ;
        Content.Font.Bold = 4 ;
        Content.Paragraphs.Alignment = 'wdAlignParagraphCenter';% 设定段落格式
        Selection.Start = Content.end;% 定义开始的位置
        Selection.TypeParagraph;

        %第一板块
        Selection.Text = '一、输入基本数据';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落

%处理二维定向井的A表---------------------------------------------------------
newA_i1 = y_A_cell(:,1);
newA_i2 = y_A_cell(:,2);
newA_i4 = y_A_cell(:,4);
for i=1:size(newA_i1,1)-1   %造斜点
    if str2num(char(newA_i2(i,1))) ~= 0 && str2num(char(newA_i2(i+1,1)))-str2num(char(newA_i2(i,1))) ~= 0
        newA_a = i+1;
        break
    end
end
for i=1:size(newA_i1,1)-1    %增斜段
    if str2num(char(newA_i2(i,1))) ~= 0 && str2num(char(newA_i2(i+1,1)))-str2num(char(newA_i2(i,1))) <= 0.00001
        newA_b = i+1;
        break
    end
end
        
        %第一个 表
        Selection.Text = '1.1井眼轨道数据';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,5,5);    % ”data_cell+1“ 行 5列
        DTI12_1 = Document.Tables.Item(1); % 或DTI = Tables;
        DTI12_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI12_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI12_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI12_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI12_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI12_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI12_1.Cell(1,1).Range.Text = '序号';
        DTI12_1.Cell(1,2).Range.Text = '测深(m)';
        DTI12_1.Cell(1,3).Range.Text = '井斜角(°)';
        DTI12_1.Cell(1,4).Range.Text = '方位角(°)';
        DTI12_1.Cell(1,5).Range.Text = '垂深(m)';
%             DTI12_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

    %填写数据
        DTI12_1.Cell(2,1).Range.Text = '1';                          %序号 
        DTI12_1.Cell(3,1).Range.Text = '2'; 
        DTI12_1.Cell(4,1).Range.Text = '3'; 
        DTI12_1.Cell(5,1).Range.Text = '4'; 
        DTI12_1.Cell(2,2).Range.Text = '0'; 
        DTI12_1.Cell(2,3).Range.Text = '0'; 
        DTI12_1.Cell(2,4).Range.Text = '0'; 
        DTI12_1.Cell(2,5).Range.Text = '—'; 
        DTI12_1.Cell(3,2).Range.Text = char(newA_i1(newA_a-1,1));     %测深
        DTI12_1.Cell(4,2).Range.Text = char(newA_i1(newA_b,1));
        DTI12_1.Cell(5,2).Range.Text = char(newA_i1(end,1));
        DTI12_1.Cell(3,3).Range.Text = '0';         %井斜角
        DTI12_1.Cell(4,3).Range.Text = char(newA_i2(newA_b,1));
        DTI12_1.Cell(5,3).Range.Text = char(newA_i2(end,1));
        DTI12_1.Cell(3,4).Range.Text = char(newA_i4(newA_a-1,1));         %垂深
        DTI12_1.Cell(4,4).Range.Text = char(newA_i4(newA_b,1));
        DTI12_1.Cell(5,4).Range.Text = char(newA_i4(end,1));
        DTI12_1.Cell(2,5).Range.Text = '—';
        DTI12_1.Cell(3,5).Range.Text = '造斜点';
        DTI12_1.Cell(4,5).Range.Text = '增斜点';
        DTI12_1.Cell(5,5).Range.Text = '稳斜点';

        %第二个 表
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '1.2井身结构数据';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{2},1)+1,6);    % ”data_cell+1“ 行 6列
        DTI12_2 = Document.Tables.Item(2); % 或DTI = Tables;
        DTI12_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI12_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI12_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI12_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI12_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI12_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI12_2.Cell(1,1).Range.Text = '序号';
        DTI12_2.Cell(1,2).Range.Text = '井段类型';
        DTI12_2.Cell(1,3).Range.Text = '长度(m)';
        DTI12_2.Cell(1,4).Range.Text = '深度(m)';
        DTI12_2.Cell(1,5).Range.Text = '有效井眼直径(mm)';
        DTI12_2.Cell(1,6).Range.Text = '摩擦系数';

        %填写数据
        for cell_word = 1:size(y_B_cell,1)
            DTI12_2.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
            DTI12_2.Cell(cell_word+1,2).Range.Text = num2str(y_B_cell{cell_word,1});      %井段类型    
            DTI12_2.Cell(cell_word+1,3).Range.Text = num2str(y_B_cell{cell_word,2});     %长度
            DTI12_2.Cell(cell_word+1,4).Range.Text = num2str(y_B_cell{cell_word,3});     %深度
            DTI12_2.Cell(cell_word+1,5).Range.Text = num2str(y_B_cell{cell_word,4});    %有效井眼直径
            DTI12_2.Cell(cell_word+1,6).Range.Text = num2str(y_B_cell{cell_word,5});    %摩擦系数
        end

        %第三个 表
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        Selection.Text = '1.3作业管柱组合';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{3},1)+1,9);    % ”data_cell+1“ 行 9列
        DTI12_3 = Document.Tables.Item(3); % 或DTI = Tables;
        DTI12_3.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI12_3.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI12_3.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI12_3.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI12_3.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI12_3.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI12_3.Cell(1,1).Range.Text = '序号';
        DTI12_3.Cell(1,2).Range.Text = '管柱类型';
        DTI12_3.Cell(1,3).Range.Text = '长度(m)';
        DTI12_3.Cell(1,4).Range.Text = '深度(m)';
        DTI12_3.Cell(1,5).Range.Text = '外径(mm)';
        DTI12_3.Cell(1,6).Range.Text = '内径(mm)';
        DTI12_3.Cell(1,7).Range.Text = '线重(mm)';
        DTI12_3.Cell(1,8).Range.Text = '钢级';
        DTI12_3.Cell(1,9).Range.Text = '扣型';
        %DTI12_3.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        for cell_word = 1:size(y_D_cell,1)
            DTI12_3.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
            DTI12_3.Cell(cell_word+1,2).Range.Text = num2str(y_D_cell{cell_word,1});      %管柱类型    
            DTI12_3.Cell(cell_word+1,3).Range.Text = num2str(y_D_cell{cell_word,2});     %长度
            DTI12_3.Cell(cell_word+1,4).Range.Text = num2str(y_D_cell{cell_word,3});     %深度
            DTI12_3.Cell(cell_word+1,5).Range.Text = num2str(y_D_cell{cell_word,4});    %外径
            DTI12_3.Cell(cell_word+1,6).Range.Text = num2str(y_D_cell{cell_word,5});    %内径
            DTI12_3.Cell(cell_word+1,7).Range.Text = num2str(y_D_cell{cell_word,6});    %线重
            DTI12_3.Cell(cell_word+1,8).Range.Text = num2str(y_D_cell{cell_word,7});    %钢级
            DTI12_3.Cell(cell_word+1,9).Range.Text = num2str(y_D_cell{cell_word,8});    %扣型
        end

        %第四个 表
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        Selection.Text = '1.4钻井液性能';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{4},1)+1,4);    % ”data_cell+1“ 行 4列
        DTI12_4 = Document.Tables.Item(4); % 或DTI = Tables;
        DTI12_4.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI12_4.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI12_4.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI12_4.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI12_4.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI12_4.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI12_4.Cell(1,1).Range.Text = '序号';
        DTI12_4.Cell(1,2).Range.Text = '密度(g/cm^3)';
        DTI12_4.Cell(1,3).Range.Text = '塑性黏度(mPa·s)';
        DTI12_4.Cell(1,4).Range.Text = '动切力(Pa)';
        %DTI12_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        for cell_word = 1:size(y_E_cell,1)
            DTI12_4.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
            DTI12_4.Cell(cell_word+1,2).Range.Text = num2str(y_E_cell{cell_word,1});      %密度    
            DTI12_4.Cell(cell_word+1,3).Range.Text = num2str(y_E_cell{cell_word,2});     %塑性黏度
            DTI12_4.Cell(cell_word+1,4).Range.Text = num2str(y_E_cell{cell_word,3});     %动切力
        end

        %第五个 表
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        Selection.Text = '1.5相关基础数据';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,size(pass_Data{5},1)+1,7);    % ”data_cell+1“ 行 7列
        DTI12_5 = Document.Tables.Item(5); % 或DTI = Tables;
        DTI12_5.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI12_5.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI12_5.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI12_5.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI12_5.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI12_5.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI12_5.Cell(1,1).Range.Text = '序号';
        DTI12_5.Cell(1,2).Range.Text = '管柱钢材密度(g/cm^3)';
        DTI12_5.Cell(1,3).Range.Text = '钻压(kN)';
        DTI12_5.Cell(1,4).Range.Text = '套管钻深地层压力梯度(m)';
        DTI12_5.Cell(1,5).Range.Text = '许用抗拉安全系数';
        DTI12_5.Cell(1,6).Range.Text = '许用抗外挤安全系数';
        DTI12_5.Cell(1,7).Range.Text = '许用抗内压安全系数';
        %DTI12_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        for cell_word = 1:size(y_F_cell,1)
            DTI12_5.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
            DTI12_5.Cell(cell_word+1,2).Range.Text = num2str(y_F_cell{cell_word,1});     
            DTI12_5.Cell(cell_word+1,3).Range.Text = num2str(y_F_cell{cell_word,2});    
            DTI12_5.Cell(cell_word+1,4).Range.Text = num2str(y_F_cell{cell_word,3});   
            DTI12_5.Cell(cell_word+1,5).Range.Text = num2str(y_F_cell{cell_word,4});   
            DTI12_5.Cell(cell_word+1,6).Range.Text = num2str(y_F_cell{cell_word,5});   
            DTI12_5.Cell(cell_word+1,7).Range.Text = num2str(y_F_cell{cell_word,6});    
        end

        %第二板块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.InsertBreak;   %插入分页符

        Selection.Text = '二、定向井轴向力计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,4,6);    % 4 行 6列
        DTI12_6 = Document.Tables.Item(6); % 或DTI = Tables;
        DTI12_6.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI12_6.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI12_6.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI12_6.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI12_6.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI12_6.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI12_6.Cell(1,1).Range.Text = '计算参数';
        DTI12_6.Cell(1,2).Range.Text = '最大有效轴向力(kN)';
        DTI12_6.Cell(1,3).Range.Text = '拉力余量(kN)';
        DTI12_6.Cell(1,4).Range.Text = '抗拉安全系数';
        DTI12_6.Cell(1,5).Range.Text = '抗挤安全系数';
        DTI12_6.Cell(1,6).Range.Text = '抗内压安全系数';
        DTI12_6.Cell(2,1).Range.Text = '结果大小';
        DTI12_6.Cell(3,1).Range.Text = '对应位置';
        DTI12_6.Cell(4,1).Range.Text = '校核结果';

        DTI12_6.Cell(2,2).Range.Text = num2str(result12_1_1);
        DTI12_6.Cell(2,3).Range.Text = num2str(result12_1_2);
        DTI12_6.Cell(2,4).Range.Text = num2str(result12_1_3);
        DTI12_6.Cell(2,5).Range.Text = num2str(result12_1_4);
        DTI12_6.Cell(2,6).Range.Text = num2str(result12_1_5);
        DTI12_6.Cell(3,2).Range.Text = '井口';
        DTI12_6.Cell(3,3).Range.Text = '井口';
        DTI12_6.Cell(3,4).Range.Text = '井口';
        DTI12_6.Cell(3,5).Range.Text = '井底';
        DTI12_6.Cell(3,6).Range.Text = '井口';
        DTI12_6.Cell(4,2).Range.Text = '—';
        DTI12_6.Cell(4,3).Range.Text = '—';
        DTI12_6.Cell(4,4).Range.Text = result12_3_3;
        DTI12_6.Cell(4,5).Range.Text = result12_3_4;
        DTI12_6.Cell(4,6).Range.Text = result12_3_5;

        %导出图片
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        hObject_fig12_1 = findobj(fig12_1);
        hObject_fig12_1 = hObject_fig12_1(1,1);

        hObject_fig1_2 = findobj(fig12_2);
        hObject_fig1_2 = hObject_fig1_2(1,1);

        hObject_fig1_3 = findobj(fig12_3);
        hObject_fig1_3 = hObject_fig1_3(1,1);

        hgexport(hObject_fig1_2, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        hgexport(hObject_fig12_1, '-clipboard');    %将图形复制到Microsoft? Windows粘贴板
        Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %将图形粘贴到当前文档里

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        hgexport(hObject_fig1_3, '-clipboard'); 
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        %Result_2_2报告-----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落  
        Selection.Text = '三、定向井旋转扭矩计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,4);    % 2行 4列
        DTI22_2_1 = Document.Tables.Item(7); % 或DTI = Tables;
        DTI22_2_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI22_2_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI22_2_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI22_2_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI22_2_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI22_2_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI22_2_1.Cell(1,1).Range.Text = '钻压（kN）';
        DTI22_2_1.Cell(1,3).Range.Text = '套管转速（r/min）';
        DTI22_2_1.Cell(2,1).Range.Text = '钻头外径(mm)';
        DTI22_2_1.Cell(2,3).Range.Text = '许用抗扭安全系数';
%             DTI22_2_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI22_2_1.Cell(1,2).Range.Text = char(M22_1);
        DTI22_2_1.Cell(1,4).Range.Text = char(M22_2);
        DTI22_2_1.Cell(2,2).Range.Text = char(M22_3);
        DTI22_2_1.Cell(2,4).Range.Text = char(M22_4);


        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,7,2);    % 7 行 6列
        DTI22_2_2 = Document.Tables.Item(8); % 或DTI = Tables;
        DTI22_2_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI22_2_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI22_2_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI22_2_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI22_2_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI22_2_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI22_2_2.Cell(1,1).Range.Text = '轴向拉伸套管许用扭矩（井口）（kN.m）';
        DTI22_2_2.Cell(2,1).Range.Text = '轴向压缩套管许用扭矩（钻头附近）（kN.m）';
        DTI22_2_2.Cell(3,1).Range.Text = '动态旋转套管实际最大扭矩(井口)（kN.m）';
        DTI22_2_2.Cell(4,1).Range.Text = '套管旋转时最大扭转剪应力（MPa）';
        DTI22_2_2.Cell(5,1).Range.Text = '抗扭安全系数';
        DTI22_2_2.Cell(6,1).Range.Text = '管柱校核结果';
        DTI22_2_2.Cell(7,1).Range.Text = '套管螺纹校核结果螺纹';
        %填写数据
        DTI22_2_2.Cell(1,2).Range.Text = char(Q_i4(1,1));                  
        DTI22_2_2.Cell(2,2).Range.Text = char(Q_i5(end,1));   
        DTI22_2_2.Cell(3,2).Range.Text = char(Q_i9(1,1));   
        DTI22_2_2.Cell(4,2).Range.Text = char(Q_i10(1,1));   
        DTI22_2_2.Cell(5,2).Range.Text = char(Q_i11(1,1));   
        DTI22_2_2.Cell(6,2).Range.Text = char(Q_i12(1,1));   
        DTI22_2_2.Cell(7,2).Range.Text = char(Q_i13(1,1));
        
        %Result_3_2报告-----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '四、定向井屈曲分析计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,4,4);    % 2行 4列
        DTI32_1 = Document.Tables.Item(9); % 或DTI = Tables;
        DTI32_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI32_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI32_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI32_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI32_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI32_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        %合并单元格
        DTI32_1.Cell(1, 3).Merge(DTI32_1.Cell(1, 4));
        DTI32_1.Cell(2, 3).Merge(DTI32_1.Cell(2, 4));
        
        % 指定各单元格内容
        DTI32_1.Cell(1,1).Range.Text = '钻压(kN)';
        DTI32_1.Cell(1,2).Range.Text = '最大井斜角(°)';
        DTI32_1.Cell(1,3).Range.Text = '套管旋转扭矩(kN·m)';
        DTI32_1.Cell(3,1).Range.Text = '直井段管柱正弦弯曲临界压力(kN)';
        DTI32_1.Cell(3,2).Range.Text = '直井段管柱螺旋弯曲临界压力(kN)';
        DTI32_1.Cell(3,3).Range.Text = '斜直井段管柱正弦弯曲临界压力(kN)';
        DTI32_1.Cell(3,4).Range.Text = '斜直井段管柱螺旋弯曲临界压力(kN)';

        %填写数据
        DTI32_1.Cell(2,1).Range.Text = char(M32_1);
        DTI32_1.Cell(2,2).Range.Text = char(M32_9);
        DTI32_1.Cell(2,3).Range.Text = char(M32_10);
        DTI32_1.Cell(4,1).Range.Text = char(M32_11);
        DTI32_1.Cell(4,2).Range.Text = char(M32_12);
        DTI32_1.Cell(4,3).Range.Text = char(M32_13);
        DTI32_1.Cell(4,4).Range.Text = char(M32_27);

        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,8,3);    % size(T_i8,1)+3 行 6列
        DTI32_2 = Document.Tables.Item(10); % 或DTI = Tables;
        DTI32_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI32_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI32_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI32_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI32_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI32_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
         
        % 指定标题各单元格内容
        DTI32_2.Cell(1,1).Range.Text = '直井管柱发生正弦弯曲临界压力（kN）';
        DTI32_2.Cell(2,1).Range.Text = '直井管柱发生螺旋弯曲临界压力（kN）';
        DTI32_2.Cell(3,1).Range.Text = '斜直井段管柱发生正弦弯曲临界压力（kN）';
        DTI32_2.Cell(4,1).Range.Text = '斜直井段管柱发生螺旋弯曲临界压力（kN）';
        DTI32_2.Cell(5,1).Range.Text = '判断管柱是否发生屈曲';
        DTI32_2.Cell(5,2).Range.Text = '对应井段（m）';
        DTI32_2.Cell(5,3).Range.Text = '与井壁最大附加接触力（kN/m）';
        % 合并单元格
        DTI32_2.Cell(1, 2).Merge(DTI32_2.Cell(1, 3));
        DTI32_2.Cell(2, 2).Merge(DTI32_2.Cell(2, 3));
        DTI32_2.Cell(3, 2).Merge(DTI32_2.Cell(3, 3));
        DTI32_2.Cell(4, 2).Merge(DTI32_2.Cell(4, 3));

        %填写数据
        DTI32_2.Cell(1,2).Range.Text = num2str(min(str2num(char(M32_10)))); 
        DTI32_2.Cell(2,2).Range.Text = num2str(min(str2num(char(M32_11))));  
        DTI32_2.Cell(3,2).Range.Text = num2str(min(str2num(char(M32_12)))); 
        DTI32_2.Cell(4,2).Range.Text = num2str(min(str2num(char(M32_13))));  
%         for U8_row = 1:size(R_i8,1)
%             DTI32_2.Cell(U8_row+3,1).Range.Text = char(R_i8(U8_row,1)); %管柱失稳/未失稳
%         end
        DTI32_2.Cell(6,1).Range.Text = '管柱未失稳';  
        DTI32_2.Cell(7,1).Range.Text = '管柱正弦失稳';  
        DTI32_2.Cell(8,1).Range.Text = '管柱螺旋失稳';  
        DTI32_2.Cell(6,2).Range.Text = [char(T_i1(new_a,1)),'~',char(T_i1(new_b,1))];  
        DTI32_2.Cell(6,3).Range.Text = num2str(max(str2num(char(T_i13(new_a:new_b,1)))));  
    if new_a~=0 && new_b~=0 && new_c~=0 && new_d~=0 && new_e~=0 && new_f~=0
        DTI32_2.Cell(7,2).Range.Text = [char(T_i1(new_c,1)),'~',char(T_i1(new_d,1))];  
        DTI32_2.Cell(8,2).Range.Text = [char(T_i1(new_e,1)),'~',char(T_i1(new_f,1))];  
        DTI32_2.Cell(7,3).Range.Text = num2str(max(str2num(char(T_i13(new_c:new_d,1)))));  
        DTI32_2.Cell(8,3).Range.Text = num2str(max(str2num(char(T_i13(new_e:new_f,1))))); 
    elseif new_c==0 && new_d==0 && new_e~=0 && new_f~=0
        DTI32_2.Cell(7,2).Range.Text = '--';  
        DTI32_2.Cell(8,2).Range.Text = [char(T_i1(new_e,1)),'~',char(T_i1(new_f,1))];  
        DTI32_2.Cell(7,3).Range.Text = '--';  
        DTI32_2.Cell(8,3).Range.Text = num2str(max(str2num(char(T_i13(new_e:new_f,1))))); 
    elseif new_c~=0 && new_d~=0 && new_e==0 && new_f==0
        DTI32_2.Cell(7,2).Range.Text = [char(T_i1(new_c,1)),'~',char(T_i1(new_d,1))];  
        DTI32_2.Cell(8,2).Range.Text = '--';  
        DTI32_2.Cell(7,3).Range.Text = num2str(max(str2num(char(T_i13(new_c:new_d,1)))));  
        DTI32_2.Cell(8,3).Range.Text = '--'; 
    elseif new_c==0 && new_d==0 && new_e==0 && new_f==0
        DTI32_2.Cell(7,2).Range.Text = '--';  
        DTI32_2.Cell(8,2).Range.Text = '--';  
        DTI32_2.Cell(7,3).Range.Text = '--';  
        DTI32_2.Cell(8,3).Range.Text = '--'; 
    end
        %导出图片-------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        hObject_fig32_1 = findobj(fig32_1);
        hObject_fig32_1 = hObject_fig32_1(1,1);
        hgexport(hObject_fig32_1, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;
        
        %Result_4_2报告----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        Selection.Text = '五、定向井摩阻扭矩计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,6);    % 2行 6列
        DTI42_1 = Document.Tables.Item(11); % 或DTI = Tables;
        DTI42_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI42_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI42_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI42_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI42_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI42_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI42_1.Cell(1,1).Range.Text = '钻井套管外径（m）';
        DTI42_1.Cell(1,2).Range.Text = '是否添加扶正器（kN）';
        DTI42_1.Cell(1,3).Range.Text = '扶正器外径（m）';
        DTI42_1.Cell(1,4).Range.Text = '扶正器下入井段开始点（m）';
        DTI42_1.Cell(1,5).Range.Text = '扶正器下入间隔（m）';
        DTI42_1.Cell(1,6).Range.Text = '扶正器下入数量（个）';
%             DTI42_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI42_1.Cell(2,1).Range.Text = char(M42_14);
        DTI42_1.Cell(2,2).Range.Text = char(M42_15);
        DTI42_1.Cell(2,3).Range.Text = char(M42_16);
        DTI42_1.Cell(2,4).Range.Text = char(M42_17);
        DTI42_1.Cell(2,5).Range.Text = char(M42_18);
        DTI42_1.Cell(2,6).Range.Text = char(M42_19);

        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,5);    % 2 行 3列
        DTI4_2 = Document.Tables.Item(12); % 或DTI = Tables;
        DTI4_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI4_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI4_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI4_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI4_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI4_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI4_2.Cell(1,1).Range.Text = '计算参数';
        DTI4_2.Cell(1,2).Range.Text = '最大摩擦阻力（kN）';
        DTI4_2.Cell(1,3).Range.Text = '最大摩擦扭矩(kN·m)';
        DTI4_2.Cell(1,4).Range.Text = '综合抗扭安全系数';
        DTI4_2.Cell(1,5).Range.Text = '校核结果';

        %填写数据
        DTI4_2.Cell(2,1).Range.Text = '结果大小'; 
        DTI4_2.Cell(2,2).Range.Text = char(VV_1_2);
        DTI4_2.Cell(2,3).Range.Text = char(VV_1_3);
        DTI4_2.Cell(2,4).Range.Text = char(VV_1_4);
        DTI4_2.Cell(2,5).Range.Text = char(VV_1_5);
        
        %导出图片-------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        hObject_fig42_1 = findobj(fig42_1);
        hObject_fig42_1 = hObject_fig42_1(1,1);

        hObject_fig42_2 = findobj(fig42_2);
        hObject_fig42_2 = hObject_fig42_2(1,1);

        hgexport(hObject_fig42_1, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        hgexport(hObject_fig42_2, '-clipboard');    %将图形复制到Microsoft? Windows粘贴板
        Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %将图形粘贴到当前文档里
        
        %Result_5_2报告-----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '六、定向井螺纹工作力学计算结果';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,5);    % 2行 5列
        DTI52_1 = Document.Tables.Item(13); % 或DTI = Tables;
        DTI52_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI52_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI52_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI52_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI52_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI52_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI52_1.Cell(1,1).Range.Text = '最大轴向力（kN）';
        DTI52_1.Cell(1,2).Range.Text = '最大钻压（kN）';
        DTI52_1.Cell(1,3).Range.Text = '管外最大液压（MPa）';
        DTI52_1.Cell(1,4).Range.Text = '管内最大液压（MPa）';
        DTI52_1.Cell(1,5).Range.Text = '最大扭矩（kN.m）';
%             DTI52_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据M的值
        DTI52_1.Cell(2,1).Range.Text = char(table_Data52_3(1,1));
        DTI52_1.Cell(2,2).Range.Text = char(table_Data52_3(1,2));
        DTI52_1.Cell(2,3).Range.Text = char(table_Data52_3(1,3));
        DTI52_1.Cell(2,4).Range.Text = char(table_Data52_3(1,4));
        DTI52_1.Cell(2,5).Range.Text = char(table_Data52_3(1,5));

        %第二个已知表格
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落  
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,8);    % 2行 8列
        DTI52_2 = Document.Tables.Item(14); % 或DTI = Tables;
        DTI52_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI52_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI52_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI52_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI52_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI52_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI52_2.Cell(1,1).Range.Text = '螺纹类型';
        DTI52_2.Cell(1,2).Range.Text = '套管尺寸（mm）';
        DTI52_2.Cell(1,3).Range.Text = '钢材';
        DTI52_2.Cell(1,4).Range.Text = '管材屈服强度（MPa）';
        DTI52_2.Cell(1,5).Range.Text = '管材极限抗拉强度（MPa）';
        DTI52_2.Cell(1,6).Range.Text = '螺纹升角（°）';
        DTI52_2.Cell(1,7).Range.Text = '承载面夹角（°）';
        DTI52_2.Cell(1,8).Range.Text = '导向面夹角（°）';
%             DTI52_2.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据  Z1
        DTI52_2.Cell(2,1).Range.Text = char(table_Data52_1(1,1));
        DTI52_2.Cell(2,2).Range.Text = char(table_Data52_1(1,2));
        DTI52_2.Cell(2,3).Range.Text = char(table_Data52_1(1,3));
        DTI52_2.Cell(2,4).Range.Text = char(table_Data52_1(1,4));
        DTI52_2.Cell(2,5).Range.Text = char(table_Data52_1(1,5));
        DTI52_2.Cell(2,6).Range.Text = char(table_Data52_1(1,6));
        DTI52_2.Cell(2,7).Range.Text = char(table_Data52_1(1,7));
        DTI52_2.Cell(2,8).Range.Text = char(table_Data52_1(1,8));
        
        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,11,2);    % 11 行 2列
        DTI52_3 = Document.Tables.Item(15); % 或DTI = Tables;
        DTI52_3.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI52_3.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI52_3.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI52_3.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI52_3.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI52_3.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI52_3.Cell(1,1).Range.Text = '套管螺纹拉扭等效应力(MPa)';
        DTI52_3.Cell(2,1).Range.Text = '套管螺纹拉扭极限应力(MPa)';
        DTI52_3.Cell(3,1).Range.Text = '套管螺纹拉扭安全系数';
        DTI52_3.Cell(4,1).Range.Text = '套管螺纹压扭等效应力(MPa)';
        DTI52_3.Cell(5,1).Range.Text = '套管螺纹压扭极限应力(MPa)';
        DTI52_3.Cell(6,1).Range.Text = '套管螺纹压扭安全系数';
        DTI52_3.Cell(7,1).Range.Text = '套管螺纹等效密封应力(MPa)';
        DTI52_3.Cell(8,1).Range.Text = '套管螺纹极限密封应力(MPa)';
        DTI52_3.Cell(9,1).Range.Text = '套管内部液压螺纹径向变形(mm)';
        DTI52_3.Cell(10,1).Range.Text = '套管螺纹密封安全系数';
        DTI52_3.Cell(11,1).Range.Text = '套管螺纹可靠性校核结果';
        %填写数据 Z2
        DTI52_3.Cell(1,2).Range.Text = char(table_Data52_2(1,1));
        DTI52_3.Cell(2,2).Range.Text = char(table_Data52_2(2,1));
        DTI52_3.Cell(3,2).Range.Text = char(table_Data52_2(3,1));
        DTI52_3.Cell(4,2).Range.Text = char(table_Data52_2(4,1));
        DTI52_3.Cell(5,2).Range.Text = char(table_Data52_2(5,1));
        DTI52_3.Cell(6,2).Range.Text = char(table_Data52_2(6,1));
        DTI52_3.Cell(7,2).Range.Text = char(table_Data52_2(7,1));
        DTI52_3.Cell(8,2).Range.Text = char(table_Data52_2(8,1));
        DTI52_3.Cell(9,2).Range.Text = char(table_Data52_2(9,1));
        DTI52_3.Cell(10,2).Range.Text = char(table_Data52_2(10,1));
        DTI52_3.Cell(11,2).Range.Text = char(table_Data52_2(11,1));
        
        %Result6_2报告-----------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落    
        Selection.Text = '七、定向井磨损缺陷评价及剩余强度分析';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,6);    % 2行 6列
        DTI62_1 = Document.Tables.Item(16); % 或DTI = Tables;
        DTI62_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI62_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI62_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI62_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI62_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI62_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI62_1.Cell(1,1).Range.Text = '钻井套管钢级';
        DTI62_1.Cell(1,2).Range.Text = '套管屈服强度（MPa）';
        DTI62_1.Cell(1,3).Range.Text = '套管磨损系数(×10^(-12)Pa^(-1))';
        DTI62_1.Cell(1,4).Range.Text = '钻井套管外径（m）';
        DTI62_1.Cell(1,5).Range.Text = '转速（r/min）';
        DTI62_1.Cell(1,6).Range.Text = '机械钻速（m/h）';

        %填写数据
        DTI62_1.Cell(2,1).Range.Text = char(M_i20);
        DTI62_1.Cell(2,2).Range.Text = char(M_i21);
        DTI62_1.Cell(2,3).Range.Text = char(M_i22);
        DTI62_1.Cell(2,4).Range.Text = char(M_i23);
        DTI62_1.Cell(2,5).Range.Text = char(M_i24);
        DTI62_1.Cell(2,6).Range.Text = char(M_i25);

        %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 

        %绘制数据表格-------------------------------------------------------------------------------------------------------------------
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,6,2);    % 7 行 6列
        DTI62_2 = Document.Tables.Item(17); % 或DTI = Tables;
        DTI62_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI62_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI62_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI62_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI62_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI62_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容-------------------------------------------------------------------------------------------------------------
        DTI62_2.Cell(1,1).Range.Text = '套管钻井磨损井段（m）';
        DTI62_2.Cell(2,1).Range.Text = '套管钻井管柱最大磨损深度（mm）';
        DTI62_2.Cell(3,1).Range.Text = '均匀磨损极限剩余抗挤强度（MPa）';
        DTI62_2.Cell(4,1).Range.Text = '抗挤强度降低百分比（%）';
        DTI62_2.Cell(5,1).Range.Text = '均匀磨损极限剩余抗拉强度（kN）';
        DTI62_2.Cell(6,1).Range.Text = '抗拉强度降低百分比（%）';
        %填写数据----------------------------------------------------------------------------------------------------------------------
        DTI62_2.Cell(1,2).Range.Text = char(cell2mat([X_i1(X_b,1),'~',X_i1(end,1)]));  
        DTI62_2.Cell(2,2).Range.Text = num2str(max(str2num(char(X_i12))));
        DTI62_2.Cell(3,2).Range.Text = num2str(max(str2num(char(X_i14))));
        DTI62_2.Cell(4,2).Range.Text = num2str(max(str2num(char(X_i15))));
        DTI62_2.Cell(5,2).Range.Text = num2str(max(str2num(char(X_i16))));
        DTI62_2.Cell(6,2).Range.Text = num2str(max(str2num(char(X_i17))));
        %导出图片----------------------------------------------------------------------------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落

        hObject_fig62_1 = findobj(fig62_1);
        hObject_fig62_1 = hObject_fig62_1(1,1);

        hObject_fig62_2 = findobj(fig62_2);
        hObject_fig62_2 = hObject_fig62_2(1,1);

        hObject_fig62_3 = findobj(fig62_3);
        hObject_fig62_3 = hObject_fig62_3(1,1);

        hObject_fig62_4 = findobj(fig62_4);
        hObject_fig62_4 = hObject_fig62_4(1,1);

        hgexport(hObject_fig62_1, '-clipboard');
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        hgexport(hObject_fig62_2, '-clipboard');    %将图形复制到Microsoft? Windows粘贴板
        Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %将图形粘贴到当前文档里

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        hgexport(hObject_fig62_3, '-clipboard'); 
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        hgexport(hObject_fig62_4, '-clipboard'); 
        Selection.Range.Paragraphs.Item(1).Range.Paste;

        %Result_7_1报告------------------------------------------------------
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落   
        Selection.Text = '八、定向井管柱及螺纹疲劳损伤及疲劳寿命预测';
        Selection.Font.Size = 14;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '已知：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 1; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.Font.Bold = 0; 
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,7);    % 2行 5列
        DTI72_1 = Document.Tables.Item(18); % 或DTI = Tables;
        DTI72_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI72_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI72_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI72_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI72_1.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI72_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        % 指定各单元格内容
        DTI72_1.Cell(1,1).Range.Text = '最大轴向力（kN）';
        DTI72_1.Cell(1,2).Range.Text = '最大钻压（kN）';
        DTI72_1.Cell(1,3).Range.Text = '最大剪切力（MPa）';
        DTI72_1.Cell(1,4).Range.Text = '管柱是否发生屈曲';
        DTI72_1.Cell(1,5).Range.Text = '管外最大液压（MPa）';
        DTI72_1.Cell(1,6).Range.Text = '管内最大液压（MPa）';
        DTI72_1.Cell(1,7).Range.Text = '最大扭矩（kN.m）';
%             DTI72_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

        %填写数据
        DTI72_1.Cell(2,1).Range.Text = char(M_72_28);
        DTI72_1.Cell(2,2).Range.Text = char(M_72_29);
        DTI72_1.Cell(2,3).Range.Text = char(M_72_30);
        DTI72_1.Cell(2,4).Range.Text = char(M_72_31);
        DTI72_1.Cell(2,5).Range.Text = char(M_72_32);
        DTI72_1.Cell(2,6).Range.Text = char(M_72_33);
        DTI72_1.Cell(2,7).Range.Text = char(M_72_34);
        
         %”求得“模块
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '求得：';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.Font.Bold = 0; 

        %（1）合成应力计算结果
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '（1）合成应力计算结果';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,16,2);    % 11 行 2列
        DTI72_2 = Document.Tables.Item(19); % 或DTI = Tables;
        DTI72_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI72_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI72_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI72_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI72_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI72_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI72_2.Cell(1,1).Range.Text = '螺纹类型';
        DTI72_2.Cell(2,1).Range.Text = '轴向应力（MPa）';
        DTI72_2.Cell(3,1).Range.Text = '最大剪切应力（MPa）';
        DTI72_2.Cell(4,1).Range.Text = '管柱弯曲应力（MPa）';
        DTI72_2.Cell(5,1).Range.Text = '正弦屈曲应力（MPa）';
        DTI72_2.Cell(6,1).Range.Text = '螺旋屈曲应力（MPa）';
        DTI72_2.Cell(7,1).Range.Text = '弯曲附加应力（MPa）';
        DTI72_2.Cell(8,1).Range.Text = '径向应力（MPa）';
        DTI72_2.Cell(9,1).Range.Text = '切向应力（MPa）';
        DTI72_2.Cell(10,1).Range.Text = 'Mises等效应力1（MPa）';
        DTI72_2.Cell(11,1).Range.Text = 'Mises等效应力2（MPa）';
        DTI72_2.Cell(12,1).Range.Text = 'Tresa等效应力1（MPa）';
        DTI72_2.Cell(13,1).Range.Text = 'Tresa等效应力2（MPa）';
        DTI72_2.Cell(14,1).Range.Text = '平均应力（MPa）';
        DTI72_2.Cell(15,1).Range.Text = '应力幅（MPa）';
        DTI72_2.Cell(16,1).Range.Text = '应力比';
        %填写数据
        DTI72_2.Cell(1,2).Range.Text = char(table_Data_Y(1,1));
        DTI72_2.Cell(2,2).Range.Text = char(table_Data_Y(1,2));
        DTI72_2.Cell(3,2).Range.Text = char(table_Data_Y(1,3));
        DTI72_2.Cell(4,2).Range.Text = char(table_Data_Y(1,4));
        DTI72_2.Cell(5,2).Range.Text = char(table_Data_Y(1,5));
        DTI72_2.Cell(6,2).Range.Text = char(table_Data_Y(1,6));
        DTI72_2.Cell(7,2).Range.Text = char(table_Data_Y(1,7));
        DTI72_2.Cell(8,2).Range.Text = char(table_Data_Y(1,8));
        DTI72_2.Cell(9,2).Range.Text = char(table_Data_Y(1,9));
        DTI72_2.Cell(10,2).Range.Text = char(table_Data_Y(1,10));
        DTI72_2.Cell(11,2).Range.Text = char(table_Data_Y(1,11));
        DTI72_2.Cell(12,2).Range.Text = char(table_Data_Y(1,12));
        DTI72_2.Cell(13,2).Range.Text = char(table_Data_Y(1,13));
        DTI72_2.Cell(14,2).Range.Text = char(table_Data_Y(1,14));
        DTI72_2.Cell(15,2).Range.Text = char(table_Data_Y(1,15));
        DTI72_2.Cell(16,2).Range.Text = char(table_Data_Y(1,16));
        
        %（2）疲劳损伤和疲劳寿命计算结果
         Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落
        Selection.Text = '（2）疲劳损伤和疲劳寿命计算结果';
        Selection.Font.Size = 12;
        Selection.Font.Bold = 0; 
        Selection.MoveDown;
        Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
        Selection.TypeParagraph;    %插入新的空段落      
        Selection.Start = Content.end; % 设定光标位置为最后
        
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,11,2);    % 11 行 2列
        DTI72_2 = Document.Tables.Item(20); % 或DTI = Tables;
        DTI72_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
        DTI72_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
        DTI72_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
        DTI72_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
        DTI72_2.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式
        column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
        row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高
        DTI72_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %单元格内容居中
        
        % 指定各单元格内容
        DTI72_2.Cell(1,1).Range.Text = '材料屈服强度（MPa）';
        DTI72_2.Cell(2,1).Range.Text = '等效循环应力（MPa）';
        DTI72_2.Cell(3,1).Range.Text = '疲劳循环寿命极限';
        DTI72_2.Cell(4,1).Range.Text = '疲劳应力极限（MPa）';
        DTI72_2.Cell(5,1).Range.Text = '修正疲劳应力极限（MPa）';
        DTI72_2.Cell(6,1).Range.Text = '应力寿命曲线截距';
        DTI72_2.Cell(7,1).Range.Text = '应力寿命曲线斜率';
        DTI72_2.Cell(8,1).Range.Text = '套管疲劳损伤总量';
        DTI72_2.Cell(9,1).Range.Text = '单次循环疲劳损伤度';
        DTI72_2.Cell(10,1).Range.Text = '套管管体疲劳寿命';
        DTI72_2.Cell(11,1).Range.Text = '套管井底螺纹疲劳寿命';
        %填写数据
        DTI72_2.Cell(1,2).Range.Text = char(table_Data_Y(1,17));
        DTI72_2.Cell(2,2).Range.Text = char(table_Data_Y(1,18));
        DTI72_2.Cell(3,2).Range.Text = char(table_Data_Y(1,19));
        DTI72_2.Cell(4,2).Range.Text = char(table_Data_Y(1,20));
        DTI72_2.Cell(5,2).Range.Text = char(table_Data_Y(1,21));
        DTI72_2.Cell(6,2).Range.Text = char(table_Data_Y(1,22));
        DTI72_2.Cell(7,2).Range.Text = char(table_Data_Y(1,23));
        DTI72_2.Cell(8,2).Range.Text = char(table_Data_Y(1,24));
        DTI72_2.Cell(9,2).Range.Text = char(table_Data_Y(1,25));
        DTI72_2.Cell(10,2).Range.Text = char(table_Data_Y(1,26));
        DTI72_2.Cell(11,2).Range.Text = char(table_Data_Y(1,27));
        
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        
        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
        Document.Save; % 保存文档
        msgbox('导出完成！','提示');
    end


% --- Executes on button press in button20.
function button20_Callback(hObject, eventdata, handles)
global pass_Data P_B_1 ctrl_stat strORdir
ctrl_stat = [ctrl_stat;{['>>打开了井眼轨道(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    P_B_1 = Basic_1(P_B_1);    %调用Basic_1.m文件
    pass_Data(1,1) = {P_B_1};
    if size(P_B_1,1) == 2 && isempty(P_B_1{2,4})
        strORdir = 0   %判断为既不是直井也不是定向井
        set(handles.text9,'String','请输入基础数据')
        set(handles.pushbutton36,'Enable','off')
        set(handles.pushbutton38,'Enable','off')
        set(handles.pushbutton39,'Enable','off')
        set(handles.pushbutton40,'Enable','off')
        set(handles.pushbutton41,'Enable','off')
        set(handles.pushbutton42,'Enable','off')
        set(handles.pushbutton43,'Enable','off')
    elseif size(P_B_1,1) == 2 && ~isempty(P_B_1{2,4})
        strORdir = 1   %判断是直井
        set(handles.text9,'String','当前为直井')
        set(handles.pushbutton36,'Enable','on')
        set(handles.pushbutton38,'Enable','on')
        set(handles.pushbutton39,'Enable','on')
        set(handles.pushbutton40,'Enable','on')
        set(handles.pushbutton41,'Enable','on')
        set(handles.pushbutton42,'Enable','on')
        set(handles.pushbutton43,'Enable','on')
    else
        strORdir = 2   %判断为定向井
        set(handles.text9,'String','当前为二维定向井')
        set(handles.pushbutton36,'Enable','on')
        set(handles.pushbutton38,'Enable','on')
        set(handles.pushbutton39,'Enable','on')
        set(handles.pushbutton40,'Enable','on')
        set(handles.pushbutton41,'Enable','on')
        set(handles.pushbutton42,'Enable','on')
        set(handles.pushbutton43,'Enable','on')
    end
    ctrl_stat = [ctrl_stat;{['>>井眼轨道输入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了井眼轨道(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

% --- Executes on button press in button21.
function button21_Callback(hObject, eventdata, handles)
global pass_Data P_B_2 ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了井身结构(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    P_B_2 = Basic_2(P_B_2);    %调用Basic_2.m文件
    pass_Data(1,2) = {P_B_2};
    ctrl_stat = [ctrl_stat;{['>>井身结构输入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了井身结构(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

% --- Executes on button press in button22.
function button22_Callback(hObject, eventdata, handles)
% hObject    handle to button22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in button23.
function button23_Callback(hObject, eventdata, handles)
global pass_Data y_B_4 ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了管柱组合(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    y_B_4 = Basic_4(y_B_4);    %调用Basic_4.m文件
    pass_Data(1,3) = {y_B_4};
    ctrl_stat = [ctrl_stat;{['>>管柱组合输入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了管柱组合(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end


% --- Executes on button press in button26.
function button26_Callback(hObject, eventdata, handles)
global pass_Data P_B_5 ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了钻井液性能(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    P_B_5 = Basic_5(P_B_5);
    pass_Data(1,4) = {P_B_5};
    ctrl_stat = [ctrl_stat;{['>>钻井液性能输入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了钻井液性能(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

% --- Executes on button press in button27.
function button27_Callback(hObject, eventdata, handles)
global pass_Data P_B_6 ctrl_stat
ctrl_stat = [ctrl_stat;{['>>打开了相关基础参数录入(',char(datestr(now)),')']}];
set(handles.listbox1,'String',ctrl_stat)
try
    P_B_6 = Basic_6(P_B_6);
    pass_Data(1,5) = {P_B_6};
    ctrl_stat = [ctrl_stat;{['>>相关基础参数录入完毕(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>退出了相关基础参数录入(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end

% --- Executes during object creation, after setting all properties.
function text9_CreateFcn(hObject, eventdata, handles)
set(hObject,'String','请输入基础数据')

function valueBool = strmodEndOrNot()
global pass_Data
if isempty(pass_Data{6}) && isempty(pass_Data{7}) && isempty(pass_Data{8}) && ...
    isempty(pass_Data{9})  && isempty(pass_Data{10}) && isempty(pass_Data{11}) && ...
    isempty(pass_Data{12}) && isempty(pass_Data{13}) && isempty(pass_Data{14}) && ...
    isempty(pass_Data{15}) && isempty(pass_Data{16}) && isempty(pass_Data{17}) && ...
    isempty(pass_Data{18}) && isempty(pass_Data{20}) && ...
    isempty(pass_Data{21}) && isempty(pass_Data{22}) && isempty(pass_Data{23}) && ...
    isempty(pass_Data{24}) && isempty(pass_Data{27}) && isempty(pass_Data{30})
    valueBool = false;
else
    valueBool = true;
end

function valueBool = dirmodEndOrNot()
global pass_Data
if isempty(pass_Data{31}) && isempty(pass_Data{32}) && isempty(pass_Data{33}) && ...
    isempty(pass_Data{34})  && isempty(pass_Data{35}) && isempty(pass_Data{36}) && ...
    isempty(pass_Data{37}) && isempty(pass_Data{38}) && isempty(pass_Data{39}) && ...
    isempty(pass_Data{40}) && isempty(pass_Data{41}) && isempty(pass_Data{42}) && ...
    isempty(pass_Data{43}) && isempty(pass_Data{44}) && isempty(pass_Data{45}) && ...
    isempty(pass_Data{46}) && isempty(pass_Data{47}) && isempty(pass_Data{48})
    valueBool = false;
else
    valueBool = true;
end

% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat strORdir
if strORdir == 1
        ctrl_stat = [ctrl_stat;{['>>打开了直井套管柱轴向载荷计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_1(pass_Data);
        ctrl_stat = [ctrl_stat;{['>>直井套管柱轴向载荷计算完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        %判断所有的模块是否计算完毕------是打开导出报告------否则跳过-------------
        bool_value = strmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了直井套管柱轴向载荷计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
elseif strORdir == 2
        ctrl_stat = [ctrl_stat;{['>>打开了定向井眼轴向载荷计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_1_2(pass_Data);
        ctrl_stat = [ctrl_stat;{['>>定向井眼轴向载荷计算完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        bool_value = dirmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了定向井眼轴向载荷计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
else
    set(hObject,'Enable','off')
end

function pushbutton39_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat strORdir
if strORdir == 1
        ctrl_stat = [ctrl_stat;{['>>打开了直井套管柱扭矩计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_2_1(pass_Data);
        ctrl_stat = [ctrl_stat;{['>>直井旋转扭矩计算完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        %判断所有的模块是否计算完毕------是打开导出报告------否则跳过-------------
        bool_value = strmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了直井旋转扭矩计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
elseif strORdir == 2
        ctrl_stat = [ctrl_stat;{['>>打开了定向井管柱旋转扭矩计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_2_2(pass_Data);       
        ctrl_stat = [ctrl_stat;{['>>定向井管柱旋转扭矩计算完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        bool_value = dirmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了定向井管柱旋转扭矩计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
else
    set(hObject,'Enable','off')
end

function pushbutton41_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat strORdir
if strORdir == 1
        ctrl_stat = [ctrl_stat;{['>>打开了直井屈曲分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_3_1(pass_Data);
        ctrl_stat = [ctrl_stat;{['>>直井屈曲分析完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        %判断所有的模块是否计算完毕------是打开导出报告------否则跳过-------------
        bool_value = strmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了直井屈曲分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
elseif strORdir == 2
        ctrl_stat = [ctrl_stat;{['>>打开了定向井管柱轴向力和屈曲行为分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_3_2(pass_Data);       
        ctrl_stat = [ctrl_stat;{['>>定向井管柱轴向力和屈曲行为分析完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        bool_value = dirmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了定向井管柱轴向力和屈曲行为分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
else
    set(hObject,'Enable','off')
end

function pushbutton36_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat strORdir
if strORdir == 1
        ctrl_stat = [ctrl_stat;{['>>打开了直井摩阻、扭矩计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_4_1(pass_Data);
        ctrl_stat = [ctrl_stat;{['>>直井摩阻、扭矩计算完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        %判断所有的模块是否计算完毕------是打开导出报告------否则跳过-------------
        bool_value = strmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了直井摩阻、扭矩计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
elseif strORdir == 2
        ctrl_stat = [ctrl_stat;{['>>打开了定向井眼摩阻、扭矩计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_4_2(pass_Data);       
        ctrl_stat = [ctrl_stat;{['>>定向井眼摩阻、扭矩计算完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        bool_value = dirmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了定向井眼摩阻、扭矩计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
else
    set(hObject,'Enable','off')
end

function pushbutton38_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat strORdir
if strORdir == 1
        ctrl_stat = [ctrl_stat;{['>>打开了直井螺纹受力计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_5_1(pass_Data);
        ctrl_stat = [ctrl_stat;{['>>直井螺纹受力计算完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        %判断所有的模块是否计算完毕------是打开导出报告------否则跳过-------------
        bool_value = strmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了直井螺纹受力计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
elseif strORdir == 2
        ctrl_stat = [ctrl_stat;{['>>打开了定向井螺纹工作力学(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_5_2(pass_Data);       
        ctrl_stat = [ctrl_stat;{['>>定向井螺纹工作力学计算完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        bool_value = dirmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了定向井螺纹工作力学计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
else
    set(hObject,'Enable','off')
end

function pushbutton40_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat strORdir
if strORdir == 1
        ctrl_stat = [ctrl_stat;{['>>打开了直井表面磨损及剩余强度计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_6_1(pass_Data);
        ctrl_stat = [ctrl_stat;{['>>直井表面磨损及剩余强度计算完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        %判断所有的模块是否计算完毕------是打开导出报告------否则跳过-------------
        bool_value = strmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了直井表面磨损及剩余强度计算(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
elseif strORdir == 2
        ctrl_stat = [ctrl_stat;{['>>打开了定向井磨损及剩余强度分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_6_2(pass_Data);       
        ctrl_stat = [ctrl_stat;{['>>定向井磨损及剩余强度分析完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        bool_value = dirmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了定向井磨损及剩余强度分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
else
    set(hObject,'Enable','off')
end

function pushbutton42_Callback(hObject, eventdata, handles)
global pass_Data ctrl_stat strORdir
if strORdir == 1
        ctrl_stat = [ctrl_stat;{['>>打开了直井疲劳损伤和疲劳寿命分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_7_1(pass_Data);
        ctrl_stat = [ctrl_stat;{['>>直井疲劳损伤和疲劳寿命分析完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        %判断所有的模块是否计算完毕------是打开导出报告------否则跳过-------------
        bool_value = strmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了直井疲劳损伤和疲劳寿命分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
elseif strORdir == 2
        ctrl_stat = [ctrl_stat;{['>>打开了定向井疲劳损伤和疲劳寿命分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    try
        pass_Data = Result_7_2(pass_Data);       
        ctrl_stat = [ctrl_stat;{['>>定向井疲劳损伤和疲劳寿命分析完毕(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
        bool_value = dirmodEndOrNot();
        if bool_value
            set(handles.menu1_9,'Enable','on');
        end
    catch
        ctrl_stat = [ctrl_stat;{['>>关闭了定向井疲劳损伤和疲劳寿命分析(',char(datestr(now)),')']}];
        set(handles.listbox1,'String',ctrl_stat)
    end
else
    set(hObject,'Enable','off')
end

% --- Executes during object creation, after setting all properties.
function pushbutton43_CreateFcn(hObject, eventdata, handles)
set(hObject,'Enable','off')

% --- Executes during object creation, after setting all properties.
function pushbutton39_CreateFcn(hObject, eventdata, handles)
set(hObject,'Enable','off')

% --- Executes during object creation, after setting all properties.
function pushbutton41_CreateFcn(hObject, eventdata, handles)
set(hObject,'Enable','off')

% --- Executes during object creation, after setting all properties.
function pushbutton36_CreateFcn(hObject, eventdata, handles)
set(hObject,'Enable','off')

% --- Executes during object creation, after setting all properties.
function pushbutton38_CreateFcn(hObject, eventdata, handles)
set(hObject,'Enable','off')


% --- Executes during object creation, after setting all properties.
function pushbutton40_CreateFcn(hObject, eventdata, handles)
set(hObject,'Enable','off')


% --- Executes during object creation, after setting all properties.
function pushbutton42_CreateFcn(hObject, eventdata, handles)
set(hObject,'Enable','off')


% --------------------------------------------------------------------
function p_menu4_Callback(hObject, eventdata, handles)
% hObject    handle to p_menu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function p_menu3_Callback(hObject, eventdata, handles)
% hObject    handle to p_menu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu1_9_Callback(hObject, eventdata, handles)
% hObject    handle to p_menu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uipushtool6_ClickedCallback(hObject, eventdata, handles)
global pass_Data bbb flag 
% save('C:\Users\hp\Desktop\file.mat','pass_Data');
    Basic_Data = {};
    Basic_Data{1} = pass_Data{1};
    Basic_Data{2} = pass_Data{2};
    Basic_Data{3} = pass_Data{3};
    Basic_Data{4} = pass_Data{4};
    Basic_Data{5} = pass_Data{5};

try
    Basic_Data{6} = pass_Data{6};
    if size(Basic_Data{6},1) ~= 0 && size(Basic_Data{6},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{6}}]
    end
catch
end

try
    Basic_Data{7} = pass_Data{7};
    if size(Basic_Data{7},1) ~= 0 && size(Basic_Data{7},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{7}}]
    end
catch
end

try
    Basic_Data{8} = pass_Data{8};
    if size(Basic_Data{8},1) ~= 0 && size(Basic_Data{8},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{8}}]
    end
catch
end

try
    Basic_Data{9} = pass_Data{9};
    if size(Basic_Data{9},1) ~= 0 && size(Basic_Data{9},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{9}}]
    end
catch
end

try
    Basic_Data{15} = pass_Data{15};
    if size(Basic_Data{15},1) ~= 0 && size(Basic_Data{15},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{15}}]
    end
catch
end

try
    Basic_Data{10} = pass_Data{10};
    if size(Basic_Data{10},1) ~= 0 && size(Basic_Data{10},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{10}}]
    end
catch
end

try
    Basic_Data{11} = pass_Data{11};
    if size(Basic_Data{11},1) ~= 0 && size(Basic_Data{11},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{11}}]
    end
catch
end

try
    Basic_Data{16} = pass_Data{16};
    if size(Basic_Data{16},1) ~= 0 && size(Basic_Data{16},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{16}}]
    end
catch
end

try
    Basic_Data{29} = pass_Data{29};
    if size(Basic_Data{29},1) ~= 0 && size(Basic_Data{29},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{29}}]
    end
catch
end

try
    Basic_Data{12} = pass_Data{12};
    if size(Basic_Data{12},1) ~= 0 && size(Basic_Data{12},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{12}}]
    end
catch
end

try
    Basic_Data{17} = pass_Data{17};
    if size(Basic_Data{17},1) ~= 0 && size(Basic_Data{17},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{17}}]
    end
catch
end

try
    Basic_Data{30} = pass_Data{30};
    if size(Basic_Data{30},1) ~= 0 && size(Basic_Data{30},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{30}}]
    end
catch
end

try
    Basic_Data{13} = pass_Data{13};
    if size(Basic_Data{13},1) ~= 0 && size(Basic_Data{13},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{13}}]
    end
catch
end

try
    Basic_Data{18} = pass_Data{18};
    if size(Basic_Data{18},1) ~= 0 && size(Basic_Data{18},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{18}}]
    end
catch
end

try
    Basic_Data{27} = pass_Data{27};
    if size(Basic_Data{27},1) ~= 0 && size(Basic_Data{27},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{27}}]
    end
catch
end

try
    Basic_Data{20} = pass_Data{20};
    if size(Basic_Data{20},1) ~= 0 && size(Basic_Data{20},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{20}}]
    end
catch
end

try
    Basic_Data{14} = pass_Data{14};
    if size(Basic_Data{14},1) ~= 0 && size(Basic_Data{14},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{14}}]
    end
catch
end

try
    Basic_Data{24} = pass_Data{24};
    if size(Basic_Data{24},1) ~= 0 && size(Basic_Data{24},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{24}}]
    end
catch
end

try
    Basic_Data{23} = pass_Data{23};
    if size(Basic_Data{23},1) ~= 0 && size(Basic_Data{23},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{23}}]
    end
catch
end

try
    Basic_Data{21} = pass_Data{21};
    if size(Basic_Data{21},1) ~= 0 && size(Basic_Data{21},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{21}}]
    end
catch
end

try
    Basic_Data{22} = pass_Data{22};
    if size(Basic_Data{22},1) ~= 0 && size(Basic_Data{22},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{22}}]
    end
catch
end

try
    Basic_Data{31} = pass_Data{31};
    if size(Basic_Data{31},1) ~= 0 && size(Basic_Data{31},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{31}}]
    end
catch
end

try
    Basic_Data{32} = pass_Data{32};
    if size(Basic_Data{32},1) ~= 0 && size(Basic_Data{32},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{32}}]
    end
catch
end

try
    Basic_Data{41} = pass_Data{41};
    if size(Basic_Data{41},1) ~= 0 && size(Basic_Data{41},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{41}}]
    end
catch
end

try
    Basic_Data{33} = pass_Data{33};
    if size(Basic_Data{33},1) ~= 0 && size(Basic_Data{33},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{33}}]
    end
catch
end

try
    Basic_Data{34} = pass_Data{34};
    if size(Basic_Data{34},1) ~= 0 && size(Basic_Data{34},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{34}}]
    end
catch
end

try
    Basic_Data{35} = pass_Data{35};
    if size(Basic_Data{35},1) ~= 0 && size(Basic_Data{35},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{35}}]
    end
catch
end

try
    Basic_Data{36} = pass_Data{36};
    if size(Basic_Data{36},1) ~= 0 && size(Basic_Data{36},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{36}}]
    end
catch
end

try
    Basic_Data{50} = pass_Data{50};
    if size(Basic_Data{50},1) ~= 0 && size(Basic_Data{50},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{50}}]
    end
catch
end

try
    Basic_Data{42} = pass_Data{42};
    if size(Basic_Data{42},1) ~= 0 && size(Basic_Data{42},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{42}}]
    end
catch
end

try
    Basic_Data{37} = pass_Data{37};
    if size(Basic_Data{37},1) ~= 0 && size(Basic_Data{37},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{37}}]
    end
catch
end

try
    Basic_Data{38} = pass_Data{38};
    if size(Basic_Data{38},1) ~= 0 && size(Basic_Data{38},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{38}}]
    end
catch
end

try
    Basic_Data{39} = pass_Data{39};
    if size(Basic_Data{39},1) ~= 0 && size(Basic_Data{39},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{39}}]
    end
catch
end

try
    Basic_Data{43} = pass_Data{43};
    if size(Basic_Data{43},1) ~= 0 && size(Basic_Data{43},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{43}}]
    end
catch
end

try
    Basic_Data{49} = pass_Data{49};
    if size(Basic_Data{49},1) ~= 0 && size(Basic_Data{49},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{49}}]
    end
catch
end

try
    Basic_Data{40} = pass_Data{40};
    if size(Basic_Data{40},1) ~= 0 && size(Basic_Data{40},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{40}}]
    end
catch
end

try
    Basic_Data{44} = pass_Data{44};
    if size(Basic_Data{44},1) ~= 0 && size(Basic_Data{44},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{44}}]
    end
catch
end

try
    Basic_Data{45} = pass_Data{45};
    if size(Basic_Data{45},1) ~= 0 && size(Basic_Data{45},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{45}}]
    end
catch
end

try
    Basic_Data{46} = pass_Data{46};
    if size(Basic_Data{46},1) ~= 0 && size(Basic_Data{46},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{46}}]
    end
catch
end

try
    Basic_Data{47} = pass_Data{47};
    if size(Basic_Data{47},1) ~= 0 && size(Basic_Data{47},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{47}}]
    end
catch
end

try
    Basic_Data{48} = pass_Data{48};
    if size(Basic_Data{48},1) ~= 0 && size(Basic_Data{48},2) ~= 0
    Basic_Data = [Basic_Data,{Basic_Data{48}}]
    end
catch
end

if flag == 1
    aaa = bbb;
end
try
    save(char(aaa), 'Basic_Data');
    %普通对话框
    h=dialog('name','消息','position',[650 450 200 70]);
    uicontrol('parent',h,'style','text','string','项目保存完成！','position',[50 40 120 20],'fontsize',12);
    uicontrol('parent',h,'style','pushbutton','position',...
    [80 10 50 20],'string','确定','callback','delete(gcbf)');
catch
    clear filename;
    clear pathname;
    [filename ,pathname]=uiputfile({'*.mat','MAT-files(*.mat)'},'保存');%pathname获取保存数据路径
    ccc=strcat(pathname,filename);%字符串连接
    save(char(ccc), 'Basic_Data');
end


% --------------------------------------------------------------------
function uipushtool5_ClickedCallback(hObject, eventdata, handles)
global pass_Data ctrl_stat strORdir  bbb flag
flag = 1;
clear filename;
clear pathname;
try
    ctrl_stat = [ctrl_stat;{['>>打开项目(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
    [filename ,pathname]=uigetfile({'*.mat','MAT-files(*.mat)'},'打开');%pathname获取打开数据路径
    clear str;
    str=strcat(pathname,filename);%字符串连接
    bbb= str
    load(str);
    Basic_1 = Basic_Data(1);
    Basic_2 = Basic_Data(2);
    Basic_3 = Basic_Data(3);
    Basic_4 = Basic_Data(4);
    Basic_5 = Basic_Data(5);
    
    Data{1} = Basic_1{1};
    Data{2} = Basic_2{1};
    Data{3} = Basic_3{1};
    Data{4} = Basic_4{1};
    Data{5} = Basic_5{1};
    
try
    Basic_6 = Basic_Data(6);
    if size(Basic_Data(6),1) ~= 0 && size(Basic_Data(6),2) ~= 0
    Data{6} = Basic_6{1};
    end
catch
end

try
    Basic_7 = Basic_Data(7);
    if size(Basic_Data(7),1) ~= 0 && size(Basic_Data(7),2) ~= 0
    Data{7} = Basic_7{1};
    end
catch
end
    
try
    Basic_8 = Basic_Data(8);
    if size(Basic_Data(8),1) ~= 0 && size(Basic_Data(8),2) ~= 0
    Data{8} = Basic_8{1};
    end
catch
end

try
    Basic_9 = Basic_Data(9);
    if size(Basic_Data(9),1) ~= 0 && size(Basic_Data(9),2) ~= 0
    Data{9} = Basic_9{1};
    end
catch
end
    
try
    Basic_15 = Basic_Data(15);
    if size(Basic_Data(15),1) ~= 0 && size(Basic_Data(15),2) ~= 0
    Data{15} = Basic_15{1};
    end
catch
end

try
    Basic_10 = Basic_Data(10);
    if size(Basic_Data(10),1) ~= 0 && size(Basic_Data(10),2) ~= 0
    Data{10} = Basic_10{1};
    end
catch
end
    
try
    Basic_11 = Basic_Data(11);
    if size(Basic_Data(11),1) ~= 0 && size(Basic_Data(11),2) ~= 0
    Data{11} = Basic_11{1};
    end
catch
end

try
    Basic_16 = Basic_Data(16);
    if size(Basic_Data(16),1) ~= 0 && size(Basic_Data(16),2) ~= 0
    Data{16} = Basic_16{1};
    end
catch
end
    
try
    Basic_29 = Basic_Data(29);
    if size(Basic_Data(29),1) ~= 0 && size(Basic_Data(29),2) ~= 0
    Data{29} = Basic_29{1};
    end
catch
end

try
    Basic_12 = Basic_Data(12);
    if size(Basic_Data(12),1) ~= 0 && size(Basic_Data(12),2) ~= 0
    Data{12} = Basic_12{1};
    end
catch
end
    
try
    Basic_17 = Basic_Data(17);
    if size(Basic_Data(17),1) ~= 0 && size(Basic_Data(17),2) ~= 0
    Data{17} = Basic_17{1};
    end
catch
end

try
    Basic_30 = Basic_Data(30);
    if size(Basic_Data(30),1) ~= 0 && size(Basic_Data(30),2) ~= 0
    Data{30} = Basic_30{1};
    end
catch
end
    
try
    Basic_13 = Basic_Data(13);
    if size(Basic_Data(13),1) ~= 0 && size(Basic_Data(13),2) ~= 0
    Data{13} = Basic_13{1};
    end
catch
end

try
    Basic_18 = Basic_Data(18);
    if size(Basic_Data(18),1) ~= 0 && size(Basic_Data(18),2) ~= 0
    Data{18} = Basic_18{1};
    end
catch
end
    
try
    Basic_27 = Basic_Data(27);
    if size(Basic_Data(27),1) ~= 0 && size(Basic_Data(27),2) ~= 0
    Data{27} = Basic_27{1};
    end
catch
end

try
    Basic_20 = Basic_Data(20);
    if size(Basic_Data(20),1) ~= 0 && size(Basic_Data(20),2) ~= 0
    Data{20} = Basic_20{1};
    end
catch
end
    
try
    Basic_14 = Basic_Data(14);
    if size(Basic_Data(14),1) ~= 0 && size(Basic_Data(14),2) ~= 0
    Data{14} = Basic_14{1};
    end
catch
end

try
    Basic_24 = Basic_Data(24);
    if size(Basic_Data(24),1) ~= 0 && size(Basic_Data(24),2) ~= 0
    Data{24} = Basic_24{1};
    end
catch
end
    
try
    Basic_23 = Basic_Data(23);
    if size(Basic_Data(23),1) ~= 0 && size(Basic_Data(23),2) ~= 0
    Data{23} = Basic_23{1};
    end
catch
end

try
    Basic_21 = Basic_Data(21);
    if size(Basic_Data(21),1) ~= 0 && size(Basic_Data(21),2) ~= 0
    Data{21} = Basic_21{1};
    end
catch
end
    
try
    Basic_22 = Basic_Data(22);
    if size(Basic_Data(22),1) ~= 0 && size(Basic_Data(22),2) ~= 0
    Data{22} = Basic_22{1};
    end
catch
end

try
    Basic_31 = Basic_Data(31);
    if size(Basic_Data(31),1) ~= 0 && size(Basic_Data(31),2) ~= 0
    Data{31} = Basic_31{1};
    end
catch
end
    
try
    Basic_32 = Basic_Data(32);
    if size(Basic_Data(32),1) ~= 0 && size(Basic_Data(32),2) ~= 0
    Data{32} = Basic_32{1};
    end
catch
end

try
    Basic_41 = Basic_Data(41);
    if size(Basic_Data(41),1) ~= 0 && size(Basic_Data(41),2) ~= 0
    Data{41} = Basic_41{1};
    end
catch
end
    
try
    Basic_33 = Basic_Data(33);
    if size(Basic_Data(33),1) ~= 0 && size(Basic_Data(33),2) ~= 0
    Data{33} = Basic_33{1};
    end
catch
end

try
    Basic_34 = Basic_Data(34);
    if size(Basic_Data(34),1) ~= 0 && size(Basic_Data(34),2) ~= 0
    Data{34} = Basic_34{1};
    end
catch
end
    
try
    Basic_35 = Basic_Data(35);
    if size(Basic_Data(35),1) ~= 0 && size(Basic_Data(35),2) ~= 0
    Data{35} = Basic_35{1};
    end
catch
end

try
    Basic_36 = Basic_Data(36);
    if size(Basic_Data(36),1) ~= 0 && size(Basic_Data(36),2) ~= 0
    Data{36} = Basic_36{1};
    end
catch
end
    
try
    Basic_50 = Basic_Data(50);
    if size(Basic_Data(50),1) ~= 0 && size(Basic_Data(50),2) ~= 0
    Data{50} = Basic_50{1};
    end
catch
end

try
    Basic_42 = Basic_Data(42);
    if size(Basic_Data(42),1) ~= 0 && size(Basic_Data(42),2) ~= 0
    Data{42} = Basic_42{1};
    end
catch
end
    
try
    Basic_37 = Basic_Data(37);
    if size(Basic_Data(37),1) ~= 0 && size(Basic_Data(37),2) ~= 0
    Data{37} = Basic_37{1};
    end
catch
end

try
    Basic_38 = Basic_Data(38);
    if size(Basic_Data(38),1) ~= 0 && size(Basic_Data(38),2) ~= 0
    Data{38} = Basic_38{1};
    end
catch
end
    
try
    Basic_39 = Basic_Data(39);
    if size(Basic_Data(39),1) ~= 0 && size(Basic_Data(39),2) ~= 0
    Data{39} = Basic_39{1};
    end
catch
end

try
    Basic_43 = Basic_Data(43);
    if size(Basic_Data(43),1) ~= 0 && size(Basic_Data(43),2) ~= 0
    Data{43} = Basic_43{1};
    end
catch
end
    
try
    Basic_49 = Basic_Data(49);
    if size(Basic_Data(49),1) ~= 0 && size(Basic_Data(49),2) ~= 0
    Data{49} = Basic_49{1};
    end
catch
end

try
    Basic_40 = Basic_Data(40);
    if size(Basic_Data(40),1) ~= 0 && size(Basic_Data(40),2) ~= 0
    Data{40} = Basic_40{1};
    end
catch
end
    
try
    Basic_44 = Basic_Data(44);
    if size(Basic_Data(44),1) ~= 0 && size(Basic_Data(44),2) ~= 0
    Data{44} = Basic_44{1};
    end
catch
end

try
    Basic_45 = Basic_Data(45);
    if size(Basic_Data(45),1) ~= 0 && size(Basic_Data(45),2) ~= 0
    Data{45} = Basic_45{1};
    end
catch
end
    
try
    Basic_46 = Basic_Data(46);
    if size(Basic_Data(46),1) ~= 0 && size(Basic_Data(46),2) ~= 0
    Data{46} = Basic_46{1};
    end
catch
end

try
    Basic_47 = Basic_Data(47);
    if size(Basic_Data(47),1) ~= 0 && size(Basic_Data(47),2) ~= 0
    Data{47} = Basic_47{1};
    end
catch
end
    
try
    Basic_48 = Basic_Data(48);
    if size(Basic_Data(48),1) ~= 0 && size(Basic_Data(48),2) ~= 0
    Data{48} = Basic_48{1};
    end
catch
end

    pass_Data = Data;
    
    jug_a = Basic_1{1};
    if size(jug_a,1) == 2 && isempty(jug_a{2,4})
        strORdir = 0   %判断为既不是直井也不是定向井
        set(handles.text9,'String','请输入基础数据')
        set(handles.pushbutton36,'Enable','off')
        set(handles.pushbutton38,'Enable','off')
        set(handles.pushbutton39,'Enable','off')
        set(handles.pushbutton40,'Enable','off')
        set(handles.pushbutton41,'Enable','off')
        set(handles.pushbutton42,'Enable','off')
        set(handles.pushbutton43,'Enable','off')
    elseif size(jug_a,1) == 2 && ~isempty(jug_a{2,4})
        strORdir = 1   %判断是直井
        set(handles.text9,'String','当前为直井')
        set(handles.pushbutton36,'Enable','on')
        set(handles.pushbutton38,'Enable','on')
        set(handles.pushbutton39,'Enable','on')
        set(handles.pushbutton40,'Enable','on')
        set(handles.pushbutton41,'Enable','on')
        set(handles.pushbutton42,'Enable','on')
        set(handles.pushbutton43,'Enable','on')
    else
        strORdir = 2   %判断为定向井
        set(handles.text9,'String','当前为二维定向井')
        set(handles.pushbutton36,'Enable','on')
        set(handles.pushbutton38,'Enable','on')
        set(handles.pushbutton39,'Enable','on')
        set(handles.pushbutton40,'Enable','on')
        set(handles.pushbutton41,'Enable','on')
        set(handles.pushbutton42,'Enable','on')
        set(handles.pushbutton43,'Enable','on')
    end
    ctrl_stat = [ctrl_stat;{['>>数据读取成功(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
catch
    ctrl_stat = [ctrl_stat;{['>>没有打开项目(',char(datestr(now)),')']}];
    set(handles.listbox1,'String',ctrl_stat)
end


% --------------------------------------------------------------------
function menu_help_Callback(hObject, eventdata, handles)
% hObject    handle to menu_help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('帮助.docx')
