function varargout = chooseGUI(varargin)
% CHOOSEGUI MATLAB code for chooseGUI.fig
%      CHOOSEGUI, by itself, creates a new CHOOSEGUI or raises the existing
%      singleton*.
%
%      H = CHOOSEGUI returns the handle to a new CHOOSEGUI or the handle to
%      the existing singleton*.
%
%      CHOOSEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHOOSEGUI.M with the given input arguments.
%
%      CHOOSEGUI('Property','Value',...) creates a new CHOOSEGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before chooseGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to chooseGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help chooseGUI

% Last Modified by GUIDE v2.5 21-Nov-2019 19:34:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @chooseGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @chooseGUI_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before chooseGUI is made visible.
function chooseGUI_OpeningFcn(hObject, eventdata, handles, varargin)
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','ѡ������');
movegui(hObject,'center');
global pass_Data_pre back_Data cell_Diameter cell_Grade N_Weight c_Array
% cell_Diameter = {'5','5 1/2','6 5/8','9 5/8'};
% cell_Grade = {'J55','K55','M65','L801','L809Cr','L8013Cr','N80',...
%         'C90','R95','T95','C110','P110','Q125','H40','Q125'};   %�������鷽��ɸѡ
c_Array=load('taoguanDB.mat');
c_mat = c_Array.taoguanDB;

N_Weight = c_mat(:,3);
cell_Grade = c_mat(:,5);
cell_Diameter = c_mat(:,1);
%�׹�����
[~,k] = unique(cellfun(@(cell_Diameter)sprintf('%.2f ',numel(cell_Diameter),size(cell_Diameter),cell_Diameter),cell_Diameter,'un',0));
cell_Diameter = cell_Diameter(k);
% cell_Diameter = {'5','5 1/2','6 5/8','9 5/8'};

N_Weight = unique(N_Weight);

%�ּ�
[~,r] = unique(cellfun(@(cell_Grade)sprintf('%.2f ',numel(cell_Grade),size(cell_Grade),cell_Grade),cell_Grade,'un',0));
cell_Grade=cell_Grade(r);
% cell_Grade = {'J55','K55','M65','L801','L809Cr','L8013Cr','N80',...
%         'C90','R95','T95','C110','P110','Q125','H40','Q125'};   %�������鷽��ɸѡ
set(handles.listbox1,'String',cell_Diameter);
set(handles.listbox2,'String',N_Weight);
set(handles.listbox3,'String',cell_Grade);

pass_Data_pre = varargin{1};
back_Data = varargin{1};

handles.output = pass_Data_pre;
% Choose default command line output for chooseGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes chooseGUI wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = chooseGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
% �����ݴ� set_pass_Data_value ������� main �к󣬽����ڹر�
delete(handles.figure1);


% --- ���һ������
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
clear txt_Diameter C3 CC3 CCC3 C5 CC5 CCC5 tgType tgWeight tgGrade k r value;
global cell_Diameter cell_Grade N_Weight c_Array; %cell_Grade���ּ���N_Weight��ƽ����
tgDB = c_Array.taoguanDB();
%��������
list1_value=get(hObject,'value');
value = cell_Diameter(list1_value);
tgType = {num2str(value{1})};
tgWeight = {};
tgGrade = {};
set(handles.text5,'String',value{1})
%�����б�
if ((size(get(handles.text6,'String'),2)==0) && (size(get(handles.text7,'String'),2)==0))
        for i=1:size(tgDB,1)
            %�׹�������������ת��
            C1 = tgDB(i,1);
            CCC1 = C1{1};
            %ƽ������������ת��
            C3 = tgDB(i,3);
            CCC3 = num2str(C3{1});
            %�ּ���������ת��
            C5 = tgDB(i,5);
            CC5 = cellstr(C5{1});
            CCC5 = CC5{1};
            if strcmp(cellstr(CCC1),value{1}) %ɸѡ��5��ƽ���غ͸ּ�
                tgWeight{end+1} = CCC3;
                tgGrade{end+1} = CCC5;
            end
        end
    %ȥ��
    [~,k] = unique(cellfun(@(tgWeight)sprintf('%.2f ',numel(tgWeight),size(tgWeight),tgWeight),tgWeight,'un',0));
    [~,r] = unique(cellfun(@(tgGrade)sprintf('%.2f ',numel(tgGrade),size(tgGrade),tgGrade),tgGrade,'un',0));
    cell_Diameter = tgType;
    set(handles.listbox1,'Value',1)
    set(handles.listbox1,'String',tgType)
    N_Weight = tgWeight(k);
    set(handles.listbox2,'String',tgWeight(k))
    cell_Grade=tgGrade(r);
    set(handles.listbox3,'String',tgGrade(r))
elseif(size(get(handles.text6,'String'),2)==0 && size(get(handles.text7,'String'),2)~=0)    %������ƽ����
    text7_tg=get(handles.text7,'String')
        for i=1:size(tgDB,1)
            %�׹�������������ת��
            C1 = tgDB(i,1);
            CC1 = cellstr(C1{1});
            CCC1 = CC1{1};
            %ƽ������������ת��
            C3 = tgDB(i,3);
            CCC3 = num2str(C3{1});
            %�ּ���������ת��
            C5 = tgDB(i,5);
            CC5 = cellstr(C5{1});
            CCC5 = CC5{1};
            if (strcmp(CCC1,value{1}) && strcmp(CCC5,text7_tg))%ɸѡ��5��ƽ����
                tgWeight{end+1} = CCC3;
            end
        end
    %ȥ��
    [~,k] = unique(cellfun(@(tgWeight)sprintf('%.2f ',numel(tgWeight),size(tgWeight),tgWeight),tgWeight,'un',0));
    cell_Diameter = tgType;
    set(handles.listbox1,'Value',1)
    set(handles.listbox1,'String',tgType)
    N_Weight = tgWeight(k)
    set(handles.listbox2,'String',tgWeight(k))
elseif(size(get(handles.text6,'String'),2)~=0 && size(get(handles.text7,'String'),2)==0)%��ɸѡ�ּ�
    text6_tg=get(handles.text6,'String')
        for i=1:size(tgDB,1)
            %�׹�������������ת��
            C1 = tgDB(i,1);
            CC1 = cellstr(C1{1});
            CCC1 = CC1{1};
            %ƽ������������ת��
            C3 = tgDB(i,3);
            CCC3 = num2str(C3{1});
            %�ּ���������ת��
            C5 = tgDB(i,5);
            CC5 = cellstr(C5{1});
            CCC5 = CC5{1};
            if (strcmp(CCC1,value{1})&& strcmp(CCC3,text6_tg))  %ɸѡ��5�ĸּ�
                tgGrade{end+1} = CCC5;
            end
        end
    %ȥ��
    [~,r] = unique(cellfun(@(tgGrade)sprintf('%.2f ',numel(tgGrade),size(tgGrade),tgGrade),tgGrade,'un',0));
    cell_Diameter = tgType;
    set(handles.listbox1,'Value',1)
    set(handles.listbox1,'String',cell_Diameter)
    cell_Grade=tgGrade(r);
    set(handles.listbox3,'String',cell_Grade)    
end


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- �м�һ������
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2
clear value list2_value  C1 CC1 CCC1 C3 CCC3 C5 CC5 CCC5 text5_tg text7_tg
global c_Array N_Weight cell_Diameter cell_Grade;%cell_Grade���ּ���N_Weight��ƽ����
tgDB = c_Array.taoguanDB();
%��������
list2_value=get(gcbo,'value');
value = N_Weight(list2_value);
tgWeight = {num2str(value{1})}
tgGrade = {};
tgType={};
set(handles.text6,'String',value{1})
if (size(get(handles.text5,'String'),2)==0 && size(get(handles.text7,'String'),2)==0)   %ɸѡ�׹����ͺ͸ּ�
    for i=1:size(tgDB,1)
        %�׹�������������ת��
        C1 = tgDB(i,1);
        CC1 = cellstr(C1{1});
        CCC1 = CC1{1};
        %ƽ������������ת��
        C3 = tgDB(i,3);
        CCC3 = num2str(C3{1});
        %�ּ���������ת��
        C5 = tgDB(i,5);
        CC5 = cellstr(C5{1});
        CCC5 = CC5{1};
        if strcmp(cellstr(CCC3),num2str(value{1}))
            tgType{end+1} = CCC1;
            tgGrade{end+1} = CCC5;
        end
    end
    %ȥ��
    [~,k] = unique(cellfun(@(tgType)sprintf('%.2f ',numel(tgType),size(tgType),tgType),tgType,'un',0));
    [~,r] = unique(cellfun(@(tgGrade)sprintf('%.2f ',numel(tgGrade),size(tgGrade),tgGrade),tgGrade,'un',0));
    N_Weight = tgWeight;
    set(handles.listbox2,'Value',1)
    set(handles.listbox2,'String',tgWeight)
    cell_Diameter = tgType(k);
    set(handles.listbox1,'String',tgType(k))
    cell_Grade=tgGrade(r);
    set(handles.listbox3,'String',tgGrade(r))
elseif (size(get(handles.text5,'String'),2)~=0 && size(get(handles.text7,'String'),2)==0)   %ɸѡ�ּ�
    text5_tg=get(handles.text5,'String')
    for i=1:size(tgDB,1)
        %�׹�������������ת��
        C1 = tgDB(i,1);
        CC1 = cellstr(C1{1});
        CCC1 = CC1{1};
        %ƽ������������ת��
        C3 = tgDB(i,3);
        CCC3 = num2str(C3{1});
        %�ּ���������ת��
        C5 = tgDB(i,5);
        CC5 = cellstr(C5{1});
        CCC5 = CC5{1};
        if (strcmp(cellstr(CCC3),num2str(value{1})) && strcmp(text5_tg,CCC1)) %�׹����ͺ�ƽ����������������
            tgGrade{end+1} = CCC5;
        end
    end
    %ȥ��
    [~,r] = unique(cellfun(@(tgGrade)sprintf('%.2f ',numel(tgGrade),size(tgGrade),tgGrade),tgGrade,'un',0));
    N_Weight = tgWeight;
    set(handles.listbox2,'Value',1)
    set(handles.listbox2,'String',tgWeight)
    cell_Grade=tgGrade(r);
    set(handles.listbox3,'String',tgGrade(r))
elseif (size(get(handles.text5,'String'),2)==0 && size(get(handles.text7,'String'),2)~=0)   %ɸѡ�׹�����
    text7_tg=get(handles.text7,'String')
    for i=1:size(tgDB,1)
        %�׹�������������ת��
        C1 = tgDB(i,1);
        CC1 = cellstr(C1{1});
        CCC1 = CC1{1}
        %ƽ������������ת��
        C3 = tgDB(i,3);
        CCC3 = num2str(C3{1});
        %�ּ���������ת��
        C5 = tgDB(i,5);
        CC5 = cellstr(C5{1});
        CCC5 = CC5{1};
        if (strcmp(cellstr(CCC3),num2str(value{1})) && strcmp(text7_tg,CCC5)) %�ּ���ƽ����������������
            tgType{end+1} = CCC1;
        end
    end
    %ȥ��
    [~,k] = unique(cellfun(@(tgType)sprintf('%.2f ',numel(tgType),size(tgType),tgType),tgType,'un',0));
    N_Weight = tgWeight;
    set(handles.listbox2,'Value',1)
    set(handles.listbox2,'String',tgWeight)
    cell_Diameter = tgType(k);
    set(handles.listbox1,'String',tgType(k))
end


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- �ұ�һ������
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3
clear value list3_value  C1 CC1 CCC1 C3 CCC3 C5 CC5 CCC5 text5_tg text6_tg
global c_Array N_Weight cell_Diameter cell_Grade;%cell_Grade���ּ���N_Weight��ƽ����
tgDB = c_Array.taoguanDB();
%��������
list3_value=get(gcbo,'value');
value = cell_Grade(list3_value);
tgType={};
tgWeight = {};
tgGrade = {value{1}};
set(handles.text7,'String',value{1})
%�����б�
if (size(get(handles.text5,'String'),2)==0 && size(get(handles.text6,'String'),2)==0)   %ɸѡ�׹����ͺͱ������
    for i=1:size(tgDB,1)
        %�׹�������������ת��
        C1 = tgDB(i,1);
        CC1 = cellstr(C1{1});
        CCC1 = CC1{1};
        %ƽ������������ת��
        C3 = tgDB(i,3);
        CCC3 = num2str(C3{1});
        %�ּ���������ת��
        C5 = tgDB(i,5);
        CC5 = cellstr(C5{1});
        CCC5 = CC5{1};
        if strcmp(cellstr(CCC5),value{1})
            tgType{end+1} = CCC1;
            tgWeight{end+1} = CCC3;
        end
    end
    %ȥ��
    [~,k] = unique(cellfun(@(tgType)sprintf('%.2f ',numel(tgType),size(tgType),tgType),tgType,'un',0));
    [~,r] = unique(cellfun(@(tgWeight)sprintf('%.2f ',numel(tgWeight),size(tgWeight),tgWeight),tgWeight,'un',0));
    cell_Diameter = tgType(k);
    set(handles.listbox1,'String',tgType(k))
    N_Weight = tgWeight(r);
    set(handles.listbox2,'String',tgWeight(r))
    cell_Grade=tgGrade;
    set(handles.listbox3,'Value',1)
    set(handles.listbox3,'String',tgGrade)
elseif (size(get(handles.text5,'String'),2)~=0 && size(get(handles.text6,'String'),2)==0)   %ɸѡƽ����
    text5_tg=get(handles.text5,'String')
    for i=1:size(tgDB,1)
        %�׹�������������ת��
        C1 = tgDB(i,1);
        CC1 = cellstr(C1{1});
        CCC1 = CC1{1};
        %ƽ������������ת��
        C3 = tgDB(i,3);
        CCC3 = num2str(C3{1});
        %�ּ���������ת��
        C5 = tgDB(i,5);
        CC5 = cellstr(C5{1});
        CCC5 = CC5{1};
        if (strcmp(CCC5,value{1}) && strcmp(text5_tg,CCC1)) %�ּ����׹�����������������
            tgWeight{end+1} = CCC3;
        end
    end
    %ȥ��
    [~,r] = unique(cellfun(@(tgWeight) sprintf('%.2f ',numel(tgWeight),size(tgWeight),tgWeight),tgWeight,'un',0));
    N_Weight = tgWeight(r);
    set(handles.listbox2,'String',tgWeight(r))
    cell_Grade=tgGrade;
    set(handles.listbox3,'Value',1)
    set(handles.listbox3,'String',tgGrade)
elseif (size(get(handles.text5,'String'),2)==0 && size(get(handles.text6,'String'),2)~=0)   %ɸѡ�׹�����
    text6_tg=get(handles.text6,'String')
    for i=1:size(tgDB,1)
        %�׹�������������ת��
        C1 = tgDB(i,1);
        CC1 = cellstr(C1{1});
        CCC1 = CC1{1};
        %ƽ������������ת��
        C3 = tgDB(i,3);
        CCC3 = num2str(C3{1});
        %�ּ���������ת��
        C5 = tgDB(i,5);
        CC5 = cellstr(C5{1});
        CCC5 = CC5{1};
        if (strcmp(CCC5,value{1}) && strcmp(text6_tg,CCC3)) %�ּ���ƽ����������������
            tgType{end+1} = CCC1;
        end
    end
    %ȥ��
    [~,k] = unique(cellfun(@(tgType)sprintf('%.2f ',numel(tgType),size(tgType),tgType),tgType,'un',0));
    cell_Diameter = tgType(k);
    set(handles.listbox1,'String',tgType(k))
    cell_Grade=tgGrade;
    set(handles.listbox3,'Value',1)
    set(handles.listbox3,'String',tgGrade)
end

% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear pass_Data_1 pass_Data_3 pass_Data_5 C1 CC1 CCC1 C3 CCC3 C5 CC5 CCC5
global back_Data txt_Weight c_Array;  %back_Data(1),back_Data(5)
tgDB = c_Array.taoguanDB();
%ȡ���׹���������
pass_Data_1 = get(handles.text5,'String')
%ȡ��ƽ����
pass_Data_3 = get(handles.text6,'String')
%ȡ���ּ�����
pass_Data_5 = get(handles.text7,'String')
for i=1:size(tgDB,1)
    %�׹�������������ת��
    C1 = tgDB(i,1);
    CC1 = cellstr(C1{1});
    CCC1 = CC1{1};
    %ƽ������������ת��
    C3 = tgDB(i,3);
    CCC3 = num2str(C3{1});
    %�ּ���������ת��
    C5 = tgDB(i,5);
    CC5 = cellstr(C5{1});
    CCC5 = CC5{1};
    if (strcmp(CCC1,pass_Data_1))
        if (strcmp(CCC3,pass_Data_3))
            if(strcmp(CCC5,pass_Data_5))  
                back_Data{2} = num2str(cell2mat(tgDB(i,2)));   %�⾶
                back_Data{3} = num2str(cell2mat(tgDB(i,7)));   %�ھ�
            end
        end
    end
end
back_Data{1} = pass_Data_1; %��������
back_Data{5} = pass_Data_5;   %�ּ�
for i=1:size(tgDB,1)
    if strcmp(pass_Data_1,tgDB(i,1)) && strcmp(pass_Data_5,tgDB(i,5)) && strcmp(pass_Data_3,tgDB(i,3))
        pass_Data_4 = str2num(cell2mat(tgDB(i,4)));
    end
end
back_Data{4} = num2str(pass_Data_4,'%.2f')   %����(ƽ����)
handles.output = back_Data;% �����ݷ��͵� handles.output �С�

%������ OpeningFcn ʹ�� uiwait��ʹ����ȴ�
%������ uiresume ʱ����������У�ִ�� OutputFcn ���� chooseGUI ���޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1)   %����ִ�б�uiwait�жϵĳ���


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear c_mat N_Weight N_Weight;
global c_Array cell_Diameter cell_Grade N_Weight ;
c_mat = c_Array.taoguanDB;
N_Weight = c_mat(:,3);
cell_Grade = c_mat(:,5);
cell_Diameter = c_mat(:,1);
%�׹�����
[~,k] = unique(cellfun(@(cell_Diameter)sprintf('%.2f ',numel(cell_Diameter),size(cell_Diameter),cell_Diameter),cell_Diameter,'un',0));
cell_Diameter = cell_Diameter(k);
% cell_Diameter = {'5','5 1/2','6 5/8','9 5/8'};

N_Weight = unique(N_Weight);

%�ּ�
[~,r] = unique(cellfun(@(cell_Grade)sprintf('%.2f ',numel(cell_Grade),size(cell_Grade),cell_Grade),cell_Grade,'un',0));
cell_Grade=cell_Grade(r);
% cell_Grade = {'J55','K55','M65','L801','L809Cr','L8013Cr','N80',...
%         'C90','R95','T95','C110','P110','Q125','H40','Q125'};   %�������鷽��ɸѡ
set(handles.listbox1,'String',cell_Diameter);
set(handles.listbox2,'String',N_Weight);
set(handles.listbox3,'String',cell_Grade);
set(handles.text5,'String','')
set(handles.text6,'String','')
set(handles.text7,'String','')

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass_Data_pre
handles.output = pass_Data_pre;
guidata(hObject, handles);
uiresume(handles.figure1)
