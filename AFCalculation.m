function varargout = AFCalculation(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AFCalculation_OpeningFcn, ...
                   'gui_OutputFcn',  @AFCalculation_OutputFcn, ...
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

function AFCalculation_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

connA=database('YouDB','','');
cursorA=exec(connA,'select * from A_M');
cursorA=fetch(cursorA);
DataA=cursorA.Data;

cursorB=exec(connA,'select * from B_M');
cursorB=fetch(cursorB);
DataB=cursorB.Data;

cursorC=exec(connA,'select * from P_C4');
cursorC=fetch(cursorC);
DataC=cursorC.Data;

cursorD=exec(connA,'select * from D_M');
cursorD=fetch(cursorD);
DataD=cursorD.Data;

cursorE=exec(connA,'select * from E_M');
cursorE=fetch(cursorE);
DataE=cursorE.Data;

cursorF=exec(connA,'select * from F_M');
cursorF=fetch(cursorF);
DataF=cursorF.Data;

cursorK_1=exec(connA,'select * from K_1');
cursorK_1=fetch(cursorK_1);
DataK_1=cursorK_1.Data;

DataD_4 = cell2mat(DataD(:,4))                  %获取D表(:,4)列数据：DataD_4
DataD_5 = cell2mat(DataD(:,5))                  %获取D表(:,5)列数据：DataD_5
DataE = cell2mat(DataE)
DataE_11 = DataE(1,1)                           %获取E表(1,1)数据：DataE_11
DataF = cell2mat(DataF)
DataF_11 = DataF(1,1)                           %获取F表(1,1)数据：DataF_11
DataK_1 = cell2mat(DataK_1);
DataK_1_2 = DataK_1(:,2);                        %获取K_1表(:,2)列数据：DataK_1_2
DataK_1_4 = DataK_1(:,4)                        %获取K_1表(:,4)列数据：DataK_1_4

I_1 = 1 - DataE_11/DataF_11;                     %计算I表的第一列数据：I_1       double
I_1 = num2str(I_1);                             %I_1                           str
I_2 = DataD_4/2;                                %计算I表第二列数据：I_2         double
I_2 = num2str(I_2);                             %I_2                           str
I_3 = DataD_5/2;                                %计算I表第三列数据：I_3         double
I_3 = num2str(I_3);                             %I_3                           str
I_4 = DataC(:,26);                              %I_4                           str
I_5 = DataC(:,20);                              %I_5                           str
I_6 = DataC(:,8);                               %I_6                           str
I_7 = DataC(:,10);                              %I_7                           str
I_8 = 0.00981*DataE_11.*DataK_1_2;               %I_8                           double
I_8 = num2str(I_8);                             %I_8                           str
I_9 = I_8;
I_2 = str2num(I_2);
I_3 = str2num(I_3)

size(I_2)
size(I_3)
size(DataK_1_4)
% I_10 = DataK_1_4./(pi*(I_2.*I_2-I_3.*I_3))




% newData = get(handles.uitable2,'Data');                     %获取uitable2表数据：newData
% for i = 1:192
%     newData(i,1) = I_11 
% end
% class(newData)
% set(handles.uitable2,'Data',newData);



function varargout = AFCalculation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
