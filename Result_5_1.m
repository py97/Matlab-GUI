function varargout = Result_5_1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_5_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_5_1_OutputFcn, ...
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


function Result_5_1_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','螺纹工作受力计算');
global pass_Data table_F table_K table_I table_O
global K_i4 F_i2 I_i8 I_i9 O_i9 F_i4 F_i6 F_i7 

pass_Data = varargin{1};
table_F = pass_Data{5};
table_I = pass_Data{6};
table_K = pass_Data{7};
table_O = pass_Data{9};

K_i4 =  table_K(:,4);
F_i2 =  table_F(:,2);
F_i4 =  table_F(:,4);
F_i6 =  table_F(:,6);
F_i7 =  table_F(:,7);
I_i8 =  table_I(:,8);
I_i9 =  table_I(:,9);
O_i9 =  table_O(:,9);

%判断之前是否计算过pass_Data---------------------------------------------------------------%
try
table_Z1 = pass_Data{23};
table_Z2 = pass_Data{21};
ResM_5_1 = pass_Data{22};
% if size(table_Z1) ~= 0 && size(table_Z1,2) == 8
    set(handles.M_uitable1,'Data',ResM_5_1)
% end
% if size(table_Z2) ~= 0 && size(table_Z2,2) == 4
    set(handles.Z1_uitable2,'Data',table_Z1)
% end
% if size(ResM_5_1) ~= 0 && size(ResM_5_1,2) == 5
    set(handles.Z2_uitable3,'Data',table_Z2)
% end
catch
end
%------------------------------------------------------------------------------------------%

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Result_5_1_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


%计算-------------------------------------------------------------------------------------------------------------------------
function pushbutton1_Callback(hObject, eventdata, handles)
global K_i4 F_i2 I_i8 I_i9  O_i9 F_i4 F_i6 F_i7
global pass_Data
% clear logic_judge
% logic_judge=0;
%判断数据是否输入完整	

%计算------------------------------------------------------------------------------------------------------------------------
%M_28---M_34矩阵    double型
%最大轴向力（kN）：M_28
%直井时:MAX（K_i,4）
z_M_28 = max(str2num(char(K_i4(:,1))))   
% %定向井时:MAX（L_i,5）
% d_M_28 = max(str2num(char(L_i5(:,1))))  

%最大钻压（kN）:M_29
%直井时:F_1,2
z_M_29 = str2num(char(F_i2(1,1)))   
% %定向井时:F_1,2
% d_M_29 = str2num(char(F_i2(1,1)))  

%管外最大液压（MPa）:M_32
%直井时:MAX(I_i,9)
z_M_32 = str2num(char(I_i9(end,1)))   
% %定向井时:MAX(J_i,17)
% d_M_32 = str2num(char(T_i12(end,1)))

%管内最大液压（MPa）:M_33
%直井时:MAX(I_i,8)
z_M_33 = max(str2num(char(I_i8(:,1))) )  
% %定向井时:MAX(J_i,16)
% d_M_33 = max(str2num(char(J_i16(:,1))) );

%最大扭矩（kN.m）:M_34
%直井时:O_1,9
z_M_34 = str2num(char(O_i9(1,1))) 
% %定向井时:Q_1,9
% d_M_34 = str2num(char(Q_i9(1,1))) 

%Z矩阵---------------------------------------------------------------------------------------------------------------------
%偏梯螺纹:Z_i1
Z_i1 = {'偏梯螺纹'}

%套管尺寸（mm）:Z_i2
Z_i2 = 139.7

%钢材:Z_i3
%P110
Z_i3 = {'P110'}

%管材屈服强度（MPa）:Z_i4
Z_i4 = 758

%管材极限抗拉强度（MPa）:Z_i5
Z_i5 = 945

%螺纹升角（°）:Z_i6
Z_i6 = 1.7899

%承载面夹角（°）:Z_i7
Z_i7 = 3

%导向面夹角（°）:Z_i8
Z_i8 = 10

%套管螺纹拉扭等效应力(MPa):Z_i9
%0.5885*M_1,34^2-0.4134*M_1,34+0.5562*M_1,28
Z_i9 = 0.5885*z_M_34^2-0.4134*z_M_34+0.5562*z_M_28

%套管螺纹拉扭极限应力(MPa):Z_i10
%       Z_1,5-0.5885*M_1,34^2+0.4134*M_1,34
Z_i10 = Z_i5-0.5885*z_M_34^2 +0.4134*z_M_34

%套管螺纹拉扭安全系数:Z_i11
%Z_1,10/Z_1,9
Z_i11 = Z_i10/Z_i9

%套管螺纹压扭等效应力(MPa):Z_i12
%       0.5472*M_1,34^2+6.3056*M_1,34+0.5562*M_1,29
Z_i12 = 0.5472*z_M_34^2+6.3056*z_M_34+0.5562*z_M_29

%套管螺纹压扭极限应力(MPa):Z_i13
%       Z_1,4-0.5472*M_1,34^2-6.3056*M_1,34
Z_i13 = Z_i4-0.5472*z_M_34^2-6.3056*z_M_34

%套管螺纹压扭安全系数:Z_i14
%       Z_1,13/Z_1,12
Z_i14 = Z_i13/Z_i12

%套管螺纹等效密封应力(MPa):Z_i15
%       0.0002*M_1,33^3*0.0373*M_1,33^2+6.4113*M_1,33
Z_i15 = 0.0002*z_M_33^3*0.0373*z_M_33^2+6.4113*z_M_33

%套管螺纹极限密封应力(MPa):Z_i16
%Z_1,4
Z_i16 = Z_i4

%套管内部液压螺纹径向变形(mm):Z_i17
%       0.00002*M_1,33^3-0.0015*M_1,33^2+0.0319*M_1,33-0.1321
Z_i17 = 0.00002*z_M_33^3-0.0015*z_M_33^2+0.0319*z_M_33-0.1321

%套管螺纹密封安全系数:Z_i18
%Z_1,16/Z_1,15
Z_i18 = Z_i16/Z_i15

%套管螺纹可靠性校核结果:Z_i19
%IF((Z_1,11>F_1,4)*                 AND(Z_1,14>F_1,7)*AND(Z_1,18>F_1,6),"满足要求")
if Z_i11 > str2num(char(F_i4(1,1))) && Z_i14 > str2num(char(F_i7(1,1))) && Z_i18 > str2num(char(F_i6(1,1)))
    Z_i19 = {'螺纹满足要求'}
else
    Z_i19 = {'需更换接箍螺纹类型'}
end

Z_i9 = cellstr(strjust(num2str(Z_i9),'left'));
Z_i10 = cellstr(strjust(num2str(Z_i10),'left'));
Z_i11 = cellstr(strjust(num2str(Z_i11),'left'));
Z_i12 = cellstr(strjust(num2str(Z_i12),'left'));
Z_i13 = cellstr(strjust(num2str(Z_i13),'left'));
Z_i14 = cellstr(strjust(num2str(Z_i14),'left'));
Z_i15 = cellstr(strjust(num2str(Z_i15),'left'));
Z_i16 = cellstr(strjust(num2str(Z_i16),'left'));
Z_i17 = cellstr(strjust(num2str(Z_i17),'left'));
Z_i18 = cellstr(strjust(num2str(Z_i18),'left'));

z_M_28 = cellstr(strjust(num2str(z_M_28),'left'));
z_M_29 = cellstr(strjust(num2str(z_M_29),'left'));
z_M_32 = cellstr(strjust(num2str(z_M_32),'left'));
z_M_33 = cellstr(strjust(num2str(z_M_33),'left'));
z_M_34 = cellstr(strjust(num2str(z_M_34),'left'));
result_M_Data = [z_M_28,z_M_29,z_M_32,z_M_33,z_M_34];
set(handles.M_uitable1,'Data',result_M_Data);
pass_Data{22} = result_M_Data;

Z_i2 = cellstr(strjust(num2str(Z_i2),'left'));  
Z_i4 = cellstr(strjust(num2str(Z_i4),'left'));
Z_i5 = cellstr(strjust(num2str(Z_i5),'left'));
Z_i6 = cellstr(strjust(num2str(Z_i6),'left'));
Z_i7 = cellstr(strjust(num2str(Z_i7),'left'));
Z_i8 = cellstr(strjust(num2str(Z_i8),'left'));
result_Z1_Data = [Z_i1,Z_i2,Z_i3,Z_i4,Z_i5,Z_i6,Z_i7,Z_i8];
set(handles.Z1_uitable2,'Data',result_Z1_Data);
pass_Data{23} = result_Z1_Data;

result_Z2_Data = [Z_i9;Z_i10;Z_i11;Z_i12;Z_i13;Z_i14;Z_i15;Z_i16;Z_i17;Z_i18;Z_i19];
set(handles.Z2_uitable3,'Data',result_Z2_Data)
pass_Data{21} = result_Z2_Data;


%导出图表----------------------------------------------------------------------------------------------------------------------
function P_OutBut_5_1_Callback(hObject, eventdata, handles)
table_Data1 = get(handles.M_uitable1,'Data');
table_Data2 = get(handles.Z1_uitable2,'Data');
table_Data3 = get(handles.Z2_uitable3,'Data');
%导出报告-------------------------------------------------------------------
filter = {'*.docx';'*.*'};
[Filename,Pathname] = uiputfile(filter,'另存为','data.docx');  %创建文件保存对话框
if (Filename==0 & Pathname==0)
        msgbox('您没有导出报告!','确认','error');
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
        end
        Word.Visible = 1; % 或set(Word, 'Visible', 1);

        % 若测试文件存在，打开该测试文件，否则，新建一个文件，并保存，文件名为测试.docx
        if exist(filespec_user,'file')
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

        %板块
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
        DTI5_1 = Document.Tables.Item(1); % 或DTI = Tables;
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
        DTI5_1.Cell(2,1).Range.Text = char(table_Data1(1,1));
        DTI5_1.Cell(2,2).Range.Text = char(table_Data1(1,2));
        DTI5_1.Cell(2,3).Range.Text = char(table_Data1(1,3));
        DTI5_1.Cell(2,4).Range.Text = char(table_Data1(1,4));
        DTI5_1.Cell(2,5).Range.Text = char(table_Data1(1,5));

        %第二个已知表格
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落  
        %绘制数据表格
        Selection.Font.Size = 11;   %设置表格中字体大小为11
        Tables = Document.Tables.Add(Selection.Range,2,8);    % 2行 5列
        DTI5_2 = Document.Tables.Item(2); % 或DTI = Tables;
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
        DTI5_2.Cell(2,1).Range.Text = char(table_Data2(1,1));
        DTI5_2.Cell(2,2).Range.Text = char(table_Data2(1,2));
        DTI5_2.Cell(2,3).Range.Text = char(table_Data2(1,3));
        DTI5_2.Cell(2,4).Range.Text = char(table_Data2(1,4));
        DTI5_2.Cell(2,5).Range.Text = char(table_Data2(1,5));
        DTI5_2.Cell(2,6).Range.Text = char(table_Data2(1,6));
        DTI5_2.Cell(2,7).Range.Text = char(table_Data2(1,7));
        DTI5_2.Cell(2,8).Range.Text = char(table_Data2(1,8));
        
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
        DTI5_3 = Document.Tables.Item(3); % 或DTI = Tables;
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
        DTI5_3.Cell(1,2).Range.Text = char(table_Data3(1,1));
        DTI5_3.Cell(2,2).Range.Text = char(table_Data3(2,1));
        DTI5_3.Cell(3,2).Range.Text = char(table_Data3(3,1));
        DTI5_3.Cell(4,2).Range.Text = char(table_Data3(4,1));
        DTI5_3.Cell(5,2).Range.Text = char(table_Data3(5,1));
        DTI5_3.Cell(6,2).Range.Text = char(table_Data3(6,1));
        DTI5_3.Cell(7,2).Range.Text = char(table_Data3(7,1));
        DTI5_3.Cell(8,2).Range.Text = char(table_Data3(8,1));
        DTI5_3.Cell(9,2).Range.Text = char(table_Data3(9,1));
        DTI5_3.Cell(10,2).Range.Text = char(table_Data3(10,1));
        DTI5_3.Cell(11,2).Range.Text = char(table_Data3(11,1));
        
        Selection.Start = Content.end; % 设定光标位置为最后
        Selection.TypeParagraph;    %插入新的空段落       
        
        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
        Document.Save; % 保存文档
end
