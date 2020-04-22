function varargout = Result_1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_1_OutputFcn, ...
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


% --- Executes just before Result_1 is made visible.
function Result_1_OpeningFcn(hObject, eventdata, handles, varargin)
movegui(hObject,'center');
%修改左上角图标
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标  
set(hObject,'numbertitle','off','name','直井套管柱轴向载荷计算');

global pass_Data c_Array
% if size(pass_Data,2)==5
%     pass_Data = varargin{1};
% else
%     set(handles.result1_uitable1,'Data',pass_Data{7}) 
% end
c_Array=load('taoguanDB.mat')

%判断之前是否计算过pass_Data--------------------------------------------------
try
table_K = pass_Data{7};
% if size(table_K) ~= 0 && size(table_K,2) == 15
    set(handles.result1_uitable1,'Data',table_K)
% end
newK_i2 = table_K(:,2);
newK_i4 = table_K(:,4);
newK_i5 = table_K(:,5);
newK_i6 = table_K(:,6);
newK_i8 = table_K(:,8);
newK_i9 = table_K(:,9);
newK_i10 = table_K(:,10);
newK_i12 = table_K(:,12);
newK_i13 = table_K(:,13);
newK_i14 = table_K(:,14);
    %生成图像
%     delete(fig1_1);
%     delete(fig1_2);
%     delete(fig1_3);
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
%         hold on;
    y_fig_3 = str2num(char(newK_i2(1:end)));
    x1_fig_3 = str2num(char(newK_i6(1:end)));
    x2_fig_3 = str2num(char(newK_i10(1:end)));
    x3_fig_3 = str2num(char(newK_i14(1:end)));      
    semilogx(x1_fig_3,y_fig_3,x2_fig_3,y_fig_3,x3_fig_3,y_fig_3,'LineWidth',1.5)
    axis ij;     %设置原点位置位于左上角
    set(gca,'xaxislocation','top');
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

    str3 = ['最小抗拉安全系数：',num2str(min(x1_fig_3)),'    ','井深：',num2str(jshen3)];
    str2 = ['最小抗挤安全系数：',num2str(min(x2_fig_3)),'    ','井深：',num2str(jshen2)];
    str1 = ['最小抗内压安全系数：',num2str(min(x3_fig_3)),'    ','井深：',num2str(jshen1)];
    str = {'钻至井底时不同井深截面安全系数的对数坐标';'';str3;str2;str1;''};
    title(str,'FontSize',12);
    grid on;
catch
end
%------------------------------------------------------------------------------------------%

handles.output = hObject;
guidata(hObject, handles);
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Result_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in result1_pushbutton1.
function result1_pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to result1_pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear logic_judge K_1 newK_1 two_newK_1
global c_Array pass_Data result1_1 result1_2 result1_3 result1_4...
    result1_5 result3_3 result3_4 result3_5 fig1_1 fig1_2 fig1_3
h1_1=msgbox('请稍后，计算中……','提示');
try
    tgDB = c_Array.taoguanDB;
    %处理“   —”数据变为“0”
    for i = 1:size(tgDB,1)
        if isempty(str2num(char(tgDB(i,2)))) ~= 0
            tgDB{i,2} = '0';
        end
        if isempty(str2num(char(tgDB(i,3)))) ~= 0
            tgDB{i,3} = '0';
        end
        if isempty(str2num(char(tgDB(i,4)))) ~= 0
            tgDB{i,4} = '0';
        end
        if isempty(str2num(char(tgDB(i,6)))) ~= 0
            tgDB{i,6} = '0';
        end
        if isempty(str2num(char(tgDB(i,7)))) ~= 0
            tgDB{i,7} = '0';
        end
        if isempty(str2num(char(tgDB(i,8)))) ~= 0
            tgDB{i,8} = '0';
        end
        if isempty(str2num(char(tgDB(i,9)))) ~= 0
            tgDB{i,9} = '0';
        end
        if isempty(str2num(char(tgDB(i,10)))) ~= 0
            tgDB{i,10} = '0';
        end
        if isempty(str2num(char(tgDB(i,11)))) ~= 0
            tgDB{i,11} = '0';
        end
        if isempty(str2num(char(tgDB(i,12)))) ~= 0
            tgDB{i,12} = '0';
        end
        if isempty(str2num(char(tgDB(i,13)))) ~= 0
            tgDB{i,13} = '0';
        end
        if isempty(str2num(char(tgDB(i,14)))) ~= 0
            tgDB{i,14} = '0';
        end
        if isempty(str2num(char(tgDB(i,15)))) ~= 0
            tgDB{i,15} = '0';
        end
        if isempty(str2num(char(tgDB(i,16)))) ~= 0
            tgDB{i,16} = '0';
        end
        if isempty(str2num(char(tgDB(i,17)))) ~= 0
            tgDB{i,17} = '0';
        end
        if isempty(str2num(char(tgDB(i,18)))) ~= 0
            tgDB{i,18} = '0';
        end
        if isempty(str2num(char(tgDB(i,19)))) ~= 0
            tgDB{i,19} = '0';
        end
        if isempty(str2num(char(tgDB(i,20)))) ~= 0
            tgDB{i,20} = '0';
        end
        if isempty(str2num(char(tgDB(i,21)))) ~= 0
            tgDB{i,21} = '0';
        end
        if isempty(str2num(char(tgDB(i,22)))) ~= 0
            tgDB{i,22} = '0';
        end
        if isempty(str2num(char(tgDB(i,23)))) ~= 0
            tgDB{i,23} = '0';
        end
        if isempty(str2num(char(tgDB(i,24)))) ~= 0
            tgDB{i,24} = '0';
        end
        if isempty(str2num(char(tgDB(i,25)))) ~= 0
            tgDB{i,25} = '0';
        end
        if isempty(str2num(char(tgDB(i,26)))) ~= 0
            tgDB{i,26} = '0';
        end
        if isempty(str2num(char(tgDB(i,27)))) ~= 0
            tgDB{i,27} = '0';
        end
        if isempty(str2num(char(tgDB(i,28)))) ~= 0
            tgDB{i,28} = '0';
        end
        if isempty(str2num(char(tgDB(i,30)))) ~= 0
            tgDB{i,30} = '0';
        end
        if isempty(str2num(char(tgDB(i,31)))) ~= 0
            tgDB{i,31} = '0';
        end
        if isempty(str2num(char(tgDB(i,32)))) ~= 0
            tgDB{i,32} = '0';
        end
        if isempty(str2num(char(tgDB(i,33)))) ~= 0
            tgDB{i,33} = '0';
        end
        if isempty(str2num(char(tgDB(i,34)))) ~= 0
            tgDB{i,34} = '0';
        end
        if isempty(str2num(char(tgDB(i,35)))) ~= 0
            tgDB{i,35} = '0';
        end
        if isempty(str2num(char(tgDB(i,36)))) ~= 0
            tgDB{i,36} = '0';
        end
        if isempty(str2num(char(tgDB(i,37)))) ~= 0
            tgDB{i,37} = '0';
        end
        if isempty(str2num(char(tgDB(i,38)))) ~= 0
            tgDB{i,38} = '0';
        end
        if isempty(str2num(char(tgDB(i,39)))) ~= 0
            tgDB{i,39} = '0';
        end
    end
    logic_judge=0;
    %判断井眼轨道是直井
    if size(pass_Data{1},1) ~= 2
        msgbox('井眼轨道数据为直井！', '错误','error');
        logic_judge=1;
    end

    %取深度
    table_D = pass_Data{3};
    K_i1 = table_D(:,3);

    %浮力系数(取E和F的密度)
    E_i1 = pass_Data{4};
    E_i1 = E_i1(:,1);
    F_i = pass_Data{5};
    F_i1 = F_i(:,1);

    %套管钻深地层压力梯度
    F_i3 = F_i(:,3);

    %许用抗拉安全系数
    F_i4 = F_i(:,4);

    %许用抗外挤安全系数
    F_i5 = F_i(:,5);

    %许用抗内压安全系数
    F_i6 = F_i(:,6);

    %%D_n4:外径，D_n7钢级，D_n6:线重，D_n5：内径
    D_n4 = table_D(:,4)
    D_n5 = table_D(:,5);
    D_n6 = table_D(:,6);
    D_n7 = table_D(:,7);

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

    for i=1:size(D_n4)   %检查外径数据是否为空
        if D_n4(i) == ""
            msgbox('请检查作业管柱外径', '错误','error');
            logic_judge=1;
            break
        end
    end

    for i=1:size(D_n5)   %检查内径数据是否为空
        if D_n5(i) == ""
            msgbox('请检查作业管柱内径', '错误','error');
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

    for i=1:size(D_n7)   %检查钢级数据是否为空
        if D_n7(i) == ""
            msgbox('请检查作业管柱钢级', '错误','error');
            logic_judge=1;
            break
        end
    end

    if(logic_judge==0)  %数据均正确
        %浮力系数
        I_i1 = 1-(str2num(char(E_i1(:,1))) ./ str2num(char(F_i1(:,1)))); %浮力系数计算
        I_i1 = cellstr(num2str(I_i1,'%.2f'));    %转化成cell数组{字符串}
    %     newK_3 = sprintf('%.2f',newK_3) %保留小数后两位
        newI_i1 = I_i1;
        for j=1:size(K_i1)   %将K3扩充与K1，K2相同行数+1,即n+1行
            newI_i1 = [newI_i1;I_i1];
        end
    %     newI_i1 = ['0';newI_i1];

        %套管外半径
        I_i2 = str2num(char(D_n4(:,1))) ./2;
        I_i2 = cellstr(num2str(I_i2,'%.2f'));    %转化成cell数组{字符串}
        row1_I_i2 = I_i2(1,1);
        newI_i2 = strjust([row1_I_i2;I_i2],'left');

        %套管内半径
        I_i3 = str2num(char(D_n5(:,1)))./2;
        I_i3 = cellstr(num2str(I_i3,'%.2f'));    %转化成cell数组{字符串}
        row1_I_i3 = I_i3(1,1);
        newI_i3 = strjust([row1_I_i3;I_i3],'left');

        %接头螺纹抗拉强度,接头螺纹抗内压强度,套管抗挤强度,管材屈服强度
        newI_i4 = {};
        newI_i5 = {};
        newI_i6 = {};
        newI_i7 = {};
        for j = 1:size(D_n4,1)
            for i=1:size(tgDB,1)  %遍历C表的行数，确定I_i4~I_i7
                %外径
                D4 = tgDB(i,2);
                DDD4 = num2str(D4{1});
                DDD4 = str2num(DDD4);
                %钢级
                D7 = tgDB(i,5);
                DD7 = cellstr(D7{1});
                DDD7 = num2str(DD7{1});
                %线重
                D6 = str2num(char(tgDB(i,4)));
                DDD6 = num2str(D6,'%.2f');
                DDD6 = str2num(DDD6);
                %内径
                D5 = str2num(char(tgDB(i,7)));
                DDD5 = num2str(D5,'%.2f');
                DDD5 = str2num(DDD5);

                %C表：第2列外径，第5列内径，第4列线重，第7列钢级
                %D_n4:外径，D_n7钢级，D_n6:线重，D_n5：内径
                if(((abs(DDD4-str2num(cell2mat(D_n4(j,1)))))<=0.001) & strcmp(DDD7,cell2mat(D_n7(j,1))) ...
                    & ((abs(DDD6-str2num(cell2mat(D_n6(j,1)))))<=0.001) & (abs(  DDD5-str2num(cell2mat(D_n5(j,1))))   )<=0.001)
                    I_i4 = tgDB(i,26);  %接头螺纹抗拉强度
                    newI_i4{end+1,1} = num2str(char(I_i4));
                    I_i5 = tgDB(i,20);  %接头螺纹抗内压强度
                    newI_i5{end+1,1} = num2str(char(I_i5));
                    I_i6 = tgDB(i,8);   %套管抗挤强度
                    newI_i6{end+1,1} = num2str(char(I_i6));
                    I_i7 = tgDB(i,10);  %管材屈服强度
                    newI_i7{end+1,1} = num2str(char(I_i7));
                    break
                end
            end
        end
        row1_I_i4 = newI_i4(1,1);
        row1_I_i5 = newI_i5(1,1);
        row1_I_i6 = newI_i6(1,1);
        row1_I_i7 = newI_i7(1,1);
        newI_i4 = [row1_I_i4;newI_i4];
        newI_i5 = [row1_I_i5;newI_i5];
        newI_i6 = [row1_I_i6;newI_i6];
        newI_i7 = [row1_I_i7;newI_i7];

        %处理“   —”数据变为“0”
        for i = 1:size(newI_i4,1)
            if isempty(str2num(char(newI_i4(i,1)))) ~= 0
                newI_i4{i,1} = '0';
            end
        end

        %测深，垂深
        newK_i1 = ['0';K_i1];
        newK_i2 = ['0';K_i1];   

        %截面处内压力  0.00981*E_11*K_i2     K_i2：垂深
        I_i8 = 0.00981 .* str2num(char(E_i1)) .* str2num(char(newK_i2));
        newI_i8 = cellstr(strjust(num2str(I_i8),'left'));

        %截面处外压力  0.00981*E_11*K_i2 等于内压力
        I_i9 = I_i8;
        newI_i9 = cellstr(strjust(num2str(I_i9),'left'));

        %管柱有效线重
        K_i3 = str2num(cell2mat(I_i1)).*str2num(char(D_n6)); %线重计算
        K_i3 = cellstr(num2str(K_i3,'%.2f'));    %转化成cell数组{字符串}
        row1_K_i3 = K_i3(1,1);
        newK_i3 = [row1_K_i3;K_i3];

        %有向轴向力  K_i+1,4  +  K_i+1,3  *  [K_i+1,1  -  K_i,1]  *  0.001
        K_i4 = 0;
        newK_i4 = [];
        for i=size(K_i3):-1:1 %倒序递归,运算次数：size(K_i3)
            K_i4 =K_i4 + str2num(cell2mat(newK_i3(i+1,1))) .* (str2num(cell2mat(newK_i1(i+1,1)))-str2num(cell2mat(newK_i1(i,1)))).*0.001;
            DB_K_i4 = cellstr(num2str(K_i4,'%.2f'));    %转化成cell数组{字符串}
            newK_i4 = [DB_K_i4;newK_i4];
        end
        newK_i4 = [newK_i4;'0'];
        result1_1 = max(K_i4);   %结果报告中的数据

        %套管轴向应力   1000*K_i4/[PI*(I_i2^2-I_i3^2)]
        I_i10 = 1000 .* str2num(char(newK_i4)) ./ ( pi .* (str2num(char(newI_i2)).^2 - str2num(char(newI_i3)).^2   ) );
        newI_i10 = cellstr(strjust(num2str(I_i10),'left'));

        %套管下深处最大内压力   F_13*K_i2
        I_i11 = str2num(char(F_i3)) .* str2num(char(newK_i2));
        newI_i11 = cellstr(strjust(num2str(I_i11),'left'));

        %三轴轴向力  PI*0.001*(  I_i8*I_i3^2-I_i9*I_i2^2  )+SQRT[I_i4^2+3*10^(-6)*PI^2*(I_i8-I_i9)^2*I_i2^4]
        K_i5_I_i2 = str2num(char(newI_i2));
        K_i5 = pi .* 0.001 .* (  I_i8 .* (str2num(char(newI_i3)).^2) ...
            - I_i9 .* ((K_i5_I_i2).^2)  ) + sqrt(  (str2num(char(newI_i4)).^2) ... 
            + 3.*(10.^(-6)).*pi.*pi .* ((I_i8 - I_i9).^2) .* ((K_i5_I_i2).^4)  );
        newK_i5 = cellstr(strjust(num2str(K_i5),'left'));
        result1_2 = 0.9 * min(K_i5)-max(K_i4);  %结果报告中的数据

        %抗拉安全系数  0.9*K_i5/K_i4
        rowEnd_newK_i4 = str2num(char(newK_i4(end,1))) + 0.001;  %分子K_n+1,4为零，取其近似数进行计算，即K_n+1,4=K_n+1,4+0.001
        deno_K_i6 = newK_i4;
        deno_K_i6{end} = num2str(rowEnd_newK_i4);    %分母
    %     mole_K_i6 = K_i5;   %分子
        newK_i6 = cellstr(strjust(num2str(   0.9.*K_i5./str2num(char(deno_K_i6))    ),'left')); %K_i6 = K_i5/K_i4   strjust:字符串居左
        result1_3 = min(0.9.*K_i5./str2num(char(deno_K_i6)));  %结果报告中的数据

        %校核结果
        newK_i7 = {};
        for i = 1:size(newK_i6,1)
            if str2num(cell2mat(newK_i6(i,1))) > str2num(cell2mat(F_i4))
                newK_i7{end+1,1} = '满足要求';
            else
                newK_i7{end+1,1} = '不满足要求';
            end
        end
        %结果报告中的数据，获取校核结果
        y_k6 = 0.9.*K_i5./str2num(char(deno_K_i6))
        for i = 1:size(newK_i6,1)
            if abs(y_k6(i,1)-result1_3) < 0.0001
                result3_3 = newK_i7{i,1};
            end
        end


        %最大外挤压力   K_i8 = 0.00981*E_11*K_i2  等于截面处内压力
        newK_i8 = newI_i8;

        %三轴抗挤强度  I_i6*{  SQRT[1-0.75*((I_i,10+I_i8)/I_i7)^2]  -  0.5*[(I_i,10+I_i8)/I_i7]  }
        K_i9 = str2num(char(newI_i6)) .* (   sqrt(   1-0.75.*(...
            ((  str2num(char(newI_i10)) + str2num(char(newI_i8))  )./str2num(char(newI_i7))).^2)) ...
             - 0.5 .* ((I_i10+I_i8)./ str2num(char(newI_i7)) )      )
        newK_i9 = cellstr(strjust(num2str(K_i9),'left'));

        %抗挤安全系数  K_i9/K_i8
        deno_K_i10 = newK_i8;
        deno_K_i10{1,1} = num2str(str2num(char(newK_i8(1,1))) + 0.001);   %第一行+0.001
        K_i10 = K_i9./ str2num(char(deno_K_i10));
        newK_i10 = cellstr(num2str(K_i10));
        result1_4 = min(K_i10);%结果报告中的数据

        %校核结果
        newK_i11={};
        for i = 1:size(newK_i10,1)
            if K_i10(i,1) > str2num(char(F_i5))
                newK_i11{end+1,1} = '满足要求';
            else
                newK_i11{end+1,1} = '不满足要求';
            end
        end
        %结果报告中的数据，获取校核结果
        y_k10 = str2num(char(newK_i10));
        for i = 1:size(y_k10,1)
            if abs(y_k10(i,1)-result1_4)<0.0001
                result3_4 = newK_i11{i,1};
            end
        end

        %任一井深处最大内压力   MAX(I_i,11)/EXP{1.1155*0.0001*0.55*[MAX(K_i,2)-K_i2]}-K_i8
        MAX_K_i2 = max(  str2num(char(newK_i2))  ) - str2num(char(newK_i2))
        K_i12 = max(I_i11) ./ exp(1.1155*0.0001*0.55 .* MAX_K_i2 ) - str2num(char(newK_i8));
        newK_i12 = cellstr(strjust(num2str(K_i12),'left'));

        %三轴抗内压强度    I_i5*{ I_i3^2/SQRT(3*I_i2^4+I_i3^4) * ( (I_i,10+I_i9)/I_i7 )  +  SQRT[  1-3*I_i2^4/(3*I_i2^4+I_i3^4)*((I_i,10+I_i9)/I_i7)^2  ] }
        K_i13 = str2num(char(newI_i5)).*(   str2num(char(newI_i3)).^2 ./...
            sqrt(3.*str2num(char(newI_i2)).^4 + str2num(char(newI_i3)).^4) .*...
            ((I_i10+I_i9) ./ str2num(char(newI_i7))) + ...
            sqrt(  1-3.*(str2num(char(newI_i2)).^4)./...
            (3.*str2num(char(newI_i2)).^4 + str2num(char(newI_i3)).^4) .*...
            ((I_i10+I_i9)./str2num(char(newI_i7)) ).^2  )   );
        newK_i13 = cellstr(num2str(K_i13));

        %抗内压安全系数   K_i,13/K_i,12
        newK_i14 = cellstr(strjust(num2str(K_i13./K_i12),'left'));
        result1_5 = min(K_i13./K_i12);%结果报告中的数据

        %校核结果
        newK_i15 = {};
        for i = 1:size(newK_i10,1)
            if str2num(char(newK_i14(i,1))) > str2num(char(F_i6))
                newK_i15{end+1,1} = '满足要求';
            else
                newK_i15{end+1,1} = '不满足要求';
            end
        end

        %结果报告中的数据，获取校核结果
        y_k14 = str2num(char(newK_i14));
        for i = 1:size(newK_i14,1)
            if abs(y_k14(i,1)-result1_5)<0.0001
                result3_5 = newK_i15{i,1};
            end
        end

        result_Data = [newK_i1,newK_i2,newK_i3,newK_i4,newK_i5,newK_i6,newK_i7,newK_i8,newK_i9,newK_i10,...
            newK_i11,newK_i12,newK_i13,newK_i14,newK_i15];   %拼接所有列
        set(handles.result1_uitable1,'Data',result_Data);   %填充表格

        %返回I值到main.m
        return_I2main = [newI_i1,newI_i2,newI_i3,newI_i4,newI_i5,newI_i6,newI_i7,newI_i8,newI_i9,newI_i10,newI_i11];
        pass_Data{6} = return_I2main;
        pass_Data{7} = result_Data;
        handles.output = pass_Data;% 将数据发送到 handles.output 中。

    %------------------------------------------------------------------------------------------%
        %生成图像
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
        y2_fig_2 = K_i5;    %三轴轴向力
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
%         hold on;
        y_fig_3 = str2num(char(newK_i2(1:end)));
        x1_fig_3 = str2num(char(newK_i6(1:end)));
        x2_fig_3 = str2num(char(newK_i10(1:end)));
        x3_fig_3 = str2num(char(newK_i14(1:end)));      
        semilogx(x1_fig_3,y_fig_3,x2_fig_3,y_fig_3,x3_fig_3,y_fig_3,'LineWidth',1.5)
        axis ij;     %设置原点位置位于左上角
        set(gca,'xaxislocation','top');
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
        
        str3 = ['最小抗拉安全系数：',num2str(min(x1_fig_3)),'    ','井深：',num2str(jshen3)];
        str2 = ['最小抗挤安全系数：',num2str(min(x2_fig_3)),'    ','井深：',num2str(jshen2)];
        str1 = ['最小抗内压安全系数：',num2str(min(x3_fig_3)),'    ','井深：',num2str(jshen1)];
        str = {'钻至井底时不同井深截面安全系数的对数坐标';'';str3;str2;str1;''};
        title(str,'FontSize',12);
        grid on;
    end
    delete(h1_1);
catch
    delete(h1_1);
    msgbox('请检查数据是否正确！', '错误','error');
end
%当遇到 uiresume 时程序继续运行，执行 OutputFcn ，将修改之后的值通过 handles.output 输出
guidata(hObject, handles);  % 当 handles 结构体中的数据发生改变时，必须使用 guidata 更新 handles 结构体
uiresume(handles.figure1)   %继续执行被uiwait中断的程序

% --- Executes on button press in result1_pushbutton2.
function result1_pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to result1_pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear data_cell filter m  n hangshu lieshu hang  lie Filename Pathname str CloumnName dataExcel;
%pass_Data：{1}A矩阵；{2}B矩阵；{3}D矩阵；{4}E矩阵；{5}F矩阵
global pass_Data result1_1 result1_2 result1_3 result1_4...
    result1_5 result3_3 result3_4 result3_5 fig1_1 fig1_2 fig1_3
y_A_cell = pass_Data{1};
y_B_cell = pass_Data{2};
y_D_cell = pass_Data{3};
y_E_cell = pass_Data{4};
y_F_cell = pass_Data{5};
data_cell = get(handles.result1_uitable1,'Data');    %计算结果
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
            Tables = Document.Tables.Add(Selection.Range,size(data_cell,1)+1,6);    % ”data_cell+1“ 行 6列
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
            Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % 设置视图方式为页面
            Document.Save; % 保存文档
%             Document.Close; % 关闭文档
%             Word.Quit; % 退出word服务器
    end
end
