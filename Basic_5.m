%�꾮Һ���� E
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
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','�꾮Һ����');

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
% �����ݴ� set_pass_Data_value ������� main �к󣬽����ڹر�
delete(handles.figure1);

%����
function pushbutton1_Callback(hObject, eventdata, handles)
clear P_B_Chart;
P_B_Chart = [{' ' ' ' ' '}]
set(handles.P_Basic_5,'Data',P_B_Chart);

%ȷ��
function P_B_ConBut_5_Callback(hObject, eventdata, handles)
B_5 = get(handles.P_Basic_5,'Data');

%��access���ݿ�---------------------------------------------------------------------------------------------------------------------
% connA=database('YouDB','','') ;
% colnames={'E_i1','E_i2','E_i3'};
% execdata1=B_5;
% insert(connA,'E',colnames,execdata1);

handles.output = B_5;% �����ݷ��͵� handles.output �С�
%������ OpeningFcn ʹ�� uiwait��ʹ����ȴ�
%������ uiresume ʱ����������У�ִ�� OutputFcn ���� chooseGUI ���޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1)   %����ִ�б�uiwait�жϵĳ���
