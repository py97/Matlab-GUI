%��ػ�������¼�� F
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
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','��ػ�������');

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
% �����ݴ� set_pass_Data_value ������� main �к󣬽����ڹر�
delete(handles.figure1);

function P_B_ReBut_6_Callback(hObject, eventdata, handles)
clear P_B_Chart;
P_B_Chart = [{'7.85',' ',' ','1.8','1.125','1.15'}];
set(handles.P_Basic_6,'Data',P_B_Chart);

%ȷ��
function P_B_ConBut_6_Callback(hObject, eventdata, handles)
global pass_Data
B_6 = get(handles.P_Basic_6,'Data');
if isequal(pass_Data{1},B_6)
    handles.output = B_6;% �����ݷ��͵� handles.output �С�
else
    try
        handles.output = B_6;% �����ݷ��͵� handles.output �С�
        pass_Data(6:end) = [];
    catch
    end
end

%��access���ݿ�---------------------------------------------------------------------------------------------------------------------
% connA=database('YouDB','','') ;
% colnames={'F_i1','F_i2','F_i3','F_i4','F_i5','F_i6','F_i7'};
% execdata1=B_6;
% insert(connA,'F',colnames,execdata1);

handles.output = B_6;% �����ݷ��͵� handles.output �С�
%������ OpeningFcn ʹ�� uiwait��ʹ����ȴ�
%������ uiresume ʱ����������У�ִ�� OutputFcn ���� chooseGUI ���޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1)   %����ִ�б�uiwait�жϵĳ���


% --- Executes during object creation, after setting all properties.
function P_Basic_6_CreateFcn(hObject, eventdata, handles)
clear P_B_Chart;
P_B_Chart = [{'7.85',' ',' ','1.8','1.125','1.15'}]
set(hObject,'Data',P_B_Chart);
