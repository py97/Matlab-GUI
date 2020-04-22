function varargout = Result_1_2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_1_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_1_2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

try
if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
catch
end

function Result_1_2_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','套管钻井管串力学分析软件');

global pass_Data c_Array table_A table_B table_C table_D table_E table_F A_i1
global A_i2 A_i3 A_i4  
global B_i1 B_i2 B_i3 B_i4 B_i5
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global E_i1 E_i2 E_i3 
global F_i1 F_i2 F_i3 F_i4 F_i5 F_i6 F_i7
 
c_Array=load('taoguanDB.mat');
table_C = c_Array.taoguanDB;
% class(table_C):       table_C:string
pass_Data = varargin{1};
table_A = pass_Data{1};
% class(table_A)        table_A table_B table_D table_E table_F:cell
table_B = pass_Data{2};
table_D = pass_Data{3};
table_E = pass_Data{4};
table_F = pass_Data{5};
A_i1 = table_A(:,1);A_i2 = table_A(:,2);A_i3 = table_A(:,3);A_i4 = table_A(:,4);
B_i1 = table_B(:,1);B_i2 = table_B(:,2);B_i3 = table_B(:,3);B_i4 = table_B(:,4);B_i5 = table_B(:,5);
D_i1 = table_D(:,1);D_i2 = table_D(:,2);D_i3 = table_D(:,3);D_i4 = table_D(:,4);D_i5 = table_D(:,5);
D_i6 = table_D(:,6);D_i7 = table_D(:,7);D_i8 = table_D(:,8);
E_i1 = table_E(:,1);E_i2 = table_E(:,2);E_i3 = table_E(:,3);
F_i1 = table_F(:,1);F_i2 = table_F(:,2);F_i3 = table_F(:,3);F_i4 = table_F(:,4);F_i5 = table_F(:,5);
F_i6 = table_F(:,6);F_i7 = table_F(:,7);

%判断之前是否计算过pass_Data--------------------------------------------------
try
table_L = pass_Data{32};
% if size(table_L) ~= 0 && size(table_L,2) == 15
    set(handles.Result_Data_1_2,'Data',table_L)
% end
L_i1 = table_L(:,1);
L_i5 = table_L(:,5);
L_i6 = table_L(:,6);
L_i7 = table_L(:,7);
L_i9 = table_L(:,9);
L_i10 = table_L(:,10);
L_i11 = table_L(:,11);
L_i13 = table_L(:,13);
L_i14 = table_L(:,14);
L_i15 = table_L(:,15);
%生成图像
	%第一幅图
    fig12_1 = figure(121);
    set(fig12_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig12_1,'menubar','none');
    set(fig12_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱轴向力结果图');
    hold on;
    y_fig12_1 = str2num(char(L_i1(1:end)));
    x_fig12_1 = str2num(char(L_i5(1:end))); 
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
    x_fig12_2 = str2num(char(L_i1(1:end)));  %井深
    y1_fig12_2 = x_fig12_1; %有效轴向力
    y2_fig12_2 = str2num(char(L_i6(1:end)));    %三轴轴向力
    y3_fig12_2 = str2num(char(L_i9(1:end)));  %最大外挤压力
    y4_fig12_2 = str2num(char(L_i10(1:end)));  %三轴抗挤强度
    y5_fig12_2 = str2num(char(L_i13(1:end))); %最大内压力
    y6_fig12_2 = str2num(char(L_i14(1:end))); %三轴抗内压强度
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
    set(fig12_3,'units','normalized','position',[0.32 0.15 0.3 0.8]);
    set(fig12_3,'menubar','none');
    set(fig12_3,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面安全系数的对数坐标结果图');
%     hold on;
    y_fig12_3 = str2num(char(L_i1(1:end)));
    x1_fig12_3 = str2num(char(L_i7(1:end)));
    x2_fig12_3 = str2num(char(L_i11(1:end)));
    x3_fig12_3 = str2num(char(L_i15(1:end)));
%     set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
%     set(gca, 'XtickLabel', {'1', '100', '10000', '1000000'});   %希望显示的刻度值
    semilogx(x1_fig12_3,y_fig12_3,x2_fig12_3,y_fig12_3,x3_fig12_3,y_fig12_3,'LineWidth',1.5)
    axis ij;     %设置原点位置位于左上角
    set(gca,'xaxislocation','top');
%     semilogx('-k','LineWidth',1.5)
%     semilogx(,'-r','LineWidth',1.5)
    grid on;
%     xlabel('钻至井底时不同井深截面处套管柱轴向力/kN','FontSize',10);
    ylabel('井深/m','FontSize',10);
    legend({'抗拉安全系数','抗挤安全系数','抗内压安全系数'},'Orientation','horizontal','Location','southoutside');

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
    
    str3 = ['最小抗拉安全系数：',num2str(min(x1_fig12_3)),'    ','井深：',num2str(jshen3)]
    str2 = ['最小抗挤安全系数：',num2str(min(x2_fig12_3)),'    ','井深：',num2str(jshen2)];
%     str1_1 =[]
    str1 = ['最小抗内压安全系数：',num2str(min(x3_fig12_3)),'    ','井深：',num2str(jshen1)]
    str = {'钻至井底时不同井深截面安全系数的对数坐标';'';str3;str2;str1;''};
    title(str,'FontSize',12);
catch
end

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);

function varargout = Result_1_2_OutputFcn(hObject, eventdata, handles) 
try
varargout{1} = handles.output;
catch
end

%计算按钮
function P_ResBut_1_2_Callback(hObject, eventdata, handles)
global pass_Data c_Array table_A table_B table_C table_D table_E table_F 
global A_i1 A_i2 A_i3 A_i4  
global B_i1 B_i2 B_i3 B_i4 B_i5
global D_i1 D_i2 D_i3 D_i4 D_i5 D_i6 D_i7 D_i8
global E_i1 E_i2 E_i3 
global F_i1 F_i2 F_i3 F_i4 F_i5 F_i6 F_i7
global result12_1 result12_2 result12_3 result12_4 result12_5 result32_3 result32_4 result32_5
global fig12_1 fig12_2 fig12_3

clear logic_judge
logic_judge=0;
try
hres1_2 = msgbox('请稍后……','提示')
%二维定向井计算中间结果
for i=1:size(A_i1)  
    %A_i1(i):cell形 '' :char
    if strcmp(' ',A_i1(i))
        msgbox('请检查井眼轨道数据的测深', '错误','error');
        logic_judge=1;
        break
    end
end		

for i=1:size(A_i2)   
    if strcmp(' ',A_i2(i))
        msgbox('请检查井眼轨道数据的井斜角', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(A_i4)   
    if strcmp(' ',cell2mat(A_i4(i)))
        msgbox('请检查井眼轨道数据的垂深', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(D_i3)   
    if strcmp(' ',cell2mat(D_i3(i)))
        msgbox('请检查作业管柱深度', '错误','error');
        logic_judge=1;
        break
    end
end	
% %-------------------------------------------------------------------------- from Young 这里对D_i3进行深度扩展处理
% newD_i3 = {};
% n=0;
% for i=1:str2num(char(D_i3(end,1)))
%     n=n+1;
%     newD_i3{end+1,1} = num2str(n);   %间隔1m
% end
% D_i3 = newD_i3;
% %--------------------------------------------------------------------------
for i=1:size(D_i4)   
    if strcmp(' ',cell2mat(D_i4(i)))
        msgbox('请检查作业管柱外径', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(D_i5)   
    if strcmp(' ',cell2mat(D_i5(i)))
        msgbox('请检查作业管柱内径', '错误','error');
        logic_judge=1;
        break
    end
end	

for i=1:size(table_E)   
    if strcmp(' ',cell2mat(table_E(i)))
        msgbox('请检查钻井液性能数据', '错误','error');
        logic_judge=1;
        break
    end
end

for i=1:size(table_F)   
    if strcmp(' ',cell2mat(table_F(i)))
        msgbox('请检查相关基础数据', '错误','error');
        logic_judge=1;
        break
    end
end

if(logic_judge==0)  %数据均正确
    %中间结果--------------------------------------------------------------------------------------------------
    %J_i1，J_i2，J_i3......,J_i20
    %测深:J_i1
    J_i1 = A_i1;
    
    %浮力系数计算:J_i2
    for i = 1:size(J_i1,1)
        J_i2(i,1) = 1-(str2num(char(E_i1(1,1))) / str2num(char(F_i1(1,1)))); 
    end
    J_i2 = strjust(cellstr(num2str(J_i2)));
    
    %套管外半径:J_i3
%     D_14 = str2num(char(D_i4(1,1)));
    if size(D_i3,1) == 1
        for i=1:size(J_i1,1)
            J_i3(i,1)= str2num(char(D_i4(1,1)))/2;
        end
    else
        for i=1:size(J_i1,1)
            for j =1:size(D_i3,1)-1
                if str2num(char(J_i1(i,1)))<=str2num(char(D_i3(1,1)))
                    J_i3(i,1)= str2num(char(D_i4(1,1)))/2;
                    break
                elseif (str2num(char(D_i3(j,1)))<str2num(char(J_i1(i,1))))&&(str2num(char(J_i1(i,1)))<=str2num(char(D_i3(j+1,1))))
                    J_i3(i,1)= str2num(char(D_i4(j+1,1)))/2;
                    break
                else
                    continue
                end
            end
        end
    end
    J_i3 = strjust(cellstr(num2str(J_i3)));

    %套管外内径:J_i4
    if size(D_i3,1) == 1
         for i=1:size(J_i1,1)
            J_i4(i,1)= str2num(char(D_i5(1,1)))/2;
        end
    else
        for i=1:size(J_i1,1)
            for j =1:size(D_i3,1)-1
                if str2num(char(J_i1(i,1)))<=str2num(char(D_i3(1,1)))
                    J_i4(i,1)= str2num(char(D_i5(1,1)))/2;
                    break
                elseif (str2num(char(D_i3(j,1)))<str2num(char(J_i1(i,1))))&&(str2num(char(J_i1(i,1)))<=str2num(char(D_i3(j+1,1))))
                    J_i4(i,1)= str2num(char(D_i5(j+1,1)))/2;
                    break
                else
                    continue
                end
            end
        end
    end
    J_i4 = strjust(cellstr(num2str(J_i4)));

    %----------------------------------------------------------------------
    %from Young 定义 tem26  tem20  tem8  tem10
    tem26={};
    tem20={};
    tem8={};
    tem10={};
    %----------------------------------------------------------------------
    %C表 接头螺纹抗拉强度 接头螺纹抗内压强度 套管抗挤强度 管材屈服强度
    for j = 1:size(table_D,1)
        for i=1:size(table_C,1)  %遍历C表的行数，确定I_i4~I_i7
            %外径
            D4 = table_C(i,2);
            DDD4 = num2str(D4{1});
            DDD4 = str2num(DDD4);
            %钢级
            D7 = table_C(i,5);
            DD7 = cellstr(D7{1});
            DDD7 = num2str(DD7{1});
            %线重
            D6 = str2num(char(table_C(i,4)));
            DDD6 = num2str(D6,'%.2f');
            DDD6 = str2num(DDD6);
            %内径
            D5 = str2num(char(table_C(i,7)));
            DDD5 = num2str(D5,'%.2f');
            DDD5 = str2num(DDD5);

            %C表：第2列外径，第5列内径，第4列线重，第7列钢级
            %D_n4:外径，D_n7钢级，D_n6:线重，D_n5：内径
            if(((abs(DDD4-str2num(cell2mat(D_i4(j,1)))))<=0.001) & strcmp(DDD7,cell2mat(D_i7(j,1))) ...
                    & ((abs(DDD6-str2num(cell2mat(D_i6(j,1)))))<=0.001) & (abs(  DDD5-str2num(cell2mat(D_i5(j,1))))   )<=0.001)
                %----------------------------------------------------------------------
                %from Young 修改
                tem26{end+1,1} = cell2mat(table_C(i,26));  %接头螺纹抗拉强度
                tem20{end+1,1} = cell2mat(table_C(i,20));  %接头螺纹抗内压强度
                tem8{end+1,1} = cell2mat(table_C(i,8));   %套管抗挤强度
                tem10{end+1,1} = cell2mat(table_C(i,10));  %管材屈服强度
                break
                %----------------------------------------------------------------------
            end
        end
    end
    %接头螺纹抗拉强度:J_i5
    if size(D_i3,1) == 1
        for i=1:size(J_i1,1)
            J_i5(i,1)= str2num(char(tem26(1,1)));
        end
    else
        for i=1:size(J_i1,1)
            for j =1:size(D_i3,1)-1
                if str2num(char(J_i1(i,1)))<=str2num(char(D_i3(1,1)))
                    J_i5(i,1)= str2num(char(tem26(1,1)));
                    break
                elseif (str2num(char(D_i3(j,1)))<str2num(char(J_i1(i,1))))&&(str2num(char(J_i1(i,1)))<=str2num(char(D_i3(j+1,1))))
                    J_i5(i,1)= str2num(char(tem26(j+1,1)));
                    break
                else
                    continue
                end
            end
        end
    end
    J_i5 = strjust(cellstr(num2str(J_i5)));
    J5 = J_i5
    
    
    %----------------------------------------------------------------------
    %接头螺纹抗内压强度:J_i6
    if size(D_i3,1) == 1
        for i=1:size(J_i1,1)
            J_i6(i,1)= str2num(char(tem20(1,1)));
        end
    else
        for i=1:size(J_i1,1)
            for j =1:size(D_i3,1)-1
                if str2num(char(J_i1(i,1)))<=str2num(char(D_i3(1,1)))
                    J_i6(i,1)= str2num(char(tem20(1,1)));
                    break
                elseif (str2num(char(D_i3(j,1)))<str2num(char(J_i1(i,1))))&&(str2num(char(J_i1(i,1)))<=str2num(char(D_i3(j+1,1))))
                    J_i6(i,1)= str2num(char(tem20(j+1,1)));
                    break
                else
                    continue
                end
            end
        end
    end
    J_i6 = strjust(cellstr(num2str(J_i6)));
    %----------------------------------------------------------------------
    %套管抗挤强度:J_i7
    if size(D_i3,1) == 1
        for i=1:size(J_i1,1)
            J_i7(i,1)= str2num(char(tem8(1,1)));
        end
    else
        for i=1:size(J_i1,1)
            for j =1:size(D_i3,1)-1
                if str2num(char(J_i1(i,1)))<=str2num(char(D_i3(1,1)))
                    J_i7(i,1)= str2num(char(tem8(1,1)));
                    break
                elseif (str2num(char(D_i3(j,1)))<str2num(char(J_i1(i,1))))&&(str2num(char(J_i1(i,1)))<=str2num(char(D_i3(j+1,1))))
                    J_i7(i,1)= str2num(char(tem8(j+1,1)));
                    break
                else
                    continue
                end
            end
        end
    end
    J_i7 = strjust(cellstr(num2str(J_i7)));
    %----------------------------------------------------------------------  
    %管材屈服强度:J_i8
    if size(D_i3,1) == 1
        for i=1:size(J_i1,1)
            J_i8(i,1)= str2num(char(tem10(1,1)));
        end
    else
        for i=1:size(J_i1,1)
            for j =1:size(D_i3,1)-1
                if str2num(char(J_i1(i,1)))<=str2num(char(D_i3(1,1)))
                    J_i8(i,1)= str2num(char(tem10(1,1)));
                    break
                elseif (str2num(char(D_i3(j,1)))<str2num(char(J_i1(i,1))))&&(str2num(char(J_i1(i,1)))<=str2num(char(D_i3(j+1,1))))
                    J_i8(i,1)= str2num(char(tem10(j+1,1)));
                    break
                else
                    continue
                end
            end
        end
    end
    J_i8 = strjust(cellstr(num2str(J_i8)));
    %---------------------------------------------------------------------- 
    %井斜角:J_i9
    J_i9 = str2num(char(A_i2(:,1))).*pi./180;
    J_i9 = strjust(cellstr(num2str(J_i9)));
    
    %井斜角余角:J_i10
    J_i10 = (90-str2num(char(A_i2(:,1)))).*pi./180;
    J_i10 = cellstr(num2str(J_i10));
    j10 = str2num(char(J_i10))
    
    %摩阻系数:J_i11
    J_i11 = {};
    for i = 1:size(J_i1,1)
        for j = 1:size(B_i1,1)
            if strcmp(cell2mat(B_i1(j,1)),'套管')
                if str2num(char(J_i1(i,1))) <= str2num(char(B_i2(j,1)))
                    J_i11{i,1} = '0.24';
                elseif str2num(char(J_i1(i,1))) > str2num(char(B_i2(j,1)))
                    J_i11{i,1} = '0.29';
                end
                break
            elseif strcmp(cell2mat(B_i1(j,1)),'裸眼')
                J_i11{i,1} = '0.29';
            end
        end
    end
    %------------------------------------------------------------------------------------------------------------------
    %井眼曲率半径:J_i12
    %IF(A_i2=0 and △A_i2=0,"无穷大")
    %IF(A_i2≠0 and △A_i2≠0,"=△J_i1/ABS(△J_i9)")
    %IF(A_i2≠0 and △A_i2=0,"无穷大")
    %from Young 修改
    J_i12 = {};
    for i = 2:size(A_i2)
        if str2num(char(A_i2(i,1))) == 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            J_i12{i,1} = '无穷大';
        elseif str2num(char(A_i2(i,1))) ~= 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1))))~=0
            J_i12{i,1} = num2str((str2num(char(J_i1(i,1))) - str2num(char(J_i1(i-1,1))))/abs(str2num(char(J_i9(i,1))) -...
                str2num(char(J_i9(i-1,1)))));
        elseif str2num(char(A_i2(i,1))) ~= 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            J_i12{i,1} = '无穷大';
        end
    end
    J_i12{1,1} = '无穷大';

%-------------------------------------------------------------------------
    %单位长度套管柱与井壁的接触力:J_i13
    %管柱有效线重:L_i4 
    %测深:L_i1
     L_i1 = A_i1;
     
    %井斜角:L_i2
     L_i2= A_i2;
    
    %垂深:L_i3
     L_i3= A_i4;
    
    %管柱有效线重:L_i4
    %J_12*D_16*0.001
    if size(D_i3,1) == 1
        for i=1:size(L_i1,1)
            L_i4(i,1)= str2num(char(J_i2(1,1)))*str2num(char(D_i6(1,1)))*0.001;
        end
    else
        for i=1:size(L_i1,1)
            for j =1:size(D_i3,1)-1
                if str2num(char(L_i1(i,1)))<=str2num(char(D_i3(1,1)))
                    L_i4(i,1)= str2num(char(J_i2(1,1)))*str2num(char(D_i6(1,1)))*0.001;
                    break
                elseif (str2num(char(D_i3(j,1)))<str2num(char(L_i1(i,1))))&&(str2num(char(L_i1(i,1)))<=str2num(char(D_i3(j+1,1))))
                    L_i4(i,1)= str2num(char(J_i2(1,1)))*str2num(char(D_i6(j+1,1)))*0.001;
                    break
                else
                    continue
                end
            end
        end
    end
    L_i4 = strjust(cellstr(num2str(L_i4)));
    
    %A:J_i14
    %IF(A_i2=0 and △A_i2=0,"无穷大")
    %IF(A_i2≠0 and △A_i2≠0,"=2*J_i,11/(1+J_i,11^2)*L_i4*J_i,12")
    %IF(A_i2≠0 and △A_i2=0,"无穷大")
    J_i14 = {};
    J_i14{1,1} = '无穷大';
    for i = 2:size(A_i2,1)
        if str2num(char(A_i2(i,1))) == 0 & (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            J_i14{i,1} = '无穷大';
        elseif str2num(char(A_i2(i,1))) ~= 0 & (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1))))~=0
%             J_i14{i,1} = num2str(  2*str2num(char(J_i11(i,1)))/(1+str2num(char(L_i11(i,1)))^2)*...
%                 str2num(char(L_i4(i,1)))*str2num(char(L_i12(i,1)))  );
            J_i14{i,1} = num2str( 2*str2num(char(J_i11(i,1)))/(1+str2num(char(J_i11(i,1)))^2)*...
                str2num(char(L_i4(i,1)))*str2num(char(J_i12(i,1)))   );
        elseif str2num(char(A_i2(i,1))) ~= 0 & (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            J_i14{i,1} = '无穷大';
        end
    end
    j14 = J_i14
    
    %B:J_i15
    %IF(A_i2=0 and △A_i2=0,"无穷大")
    %IF(A_i2≠0 and △A_i2≠0,"=(J_i,11^2-1)/(1+J_i,11^2)*L_i4*J_i,12")
    %IF(A_i2≠0 and △A_i2=0,"无穷大")
    J_i15{1,1}='0';
    for i = 2:size(A_i2,1)
        if str2num(char(A_i2(i,1))) == 0 & (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            J_i15{end+1,1} = '无穷大';
        elseif str2num(char(A_i2(i,1))) ~= 0 & (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1))))~=0
            J_i15{end+1,1} = num2str(  (str2num(char(J_i11(i,1)))^2-1)/(1+str2num(char(J_i11(i,1)))^2)*...
                str2num(char(L_i4(i,1)))*str2num(char(J_i12(i,1)))  );
        elseif str2num(char(A_i2(i,1))) ~= 0 & (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            J_i15{end+1,1} = '无穷大';
        end
    end
    j15 = J_i15

    %L_i5
    %（i）  行计算公式IF(A_i2=0 and △A_i2=0,"L_i+1,5+L_i+1,4*(L_i+1,1-L_i,1  )")
    %（i）  行计算公式IF(A_i2≠0 and △A_i2>0 and J_i,13>0,"(L_i+1,5+J_i,14  *sinJ_i+1,10-J_i,15  *cosJ_i+1,10)*EXP[J_i,11  *(J_i,10-J_i+1,10)] -J_i,14  *sinJ_i,10  +J_i,15*cosJ_i,10  ")
    %（i）  行计算公式IF(A_i2≠0 and △A_i2>0 and J_i,13<0,"(L_i+1,5-J_i,14  *sinJ_i+1,10-J_i,15  *cosJ_i+1,10)*EXP[-J_i,11  *(J_i,10-J_i+1,10)]+J_i,14  *sinJ_i,10  +J_i,15*cosJ_i,10  ")
    %（i）  行计算公式IF(A_i2≠0 and △A_i2<0,"(L_i+1,5-J_i,14  *cosJ_i+1,9+J_i,15  *sinJ_i+1,9)*EXP[-J_i,11  *(J_i,9-J_i+1,9)]+J_i,14  *cosJ_i,9  -J_i,15*sinJ_i,9  ")
    %（i）  行计算公式IF(A_i2≠0 and △A_i2=0,"L_i+1,5+L_i+1,4*(cosJ_i+1,9-J_i+1,11*sinJ_i+1,9)*(L_i+1,1-L_i,1  )")
%     L_i5 = num2str(zeros(size(A_i1)));
%     for i=1:size(A_i1,1)
%         L_i5{i,1} = '0';
%     end
    L_i5{size(A_i1,1),1}='0' ;
    for i = size(A_i1,1)-1:-1:2
        if str2num(char(A_i2(i,1))) == 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            %                                           L_i+1,5     +             L_i+1,4      *(             L_i+1,1      -             L_i,1  )
            L_i5(i,1) =  cellstr(num2str( str2num(char(L_i5(i+1,1)))+str2num(char(L_i4(i+1,1)))*(str2num(char(L_i1(i+1,1)))-str2num(char(L_i1(i,1)))) ));
            
        elseif str2num(char(A_i2(i,1))) ~= 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1))))<0
            
            L_i5(i,1) =  cellstr(num2str( (str2num(char(L_i5(i+1,1)))-str2num(char(J_i14(i,1)))*cos( str2num(char(J_i9(i+1,1))) )+...
                str2num(char(J_i15(i,1)))*sin( str2num(char(J_i9(i+1,1))) )) *exp(-str2num(char(J_i11(i,1)))*...
                 (str2num(char(J_i9(i,1)))-str2num(char(J_i9(i+1,1))) ))+str2num(char(J_i14(i,1)))*cos( str2num(char(J_i9(i,1))) )-...
                 str2num(char(J_i15(i,1))) *  sin( str2num(char(J_i9(i,1))) ) ));
             
        elseif str2num(char(A_i2(i,1))) ~= 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1))))>0
            
            L_i5(i,1) =  cellstr(num2str( (str2num(char(L_i5(i+1,1)))+str2num(char(J_i14(i,1)))*sin( str2num(char(J_i10(i+1,1))) )-str2num(char(J_i15(i,1)))*...
               cos( str2num(char(J_i10(i+1,1))) ))*exp(str2num(char(J_i11(i,1)))*(str2num(char(J_i10(i,1)))-str2num(char(J_i10(i+1,1)))))-...
               str2num(char(J_i14(i,1)))*sin( str2num(char(J_i10(i,1))) )+str2num(char(J_i15(i,1)))*cos( str2num(char(J_i10(i,1))) ) ));
           
        elseif str2num(char(A_i2(i,1))) ~= 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            
            L_i5(i,1) =  cellstr(num2str( str2num(char(L_i5(i+1,1)))+str2num(char(L_i4(i+1,1)))*(cos( str2num(char(J_i9(i+1,1))) )-...
                str2num(char(J_i11(i+1,1)))*sin( str2num(char(J_i9(i+1,1))) ))*(str2num(char(L_i1(i+1,1)))-str2num(char(L_i1(i,1)))) ));
        
        end
    end
            L_i5(1,1) =  cellstr(num2str( str2num(char(L_i5(2,1)))+str2num(char(L_i4(2,1)))*(str2num(char(L_i1(2,1)))-str2num(char(L_i1(1,1)))) ));
    
    %单位长度套管柱与井壁的接触力:J_i,13
    %IF(A_i2=0 and △A_i2=0,"=0")
    %IF(A_i2≠0 and △A_i2≠0,"=L_i4*cos(J_i,10)-L_i5/J_i,12")
    %IF(A_i2≠0 and △A_i2=0,"=L_i4*sin(J_i9)")
    for i = 2:size(A_i2)
        if str2num(char(A_i2(i,1))) == 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            J_i13(i,1) = 0;
        elseif str2num(char(A_i2(i,1))) ~= 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1))))~=0
            J_i13(i,1) = str2num(char(L_i4(i,1)))*cos(str2num(char(J_i10(i,1))))-str2num(char(L_i5(i,1)))/str2num(char(J_i12(i,1)));
        elseif str2num(char(A_i2(i,1))) ~= 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1)))) == 0
            J_i13(i,1) = str2num(char(L_i4(i,1)))*sin( str2num(char(J_i9(i,1))) );
        end
    end
    J_i13(1,1) = 0;
    J_i13 = cellstr(num2str(J_i13));
    
    J_i13 = str2num(char(J_i13(:,1)));
    for i = 1:size(A_i2)
        if str2num(char(A_i2(i,1))) ~= 0 && (str2num(char(A_i2(i,1)))-str2num(char(A_i2(i-1,1))))>0 && J_i13(i,1)<0
               J_i13(i,1) = (str2num(char(L_i5(i+1,1)))-str2num(char(J_i14(i,1)))  *sin(str2num(char(J_i10(i+1,1))))-...
                   str2num(char(J_i15(i,1)))  *cos( str2num(char(J_i10(i+1,1))) ))*exp(-str2num(char(J_i11(i,1)))*...
                   (str2num(char(J_i10(i,1)))-str2num(char(J_i10(i+1,1))) ))+str2num(char(J_i14(i,1)))*...
                   sin( str2num(char(J_i10(i,1))) )+str2num(char(J_i15(i,1)))*cos( str2num(char(J_i10(i,1))) );
        end
    end
    J_i13 = cellstr(num2str(J_i13));
    
    %截面处内压力:J_i,16
    for i = 1:size(A_i1,1)
        J_i16(i,1) = 0.00981*str2num(char(E_i1(1,1)))*str2num(char(L_i3(i,1)));
    end
    j16 = J_i16
    J_i16 = cellstr(num2str(J_i16));
    
    %截面处外压力:J_i17
    J_i17 = J_i16;
    
    %套管弯曲力；J_i18
    J_i18(1,1) = 0;
    for i = 2:size(A_i1,1)
        J_i18(i,1) = 2.32*0.001*(str2num(char(J_i3(i,1)))*2)*str2num(char(L_i4(i,1)))*abs(str2num(char(J_i9(i,1)))-str2num(char(J_i9(i-1,1))));
    end
   J_i18 = cellstr(num2str(J_i18));
   
   %套管轴向应力；J_i19
    for i = 2:size(A_i1,1)
        J_i19(i,1) = (str2num(char(J_i18(i,1)))+str2num(char(L_i5(i,1))))*1000/(pi*(str2num(char(J_i3(i,1)))^2-str2num(char(J_i4(i,1)))^2));
    end
   J_i19 = cellstr(num2str(J_i19));
   
   %套管下深处最大内压力：J_i20
    for i = 1:size(A_i1,1)
        J_i20(i,1) = str2num(char(F_i3(1,1)))*str2num(char(L_i3(i,1)));
    end
   J_i20 = cellstr(num2str(J_i20));
   
   %三轴轴向力:L_i6
   %PI*0.001*(J_i,16*J_i,4^2-J_i,17*J_i,3^2)+SQRT[J_i,5^2+3*10^(-6)*PI^2*(J_i,16-J_i,17)^2*J_i,3^4]
    for i = 1:size(A_i1,1)
        L_i6(i,1) = pi*0.001*(str2num(char(J_i16(i,1)))*str2num(char(J_i4(i,1)))^2-str2num(char(J_i17(i,1)))*str2num(char(J_i3(i,1)))^2)+...
            sqrt(str2num(char(J_i5(i,1)))^2+3*10^(-6)*pi^2*(str2num(char(J_i16(i,1)))-str2num(char(J_i17(i,1))))^2*str2num(char(J_i3(i,1)))^4);
    end
   L_i6 = cellstr(num2str(L_i6));

    %抗拉安全系数:L_i7
   for i = 1:size(A_i1,1)-1
       L_i7(i,1) = 0.9*str2num(char(L_i6(i,1)))/str2num(char(L_i5(i,1)));
   end
    L_i7(size(A_i1,1),1) = 0.9*str2num(char(L_i6(end,1)))/(str2num(char(L_i5(end,1)))+0.001);
    L_i7 = cellstr(num2str(L_i7));
    
    %校核结果:L_i8
    for i = 1:size(A_i1,1)
        if str2num(char(L_i7(i,1)))>str2num(char(F_i4(1,1)))
            L_i8(i,1) = {'满足条件'};
        else
            L_i8(i,1) = {'不满足条件'};
        end
    end

    %最大外挤压力：L_i9
    for i = 1:size(A_i1,1)
        L_i9(i,1) = 0.00981*str2num(char(E_i1(1,1)))*str2num(char(L_i3(i,1)));
    end
    L_i9 = cellstr(num2str(L_i9));
    
    %三轴抗挤强度：L_i10
    for i = 1:size(A_i1,1)
        L_i10(i,1) = str2num(char(J_i7(i,1)))*(sqrt(1-0.75*((str2num(char(J_i19(i,1)))+str2num(char(J_i16(i,1))))/str2num(char(J_i8(i,1))))^2)-0.5*((str2num(char(J_i19(i,1)))+str2num(char(J_i16(i,1))))/str2num(char(J_i8(i,1)))));
    end
    L_i10 = cellstr(num2str(L_i10));
    
    %抗挤安全系数：L_i11
    for i = 2:size(A_i1,1)
        L_i11(i,1) = str2num(char(L_i10(i,1)))/str2num(char(L_i9(i,1)));
    end
    L_i11(1,1) = str2num(char(L_i10(1,1)))/(str2num(char(L_i9(1,1)))+0.001);
    L_i11 = cellstr(num2str(L_i11));
    
    %校核结果:L_i,12
    for i = 1:size(A_i1,1)
        if str2num(char(L_i11(i,1)))>str2num(char(F_i5(1,1)))
            L_i12(i,1) = {'满足条件'};
        else
            L_i12(i,1) = {'不满足条件'};
        end
    end
    
    %任一井深处最大内压力:L_i,13
    %J_m,20/EXP[1.1155*0.0001*0.55*(L_m3-L_i3)]-L_i9
     for i = 1:size(A_i1,1)
        L_i13(i,1) = str2num(char(J_i20(end,1))) /exp(1.1155*0.0001*0.55*(str2num(char(L_i3(end,1)))-str2num(char(L_i3(i,1))) ))-str2num(char(L_i9(i,1)));
     end
    L_i13 = cellstr(num2str(L_i13));
    
    %三轴抗内压强度:L_i,14
    for i = 1:size(A_i1,1)
        L_i14(i,1) = str2num(char(J_i6(i,1)))*(str2num(char(J_i4(i,1)))^2/sqrt(3*str2num(char(J_i3(i,1)))^4+...
            str2num(char(J_i4(i,1)))^4)*((str2num(char(J_i19(i,1)))+str2num(char(J_i17(i,1))))/str2num(char(J_i8(i,1))))+...
            sqrt(1-3*str2num(char(J_i3(i,1)))^4/(3*str2num(char(J_i3(i,1)))^4+str2num(char(J_i4(i,1)))^4)*...
            ((str2num(char(J_i19(i,1)))+str2num(char(J_i17(i,1))))/str2num(char(J_i8(i,1))))^2));
    end
    L_i14 = cellstr(num2str(L_i14));

    %抗内压安全系数:L_i,15
    for i = 1:size(A_i1,1)
        L_i15(i,1) = str2num(char(L_i14(i,1)))/str2num(char(L_i13(i,1)));
     end
    L_i15 = cellstr(num2str(L_i15));
    
    %校核结果:L_i,16
    for i = 1:size(A_i1,1)
        if str2num(char(L_i15(i,1)))>str2num(char(F_i6(1,1)))
            L_i16(i,1) = {'满足要求'};
        else
            L_i16(i,1) = {'不满足要求'};
        end
    end
end

%结果报告中需要用到的数据----------------------------------------------------------------------------------------------	
    result12_1 = max(str2num(char(L_i5)));
    result12_2 = 0.9*min(str2num(char(L_i6)))-max(str2num(char(L_i5)));
    result12_3 = min(str2num(char(L_i7)));
    result12_4 = min(str2num(char(L_i11)));
    result12_5 = min(str2num(char(L_i15)));
    
    min_L_i7 = min(str2num(char(L_i7)));
    for i = 2:size(L_i7,1)  %从第2行开始，避免inf
        if abs(str2num(char(L_i7(i,1))) - min_L_i7) < 0.001
            result32_3 = L_i8(i,1);
            break
        end
    end
    min_L_i11 = min(str2num(char(L_i11)));
    for i = 1:size(L_i11,1)
        if abs(str2num(char(L_i11(i,1))) - min_L_i11) < 0.001
            result32_4 = L_i12(i,1);
            break
        end
    end
    min_L_i15 = min(str2num(char(L_i15)));
    for i = 1:size(L_i15,1)
        if abs(str2num(char(L_i15(i,1))) - min_L_i15) < 0.001
            result32_5 = L_i16(i,1);
            break
        end
    end
    

%二维定向井输出结果数据表-------------------------------------------------------------------------------------------------	
    result_Data_1_2 = [L_i1,L_i2,L_i3,L_i4,L_i5,L_i6,L_i7,L_i8,L_i9,L_i10,...
        L_i11,L_i12,L_i13,L_i14,L_i15,L_i16];   %拼接所有列
    set(handles.Result_Data_1_2,'Data',result_Data_1_2);   %填充表格
    pass_Data{31} = [J_i1,J_i2,J_i3,J_i4,J_i5,J_i6,J_i7,J_i8,J_i9,J_i10,J_i11,...
        J_i12,J_i13,J_i14,J_i15,J_i16,J_i17,J_i18,J_i19,J_i20,];
    pass_Data{32} = result_Data_1_2;
%生成图像----------------------------------------------------------------------------------------------------------------
	%第一幅图
    fig12_1 = figure(121);
    set(fig12_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig12_1,'menubar','none');
    set(fig12_1,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面处套管柱轴向力结果图');
    hold on;
    y_fig12_1 = str2num(char(L_i1(1:end)));
    x_fig12_1 = str2num(char(L_i5(1:end))); 
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
    x_fig12_2 = str2num(char(L_i1(1:end)));  %井深
    y1_fig12_2 = x_fig12_1; %有效轴向力
    y2_fig12_2 = str2num(char(L_i6(1:end)));    %三轴轴向力
    y3_fig12_2 = str2num(char(L_i9(1:end)));  %最大外挤压力
    y4_fig12_2 = str2num(char(L_i10(1:end)));  %三轴抗挤强度
    y5_fig12_2 = str2num(char(L_i13(1:end))); %最大内压力
    y6_fig12_2 = str2num(char(L_i14(1:end))); %三轴抗内压强度
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
    set(fig12_3,'units','normalized','position',[0.32 0.15 0.3 0.8]);
    set(fig12_3,'menubar','none');
    set(fig12_3,'NumberTitle', 'off', 'Name', '钻至井底时不同井深截面安全系数的对数坐标结果图');
%     hold on;
    y_fig12_3 = str2num(char(L_i1(1:end)));
    x1_fig12_3 = str2num(char(L_i7(1:end)));
    x2_fig12_3 = str2num(char(L_i11(1:end)));
    x3_fig12_3 = str2num(char(L_i15(1:end)));
%     set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %设置原点位置
%     set(gca, 'XtickLabel', {'1', '100', '10000', '1000000'});   %希望显示的刻度值
    semilogx(x1_fig12_3,y_fig12_3,x2_fig12_3,y_fig12_3,x3_fig12_3,y_fig12_3,'LineWidth',1.5)
    axis ij;     %设置原点位置位于左上角
    set(gca,'xaxislocation','top');
%     semilogx('-k','LineWidth',1.5)
%     semilogx(,'-r','LineWidth',1.5)
    grid on;
%     xlabel('钻至井底时不同井深截面处套管柱轴向力/kN','FontSize',10);
    ylabel('井深/m','FontSize',10);
    legend({'抗拉安全系数','抗挤安全系数','抗内压安全系数'},'Orientation','horizontal','Location','southoutside');

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
    
    str3 = ['最小抗拉安全系数：',num2str(min(x1_fig12_3)),'    ','井深：',num2str(jshen3)]
    str2 = ['最小抗挤安全系数：',num2str(min(x2_fig12_3)),'    ','井深：',num2str(jshen2)];
%     str1_1 =[]
    str1 = ['最小抗内压安全系数：',num2str(min(x3_fig12_3)),'    ','井深：',num2str(jshen1)]
    str = {'钻至井底时不同井深截面安全系数的对数坐标';'';str3;str2;str1;''};
    title(str,'FontSize',12);
    catch
        errordlg('请确认基础数据是否正确！','错误');
end
delete(hres1_2);
% %     text(0.8,0.2,str1)
% %     text(0.8,0.2,str1_1)
% %     text(0.8,0.2,str3)
% %     strings={'最小抗挤安全系数：',min(x2_fig_3),'井深：',111;...
% %         '最小抗内压安全系数：',min(x3_fig_3),'井深：',111;...
% %         '最小抗拉安全系数：',min(x1_fig_3),'井深：',111};
%     annotation('textbox',[0.3,0.3,0.4,0.2],'String','最小抗内压安全系数：')
%     hold off;
    

%导出报告
function P_RPBut_1_2_Callback(hObject, eventdata, handles)
global pass_Data fig12_1 fig12_2 fig12_3
global result12_1 result12_2 result12_3 result12_4 result12_5 result32_3 result32_4 result32_5
y_A_cell = pass_Data{1};
y_B_cell = pass_Data{2};
y_D_cell = pass_Data{3};
y_E_cell = pass_Data{4};
y_F_cell = pass_Data{5};
data_cell = pass_Data{32};    %计算结果
[m,n] = size(data_cell);
[a1,a2] = size(y_A_cell);
[b1,b2] = size(y_B_cell);
[d1,d2] = size(y_D_cell);
[e1,e2] = size(y_E_cell);
[f1,f2] = size(y_F_cell);
if(m~=0 && n~=0 && a1~=0 && a2~=0 && b1~=0 && b2~=0 && d1~=0 && d2~=0 && e1~=0 && e2~=0 && f1~=0 && f2~=0)
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
        Tables12_2 = Document.Tables.Add(Selection.Range,size(pass_Data{2},1)+1,6);    % ”data_cell+1“ 行 6列
        DTI12_2 = Tables12_2; % 或DTI = Tables;
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
        Tables12_3 = Document.Tables.Add(Selection.Range,size(pass_Data{3},1)+1,9);    % ”data_cell+1“ 行 9列
        DTI12_3 = Tables12_3; % 或DTI = Tables;
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
        %DTI1_3.Cell(1,:).Shading.Texture = wdTextureHorizontal;

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
        Tables12_4 = Document.Tables.Add(Selection.Range,size(pass_Data{4},1)+1,4);    % ”data_cell+1“ 行 4列
        DTI12_4 = Tables12_4; % 或DTI = Tables;
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
        %DTI1_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

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
        Tables12_5 = Document.Tables.Add(Selection.Range,size(pass_Data{5},1)+1,7);    % ”data_cell+1“ 行 7列
        DTI12_5 = Tables12_5; % 或DTI = Tables;
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
        %DTI1_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

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
        Tables12_6 = Document.Tables.Add(Selection.Range,4,6);    % 4 行 6列
        DTI12_6 = Tables12_6; % 或DTI = Tables;
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
        DTI12_6.Cell(2,2).Range.Text = num2str(result12_1);
        DTI12_6.Cell(2,3).Range.Text = num2str(result12_2);
        DTI12_6.Cell(2,4).Range.Text = num2str(result12_3);
        DTI12_6.Cell(2,5).Range.Text = num2str(result12_4);
        DTI12_6.Cell(2,6).Range.Text = num2str(result12_5);
        DTI12_6.Cell(3,2).Range.Text = '井口';
        DTI12_6.Cell(3,3).Range.Text = '井口';
        DTI12_6.Cell(3,4).Range.Text = '井口';
        DTI12_6.Cell(3,5).Range.Text = '井底';
        DTI12_6.Cell(3,6).Range.Text = '井口';
        DTI12_6.Cell(4,2).Range.Text = '—';
        DTI12_6.Cell(4,3).Range.Text = '—';
        DTI12_6.Cell(4,4).Range.Text = char(result32_3);
        DTI12_6.Cell(4,5).Range.Text = char(result32_4);
        DTI12_6.Cell(4,6).Range.Text = char(result32_5);

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
        Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
        Document.Save; % 保存文档
%             Document.Close; % 关闭文档
%             Word.Quit; % 退出word服务器
    end
end
