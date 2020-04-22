function varargout = youGUI(varargin)
% YOUGUI MATLAB code for youGUI.fig
%      YOUGUI, by itself, creates a new YOUGUI or raises the existing
%      singleton*.
%
%      H = YOUGUI returns the handle to a new YOUGUI or the handle to
%      the existing singleton*.
%
%      YOUGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YOUGUI.M with the given input arguments.
%
%      YOUGUI('Property','Value',...) creates a new YOUGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before youGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to youGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help youGUI

% Last Modified by GUIDE v2.5 03-Dec-2019 12:28:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @youGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @youGUI_OutputFcn, ...
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


% --- Executes just before youGUI is made visible.
function youGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to youGUI (see VARARGIN)

% Choose default command line output for youGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes youGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global c_Array;
c_Array=load('taoguanDB.mat');
% c_Array=table2array(c_Array);

% --- Outputs from this function are returned to the command line.
function varargout = youGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
javaFrame = get(gcf,'JavaFrame');
set(javaFrame,'Maximized',1); 

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1_1.
function pushbutton1_1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear file;
clear path;
clear file_path;
[file,path] = uigetfile('*.xlsx'); %浏览文件
file_suffix0 = file(end-5:end);
file_suffix = file_suffix0(strfind(file_suffix0,'.'):end) %判断文件类型
clear file_suffix0;
file_path = strcat(path,file)
if(file_suffix == '.xlsx' | file_suffix == '.xls') 
    xls_data=xlsread(file_path);    %读取Excel文件
    set(handles.uitable1,'Data',xls_data);
end

% --- Executes on button press in pushbutton1_2.
function pushbutton1_2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear table_data;clear data_cell;clear filter;
clear hangshu;clear lieshu;clear hang;clear lie;
clear Filename;clear Pathname;clear str;
clear CloumnName;clear dataExcel;

table_data = get(handles.uitable1,'Data');  %table_data含两个相同的元胞数组（2×1 cell 数组）
data_cell = cell2mat(table_data(1,1));    %转换元胞数组
filter = {'*.xlsx';'*.xls';'*.txt';'*.docx';'*.*'};
[Filename,Pathname] = uiputfile(filter,'另存为','data.xlsx');  %创建文件保存对话框
if (Filename==0 & Pathname==0)
	msgbox('您没有保存数据!','确认','error');
else
    str=[Pathname Filename];
    %获取表格的列名
    CloumnName=get(handles.uitable1,'ColumnName') ;                          
    CloumnName=CloumnName{2,1};
    
    dataExcel=cell(size(data_cell,1)+1,size(data_cell,2));
    dataExcel(1,:)=CloumnName;                                            %获取表格列名；
    dataExcel(2:end,:)=num2cell(data_cell);                                              %获取表格数据；
    xlswrite(str,dataExcel);                                              %将新单元数组写入指定的EXCEl文件中；
    
%     fid=fopen(str,'wt');    %重新打开建立的excel文件,可写
%     存数据
%     hangshu = size(data_cell,1);    %行数
%     lieshu = size(data_cell,2);     %列数
%     for hang=1:size(data_cell,1);    
%         for lie=1:size(data_cell,2) 
%             if(lie == size(data_cell,2))
%                  fprintf(fid,'%f\r',data_cell(hang,lie));
%             else
%                 fprintf(fid,'%f\t',data_cell(hang,lie));   
%             end
%         end
%     end
%     fclose(fid);        %关闭excel
    msgbox('保存数据完毕！','确认','warn');
end

% --- Executes on button press in pushbutton2_1.
function pushbutton2_1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear file;
clear path;
clear file_path;
[file,path] = uigetfile('*.xlsx'); %浏览文件
file_suffix0 = file(end-5:end);
file_suffix = file_suffix0(strfind(file_suffix0,'.'):end);  %判断文件类型
clear file_suffix0;
file_path = strcat(path,file)
if(file_suffix == '.xlsx') 
    [~,~,xls_data]=xlsread(file_path);    %读取Excel文件
    set(handles.uitable2,'Data',xls_data);
end

% --- Executes on button press in pushbutton2_2.
function pushbutton2_2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear table_data;clear data_cell;clear filter;
clear hangshu;clear lieshu;clear hang;clear lie;
clear Filename;clear Pathname;clear str;
clear CloumnName;clear dataExcel;

table_data = get(handles.uitable2,'Data');  %table_data含两个相同的元胞数组（2×1 cell 数组）
data_cell = table_data(1,1);    %转换元胞数组
filter = {'*.xlsx';'*.xls';'*.txt';'*.docx';'*.*'};
[Filename,Pathname] = uiputfile(filter,'另存为','data.xlsx');  %创建文件保存对话框
if (Filename==0 & Pathname==0)
	msgbox('您没有保存数据!','确认','error');
else
    str=[Pathname Filename];
    %获取表格的列名
    CloumnName=get(handles.uitable2,'ColumnName')                       
    CloumnName=CloumnName{2,1};
    data_cell = data_cell{1,1};
    dataExcel = cell(size(data_cell,1)+1,size(data_cell,2))
    dataExcel(1,:)=CloumnName;                                            %获取表格列名；
    dataExcel(2:end,:)=data_cell;                                           %获取表格数据；
    xlswrite(str,dataExcel);                                              %将新单元数组写入指定的EXCEl文件中；
    msgbox('保存数据完毕！','确认','warn');
end

% --- Executes on button press in pushbutton3_1.
function pushbutton3_1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear file;
clear path;
clear file_path;
[file,path] = uigetfile('*.xlsx'); %浏览文件
file_suffix0 = file(end-5:end);
file_suffix = file_suffix0(strfind(file_suffix0,'.'):end);  %判断文件类型
clear file_suffix0;
file_path = strcat(path,file)
if(file_suffix == '.xlsx') 
    xls_data=xlsread(file_path);    %读取Excel文件
    set(handles.uitable3,'Data',xls_data);
end

% --- Executes on button press in pushbutton3_2.
function pushbutton3_2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear table_data;clear data_cell;clear filter;
clear hangshu;clear lieshu;clear hang;clear lie;
clear Filename;clear Pathname;clear str;
clear CloumnName;clear dataExcel;

table_data = get(handles.uitable3,'Data');  %table_data含两个相同的元胞数组（2×1 cell 数组）
data_cell = cell2mat(table_data(1,1));    %转换元胞数组
filter = {'*.xlsx';'*.xls';'*.txt';'*.docx';'*.*'};
[Filename,Pathname] = uiputfile(filter,'另存为','data.xlsx');  %创建文件保存对话框
if (Filename==0 & Pathname==0)
	msgbox('您没有保存数据!','确认','error');
else
    str=[Pathname Filename];
    %获取表格的列名
    CloumnName=get(handles.uitable3,'ColumnName') ;                          
    CloumnName=CloumnName{2,1};
    
    dataExcel=cell(size(data_cell,1)+1,size(data_cell,2));
    dataExcel(1,:)=CloumnName;                                            %获取表格列名；
    dataExcel(2:end,:)=num2cell(data_cell);                                              %获取表格数据；
    xlswrite(str,dataExcel);                                              %将新单元数组写入指定的EXCEl文件中；
    msgbox('保存数据完毕！','确认','warn');
end

% --- Executes on button press in pushbutton4_1.
function pushbutton4_1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear file path file_path;
[file,path] = uigetfile('*.xlsx'); %浏览文件
file_suffix0 = file(end-5:end);
file_suffix = file_suffix0(strfind(file_suffix0,'.'):end);  %判断文件类型
clear file_suffix0;
file_path = strcat(path,file)
if(file_suffix == '.xlsx') 
    [num,txt,raw]=xlsread(file_path);    %读取Excel文件
    set(handles.uitable4,'Data',[raw]);
end

% --- Executes on button press in pushbutton4_2.
function pushbutton4_2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear table_data data_cell filter hangshu lieshu hang lie Filename Pathname str CloumnName dataExcel;

table_data = get(handles.uitable4,'Data');  %table_data含两个相同的元胞数组（2×1 cell 数组）
data_cell = cell2mat(table_data(1,1));    %转换元胞数组
filter = {'*.xlsx';'*.xls';'*.txt';'*.docx';'*.*'};
[Filename,Pathname] = uiputfile(filter,'另存为','data.xlsx');  %创建文件保存对话框
if (Filename==0 & Pathname==0)
	msgbox('您没有保存数据!','确认','error');
else
    str=[Pathname Filename];
    %获取表格的列名
    CloumnName=get(handles.uitable4,'ColumnName') ;                          
    CloumnName=CloumnName{2,1};
    
    dataExcel=cell(size(data_cell,1)+1,size(data_cell,2));
    dataExcel(1,:)=CloumnName;                                            %获取表格列名；
    dataExcel(2:end,:)=num2cell(data_cell);                                              %获取表格数据；
    xlswrite(str,dataExcel);                                              %将新单元数组写入指定的EXCEl文件中；
    msgbox('保存数据完毕！','确认','warn');
end

% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
clear a_Moren;
global row;
a_Moren=get(hObject,'Data');
hObject.Data(row,4) = a_Moren(row,1);
function uitable5_CellEditCallback(hObject, eventdata, handles)


function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear data_cell filter m  n hangshu lieshu hang  lie Filename Pathname str CloumnName dataExcel;

data_cell = get(handles.uitable5,'Data');    %转换元胞数组
[m,n] = size(data_cell);
if(m~=0 & n~=0)
    filter = {'*.docx';'*.*'};
    [Filename,Pathname] = uiputfile(filter,'另存为','data.docx');  %创建文件保存对话框
    if (Filename==0 & Pathname==0)
        msgbox('您没有保存数据!','确认','error');
    else
            str=[Pathname Filename];
            
            %生成Excel表格
%             CloumnName=get(handles.uitable5,'ColumnName');           %获取表格的列名             
%             dataExcel=cell(size(data_cell,1)+1,size(data_cell,2));
%             dataExcel(1,:)=CloumnName;                                            %存入表格列名；
%             dataExcel(2:end,:)=num2cell(data_cell);                                              %获取表格数据；
%             xlswrite(str,dataExcel);                                              %将新单元数组写入指定的EXCEl文件中；
%             msgbox('保存数据完毕！','确认','warn');

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
            Word.Visible = 1; % 或set(Word, 'Visible', 1);

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
            title = '套管钻井套管柱轴向力分析';
            Content.Text = title;
            Content.Font.Size = 22 ;
            Content.Font.Bold = 4 ;
            Content.Paragraphs.Alignment = 'wdAlignParagraphCenter';% 设定段落格式
            Selection.Start = Content.end;% 定义开始的位置
            Selection.TypeParagraph;

            % 插入内容并定义字体字号
            smallTitle = '东北石油大学';
            Selection.Text = smallTitle;
            Selection.Font.Size = 12;
            Selection.Font.Bold = 0; 
            Selection.MoveDown;
            ParagraphFormat.Alignment = 'wdAlignParagraphCenter';
            Selection.TypeParagraph;    %插入新的空段落
            Selection.Font.Size = 10;

            %项目名称
            smallTitle = '项目名称：';
            Selection.Text = smallTitle;
            Selection.Font.Size = 12;
            Selection.Font.Bold = 0; 
            Selection.MoveDown;
            Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
            Selection.TypeParagraph;    %插入新的空段落
            
            %绘制表格
            Selection.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %设置表格文字居中
            Selection.Font.Size = 10;   %设置表格中字体大小为10
            Tables = Document.Tables.Add(Selection.Range,size(data_cell,1),6);    % ”data_cell+1“ 行 10列
            DTI = Document.Tables.Item(1); % 或DTI = Tables;
            DTI.Borders.OutsideLineStyle = 'wdLineStyleSingle';% 设置外边框的线型，Dash，DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple等
            DTI.Borders.OutsideLineWidth = 'wdLineWidth150pt';% 设置线宽，有025，050，075，100，150，225，300，450，600pt等
            DTI.Borders.InsideLineStyle = 'wdLineStyleSingle';%设置内边框的线型
            DTI.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI.Rows.Alignment = 'wdAlignRowCenter';%设置行对齐方式

            % DTI.Rows.Item(8).Borders.Item(1).LineStyle = 'wdLineStyleNone';% 设置第8行上边界线型，1，2，3，4分别对应单元格的上、左、下、右边界
            % DTI.Rows.Item(8).Borders.Item(3).LineStyle = 'wdLineStyleNone';% 设置第8行下边界线型
            % DTI.Rows.Item(11).Borders.Item(1).LineStyle = 'wdLineStyleNone';
            % DTI.Rows.Item(11).Borders.Item(3).LineStyle = 'wdLineStyleNone';

            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% 设置列宽，单位为磅
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % 设置行高

            % 指定各单元格内容
            DTI.Cell(1,1).Range.Text = '序号';
            DTI.Cell(1,2).Range.Text = '测深(m)';
            DTI.Cell(1,3).Range.Text = '垂深(m)';
            DTI.Cell(1,4).Range.Text = '浮力系数';
            DTI.Cell(1,5).Range.Text = '管柱有效线重(N/m)';
            DTI.Cell(1,6).Range.Text = '有效轴向力(kN)';

            %填写数据
            for cell_word = 1:size(data_cell,1)-1
                DTI.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %序号 
                DTI.Cell(cell_word+1,2).Range.Text = num2str(data_cell{cell_word+1,1});      %测深    
                DTI.Cell(cell_word+1,3).Range.Text = num2str(data_cell{cell_word+1,2});     %垂深
                DTI.Cell(cell_word+1,4).Range.Text = num2str(data_cell{cell_word+1,3});     %浮力系数
                DTI.Cell(cell_word+1,5).Range.Text = num2str(data_cell{cell_word+1,4});    %管柱有效线重
                DTI.Cell(cell_word+1,6).Range.Text = num2str(data_cell{cell_word+1,5});    %有效轴向力
            end

            Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
            Document.Save; % 保存文档
%             Document.Close; % 关闭文档
%             Word.Quit; % 退出word服务器
    end
else
    msgbox('保存的数据不能为空！','确认','error');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear logic_judge K_1 newK_1 two_newK_1
% global c_Array 
logic_judge=0;
%取深度
table_D = get(handles.uitable2,'Data');
K_i1 = table_D(:,3);

%浮力系数(取E和F的密度)
E_i1 = get(handles.uitable4,'Data');
E_i1 = E_i1(:,1);
F_i1 = get(handles.uitable15,'Data');
F_i1 = F_i1(:,1);

%取线重
D_n6 = table_D(:,6);

for i=1:size(K_i1)   %检查测深，垂深数据是否为空
    if K_i1(i) == ""
        msgbox('请检查作业管柱深度', '错误','error');
        logic_judge=1;
        break
    end
end

for i=1:size(E_i1)   %检查钻井液及相关基础数据是否为空
    if (E_i1(i) == "" || F_i1(i) =="")
        msgbox('请检查钻井液性能及相关基础数据', '错误','error');
        logic_judge=1;
        break
    end
end

for i=1:size(D_n6)   %检查线重数据是否为空
    if D_n6(i) == ""
        msgbox('请检查作业管柱线重', '错误','error');
        logic_judge=1;
        break
    end
end

if(logic_judge==0)  %数据均正确
    %测深，垂深
    newK_i1 = ['0';K_i1]
    newK_i2 = ['0';K_i1]
    
    %浮力系数
    K_i3 = 1-(str2double(cell2mat(E_i1(:,1))) ./ str2double(cell2mat(F_i1(:,1)))); %浮力系数计算
    K_i3 = cellstr(num2str(K_i3,'%.2f'));    %转化成cell数组{字符串}
%     newK_3 = sprintf('%.2f',newK_3) %保留小数后两位
    newK_i3 = K_i3;
    for j=1:size(K_i1)-1   %将K3扩充与K1，K2相同行数-1
        newK_i3 = [newK_i3;K_i3];
    end
    newK_i3 = ['0';newK_i3]

    %管柱有效线重
    K_i4 = str2num(cell2mat(K_i3)).*str2num(char(D_n6)); %线重计算
    K_i4 = cellstr(num2str(K_i4,'%.2f'));    %转化成cell数组{字符串}
    newK_i4 = ['0';K_i4]
    
    %有向轴向力
    K_i5 = 0;
    newK_i5 = [];
    for i=size(K_i4):-1:1 %倒序递归,运算次数：size(K_i4)
        K_i5 =K_i5 + str2double(cell2mat(newK_i4(i+1,1))) .* (str2double(cell2mat(newK_i1(i+1,1)))-str2double(cell2mat(newK_i1(i,1)))).*0.001;
        DB_K_i5 = cellstr(num2str(K_i5,'%.2f'));    %转化成cell数组{字符串}
        newK_i5 = [DB_K_i5;newK_i5];
    end
    newK_i5 = [newK_i5;'0']
    
    result_Data = [newK_i1,newK_i2,newK_i3,newK_i4,newK_i5];   %拼接所有列
    set(handles.uitable5,'Data',result_Data);   %填充表格
end 



% --- Executes during object creation, after setting all properties.
function uipanel7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3


% --- Executes during object creation, after setting all properties.
function text11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear file;
clear path;
clear file_path;
[file,path] = uigetfile('*.xlsx'); %浏览文件
file_suffix0 = file(end-5:end);
file_suffix = file_suffix0(strfind(file_suffix0,'.'):end);  %判断文件类型
clear file_suffix0;
file_path = strcat(path,file)
if(file_suffix == '.xlsx') 
    [num,txt,raw]=xlsread(file_path);    %读取Excel文件
    raw=cellfun(@(raw) num2str(raw),raw,'UniformOutput',false); %将excel中读取的数值转字符串
    set(handles.uitable5,'Data',raw);
end


% --- Executes when selected cell(s) is changed in uitable1.
function uitable1_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
%行列索引
global row;
global col;
index=eventdata.Indices;
row=index(1)
col=index(2)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData_front newData_back newArray oldData;
clear prompt title lines def tab newrow1 newrow2 newrow3;
clear indx tf new_Data;
global row;
%重组矩阵
oldData = get(handles.uitable1,'Data');%获取表格数据矩阵 
% oldData = num2cell(oldData);
% newArray = {'', '', ''};
prompt ={'测深','井斜角','方位角'}; %对话框内容提示
title = '请输入数据';    %对话框标题
lines = [1,1,1]; %设置输入框行数
if (row ~= 1&row ~= size(oldData,1) )
    newData_front = oldData(1:row-1,:);  
    newData_back = oldData(row:end,:);
    tab = inputdlg(prompt,title,lines);  %对话框设置
    newrow1 = tab{1};   %对话框第一行内容
    newrow2 = tab{2}; %对话框第二行内容
    newrow3 = tab{3}; %对话框第三行内容
    newArray = {newrow1, newrow2, newrow3,newrow1};%保存在新的矩阵中
    newData = [newData_front;newArray;newData_back];
    set(handles.uitable1,'Data',newData);  %显示到表格中
elseif (row == 1) 
%     newData = [newArray;oldData];
%     set(handles.uitable1,'Data',newData);  %显示到表格中
    tab = inputdlg(prompt,title,lines);  %对话框设置
    newrow1 = tab{1};   %对话框第一行内容
    newrow2 = tab{2}; %对话框第二行内容
    newrow3 = tab{3}; %对话框第三行内容
    newArray = {newrow1, newrow2, newrow3,newrow1}; %保存在新的矩阵中
    newData = [newArray;oldData]
    set(handles.uitable1,'Data',newData);  %显示到表格中
elseif (row == size(oldData,1))
    [indx tf]=listdlg('ListString',{'前插一行','后插一行'},...
    'Name','选择一个','OKString','确定','CancelString','取消',...
    'SelectionMode','single','ListSize',[180 80]);
    if (indx == 1)
        newData_front = oldData(1:row-1,:);  
        newData_back = oldData(row,:);
%         newData = [newData_front;newArray;newData_back];
%         set(handles.uitable1,'Data',newData);  %显示到表格中
        tab = inputdlg(prompt,title,lines)  %对话框设置
        newrow1 = tab{1};   %对话框第一行内容
        newrow2 = tab{2}; %对话框第二行内容
        newrow3 = tab{3}; %对话框第三行内容
        newArray = {newrow1,newrow2,newrow3,newrow1}; %保存在新的矩阵中
        newData = [newData_front;newArray;newData_back];
        set(handles.uitable1,'Data',newData);  %显示到表格中
    elseif(indx == 2)
%         newArray = {'', '', ''};
%         newData = [str2num(char(oldData));newArray];
%         set(handles.uitable1,'Data',newData);  %显示到表格中
        tab = inputdlg(prompt,title,lines)  %对话框设置
        newrow1 = tab{1};  %对话框第一行内容
        newrow2 = tab{2}; %对话框第二行内容
        newrow3 = tab{3}; %对话框第三行内容
        newArray = {newrow1,newrow2,newrow3,newrow1}; %保存在新的矩阵中
        new_Data = [oldData;newArray]
        set(handles.uitable1,'Data',new_Data);  %显示到表格中
    end    
end

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData;
global row;
if(row>0)
    newData = get(handles.uitable1,'Data');  %获取表格数据矩阵
%     newData = newData{1,1};
    newData(row,:) = [];   %删除选中的某行数据
    set(handles.uitable1,'Data',newData);  %显示到表格中
else
    msgbox('请先选择要删除的行！','确认','error');
end

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newArray oldData newData;
global row2;
%重组矩阵
oldData = get(handles.uitable2,'Data');%获取表格数据矩阵 
if (row2 ~= 1&row2 ~= size(oldData,1) )
    newData_front = oldData(1:row2-1,:);  
    newData_back = oldData(row2:end,:);
    newArray = {'', '', '','','','','',''}; 
    newData = [newData_front;newArray;newData_back];
    set(handles.uitable2,'Data',newData);  %显示到表格中
elseif (row2 == 1) 
    newArray = {'', '', '','','','','',''}; 
    newData = [newArray;oldData]
    set(handles.uitable2,'Data',newData);  %显示到表格中
elseif (row2 == size(oldData,1))
    [indx tf]=listdlg('ListString',{'前插一行','后插一行'},...
    'Name','选择一个','OKString','确定','CancelString','取消',...
    'SelectionMode','single','ListSize',[180 80]);
    if (indx == 1)
        newData_front = oldData(1:row2-1,:);  
        newData_back = oldData(row2,:);
        newArray = {'', '', '','','','','',''}; 
        newData = [newData_front;newArray;newData_back];
        set(handles.uitable2,'Data',newData);  %显示到表格中
    elseif(indx == 2)
        newArray = {'', '', '','','','','',''}; 
        new_Data = [oldData;newArray];
        set(handles.uitable2,'Data',new_Data);  %显示到表格中
    end    
end





% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData;
global row2;
if(row2>0)
    newData = get(handles.uitable2,'Data');  %获取表格数据矩阵
%     newData = newData{1,1};
    newData(row2,:) = [];   %删除选中的某行数据
    set(handles.uitable2,'Data',newData);  %显示到表格中
else
    msgbox('请先选择要删除的行！','确认','error');
end

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData;
global row3;
if(row3>0)
    newData = get(handles.uitable3,'Data');  %获取表格数据矩阵
    newData = newData{1,1};
    newData(row3,:) = [];   %删除选中的某行数据
    set(handles.uitable3,'Data',newData);  %显示到表格中
else
    msgbox('请先选择要删除的行！','确认','error');
end

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newArray oldData newData;
% global row3;
oldData = get(handles.uitable3,'Data');  %获取表格数据矩阵 
newArray = {'', '0', '0','0'}; %保存在新的矩阵中
newData = [oldData;newArray];
set(handles.uitable3,'Data',newData);  %显示到表格中


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oldData = get(handles.uitable4,'Data');  %获取表格数据矩阵 
newArray = {'', '', ''}; %保存在新的矩阵中
newData = [oldData;newArray];
set(handles.uitable4,'Data',newData);  %显示到表格中

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData;
global row4;
if(row4>0)
    newData = get(handles.uitable4,'Data');  %获取表格数据矩阵
%     newData = newData{1,1};
    newData(row4,:) = [];   %删除选中的某行数据
    set(handles.uitable4,'Data',newData);  %显示到表格中
else
    msgbox('请先选择要删除的行！','确认','error');
end

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
table_data3 = get(handles.uitable5(1,1),'Data');
data3_1 = table_data3(:,1);
data3_2 = table_data3(:,2);
x = cell2mat(data3_1);
y = cell2mat(data3_2);
disp(x);
disp(y);
axes(handles.axes1); 
plot(x,y);

% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in uitable2.
function uitable2_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
clear cell_Grade cell_Diameter Dia_Value Wei_Value Gra_Value;
global row2 col2;
%global c_Array cell_Grade cell_Diameter Dia_Value Wei_Value Gra_Value;
row2=eventdata.Indices(1);
col2=eventdata.Indices(2);
if(col2 ~= 1 && col2 ~= 2 && col2 ~= 3 && col2 ~= 8)
%     f = figure('defaultuicontrolunits','normalized');   %normalized列表框百分比占位
%     %套管类型
%     txt_Diameter = uicontrol(f,'Style','text');
%     txt_Diameter.Position = [0.04,0.9,0.15,0.1];  %左，底，宽，高
%     txt_Diameter.String = {'套管类型'};
%     txt_Diameter.FontSize = 10;
%     N_Diameter = uicontrol(f,'Style','listbox');
%     N_Diameter.Position = [0,0,0.25,0.95];  %左，底，宽，高
%     cell_Diameter = {'5 ','5 1/2','6 5/8'};
%     N_Diameter.String = cell_Diameter;
%     Dia_Value = N_Diameter.Value;   %获取选择的值
%     
%     
%     %标称重量
%     txt_Weight = uicontrol(f,'Style','text');
%     txt_Weight.Position = [0.29,0.9,0.15,0.1];  %左，底，宽，高
%     txt_Weight.String = {'标称重量'};
%     txt_Weight.FontSize = 10;
%     N_Weight = uicontrol(f,'Style','listbox');
%     N_Weight.Position = [0.25,0,0.25,0.95];  %左，底，宽，高
%     c_mat = c_Array.taoguanDB;
%     N_Weight.String = c_mat(:,3);
%     Wei_Value= N_Weight.Value;
%     
%     %钢级
%     txt_Grade = uicontrol(f,'Style','text');
%     txt_Grade.Position = [0.54,0.9,0.15,0.1];  %左，底，宽，高
%     txt_Grade.String = {' 钢  级 '};
%     txt_Grade.FontSize = 10;
%     cell_Grade = {'J55','K55','M65','L801','L809Cr','L8013Cr','N80',...
%         'C90','R95','T95','C110','P110','Q125','H40','Q125'};   %建立数组方便筛选
%     N_Grade = uicontrol(f,'Style','listbox');
%     N_Grade.Position = [0.5,0,0.25,0.95];  %左，底，宽，高
% %     c_mat = c_Array.taoguanDB;
% %     N_Grade.String = c_mat(:,5);
%     N_Grade.String = cell_Grade;
%     Gra_Value= N_Grade.Value;
%     
%     %按钮
%     confirm_Button = uicontrol(f,'Style','pushbutton');
%     confirm_Button.Position = [0.79,0.9,0.15,0.1];  %左，底，宽，高
%     confirm_Button.String = {' 确  定 '};
%     confirm_Button.Callback = pushData(handles.uitable2);
    D1 = hObject.Data(row2,1);
    D4 = hObject.Data(row2,4);
    D5 = hObject.Data(row2,5);
    D6 = hObject.Data(row2,6);
    D7 = hObject.Data(row2,7);
    put_in_in = {D1 D4 D5 D6 D7};
    pass_Data = chooseGUI(put_in_in);    %调用chooseGUI.m文件
    
    %返回值数据类型转换
%     pass_Data1 = pass_Data(1);
%     pass_Data1 = cellstr(pass_Data1{1});
%     pass_Data1 = pass_Data1{1}   
    pass_Data2 = pass_Data(2)
%     pass_Data2 = pass_Data2{1}   
    pass_Data3 = pass_Data(3)
%     pass_Data3 = pass_Data3{1}  
    pass_Data4 = pass_Data(4)
%     pass_Data4 = pass_Data4{1} 
    pass_Data5 = pass_Data(5)
    pass_Data5 = cellstr(pass_Data5{1})
%     pass_Data5 = pass_Data5{1}

    %填充数据
%     hObject.Data(row2,1) = pass_Data1;
    hObject.Data(row2,4) = pass_Data2;
    hObject.Data(row2,5) = pass_Data3;
    hObject.Data(row2,6) = pass_Data4;
    hObject.Data(row2,7) = pass_Data5;
elseif(col2 == 1)
[indx tf]=listdlg('ListString',{'套管','井眼'},...
'Name','选择一个','OKString','确定','CancelString','取消',...
'SelectionMode','single','ListSize',[200 100]);
if (indx == 1)
    hObject.Data(row2,col2) = {'套管'};
elseif(indx == 2)
    hObject.Data(row2,col2) = {'井眼'};
end    
elseif(col2 == 8)
    [indx tf]=listdlg('ListString',{'STC','LTC','BTC'},...
    'Name','选择一个','OKString','确定','CancelString','取消',...
    'SelectionMode','single','ListSize',[200 100]);
    if (indx == 1)
        hObject.Data(row2,col2) = {'STC'};
    elseif(indx == 2)
        hObject.Data(row2,col2) = {'LTC'};
    elseif(indx == 3)
        hObject.Data(row2,col2) = {'BTC'};
    end    
end

function pushData(handles)     %填充数据
    global row2 cell_Grade Dia_Value Gra_Value;
    cell2mat(cell_Grade(Dia_Value))
    handles.Data(row2,1) = (cell_Grade(Dia_Value))   %套管类型数据填充
    handles.Data(row2,7) = cell_Grade(Gra_Value);    %钢级数据填充


% --- Executes when selected cell(s) is changed in uitable3.
function uitable3_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
global row3;
global col3;
row3=eventdata.Indices(1)
col3=eventdata.Indices(2)
if(col3 == 1)
    [indx tf]=listdlg('ListString',{'套管','裸眼'},...
    'Name','选择一个','OKString','确定','CancelString','取消',...
    'SelectionMode','single','ListSize',[180 80]);
    if (indx == 1)
        hObject.Data(row3,col3) = {'套管'};
    elseif(indx == 2)
        hObject.Data(row3,col3) = {'裸眼'};
    end    
end


% --- Executes when selected cell(s) is changed in uitable4.
function uitable4_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable4 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
global row4;
global col4;
row4=eventdata.Indices(1);
col4=eventdata.Indices(2);


% --- Executes when entered data in editable cell(s) in uitable2.
function uitable2_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
clear d_Moren a b c logical;
global row2 col2;
d_Moren=get(hObject,'Data');
logical = 1;    %logical为1表示长度数据填写无误
for i=1:row2 %遍历到输入数据所在行，检查长度是否填写完整
    if size(cell2mat(d_Moren(i,2)),2)==0  %第2列不为空
        logical = 0;
        hObject.Data(row2,col2) = cellstr('');
        errordlg('请检查长度是否填写完整！','错误','on');
        break
    end
end
if logical == 1
    if (row2 == 1&& col2==2)    %判断是否是第一行
        hObject.Data(row2,col2+1) = hObject.Data(row2,col2);
    end
    for j=2:size(d_Moren,1) %从第2行开始，遍历所有行，重新计算每一行的深度
        a=str2num(cell2mat(hObject.Data(j-1,3)));
        b=str2num(cell2mat(hObject.Data(j,2)));
        c={num2str(b+a)};
        hObject.Data(j,3) = c;
    end
end


% --------------------------------------------------------------------
function pannel1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to pannel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel8,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel7,'Visible','off');


% --------------------------------------------------------------------
function pannel2_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to pannel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel8,'Visible','on');
set(handles.uipanel4,'Visible','on');
set(handles.uipanel7,'Visible','on');


% --------------------------------------------------------------------
function uipushtool2_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oldData = get(handles.uitable15,'Data');  %获取表格数据矩阵 
newArray = {'', ''}; %保存在新的矩阵中
newData = [oldData;newArray];
set(handles.uitable15,'Data',newData);  %显示到表格中

% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear newData;
global row5;
if(row5>0)
    newData = get(handles.uitable15,'Data');  %获取表格数据矩阵
%     newData = newData{1,1};
    newData(row5,:) = [];   %删除选中的某行数据
    set(handles.uitable15,'Data',newData);  %显示到表格中
else
    msgbox('请先选择要删除的行！','确认','error');
end

% --- Executes during object creation, after setting all properties.
function uitable1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
a_Moren = [{'0' '0' '0' '0'};{'','0','0','0'}];
set(hObject,'Data',a_Moren);


% --- Executes when entered data in editable cell(s) in uitable3.
function uitable3_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
clear b_Moren a b c logical i j;
global row3 col3;
b_Moren=get(hObject,'Data');
logical = 1;    %logical为1表示长度数据填写无误
for i=1:row3 %遍历到输入数据所在行，检查长度是否填写完整
    if size(cell2mat(b_Moren(i,2)),2)==0  %第2列不为空
        logical = 0;
        hObject.Data(row3,col3) = cellstr('');
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

% --- Executes during object creation, after setting all properties.
function uitable3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
clear b_Moren;
b_Moren = [{'' '0' '0' '0'};{'','0','0','0'}];
set(hObject,'Data',b_Moren);


% --- Executes when entered data in editable cell(s) in uitable15.
function uitable15_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable15 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in uitable15.
function uitable15_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable15 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
global row5;
global col5;
row5=eventdata.Indices(1);
col5=eventdata.Indices(2);


% --- Executes during object creation, after setting all properties.
function uitable4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
clear e_Moren;
e_Moren = [{'0','0','0'}];
set(hObject,'Data',e_Moren);


% --- Executes during object creation, after setting all properties.
function uitable15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
clear f_Moren;
f_Moren = [{'7.85','','','1.8','1.125','1.15'}];
set(hObject,'Data',f_Moren);


% --- Executes during object creation, after setting all properties.
function uitable5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
init_uitable5 = [{'0','0','0','0'}];
set(hObject,'Data',init_uitable5);


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
label_Data = get(handles.uitable5,'Data');
x_Data = label_Data(:,5)
y_Data = label_Data(:,1)
x=[];
y=[];
for i=1:size(x_Data)
    x(end+1) = str2num(cell2mat(x_Data(i)));
end
x=fliplr(x); %数组倒序排列
for i=1:size(y_Data)
    y(end+1) = str2num(cell2mat(y_Data(i)));
end
y=fliplr(y); %数组倒序排列
%绘图
plot(handles.axes1,x,y)
set(handles.axes1,'YDir','reverse')
set(handles.axes1,'XAxisLocation','top')
grid on


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); %取得axes１的句柄
if isempty(handles.axes1)
	return;
end
newFig = figure;%由于直接保存axes1上的图像有困难，所以保存在新建的figure中的谱图
set(newFig,'Visible','off')%设置新建的figure为不可见
newAxes = copyobj(handles.axes1,newFig);	%将axes1中的图复制到新建的figure中
set(newAxes,'Units','default','Position','default');	% 设置图显示的位置
[filename,pathname] = uiputfile({ '*.jpg','figure type(*.jpg)'}, '保存原始波形');
if isequal(filename,0)||isequal(pathname,0)%如果用户选择“取消”，则退出
	return;
else
	fpath=fullfile(pathname,filename);
end
%imwrite(newFig,fpath);%如果用户选择“取消”，则退出
f = getframe(newFig);
f = frame2im(f);
imwrite(f, fpath);


% --------------------------------------------------------------------
function uipushtool3_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function uipushtool4_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function uitoggletool1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
