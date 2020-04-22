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
%�޸����Ͻ�ͼ��
newIcon=javax.swing.ImageIcon('icon1.png');
figFrame = get(hObject,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��  
set(hObject,'numbertitle','off','name','ֱ���׹��������غɼ���');

global pass_Data c_Array
% if size(pass_Data,2)==5
%     pass_Data = varargin{1};
% else
%     set(handles.result1_uitable1,'Data',pass_Data{7}) 
% end
c_Array=load('taoguanDB.mat')

%�ж�֮ǰ�Ƿ�����pass_Data--------------------------------------------------
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
    %����ͼ��
%     delete(fig1_1);
%     delete(fig1_2);
%     delete(fig1_3);
    %��һ��ͼ
    fig1_1 = figure(11);
    set(fig1_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
    set(fig1_1,'menubar','none');
    set(fig1_1,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹������������ͼ');
    hold on;
    y_fig_1 = str2num(char(newK_i2));
    x_fig_1 = str2num(char(newK_i4)); 
    set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
    plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
    xlabel('��������ʱ��ͬ������洦�׹���������/kN','FontSize',10);
    ylabel('����/m','FontSize',10);
    grid on;
    hold off;
    %�ڶ���ͼ
    fig1_2 = figure(12);
    set(fig1_2,'units','normalized','position',[0.12 0.3 0.7 0.55]);
    set(fig1_2,'menubar','none');
    set(fig1_2,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦������ֵ���ͼ');
    hold on;
    x_fig_2 = y_fig_1;  %����
    y1_fig_2 = x_fig_1; %��Ч������
    y2_fig_2 = str2num(char(newK_i5));    %����������
    y3_fig_2 = str2num(char(newK_i8));  %����⼷ѹ��
    y4_fig_2 = str2num(char(newK_i9));  %���Ό��ǿ��
    y5_fig_2 = str2num(char(newK_i12)); %�����ѹ��
    y6_fig_2 = str2num(char(newK_i13)); %���Ό��ѹǿ��
    yyaxis left;    %yyaxis left ���ǰ������������� y �������һ�ࡣ����ͼ�������Ŀ��Ϊ��ࡣ
    plot(x_fig_2,y1_fig_2,'-r','LineWidth',1.5)
    plot(x_fig_2,y2_fig_2,'-g','LineWidth',1.5)
    xlabel('����/m','FontSize',10);
    ylabel('������/kN','FontSize',10);
    yyaxis right;
    plot(x_fig_2,y3_fig_2,'-b','LineWidth',1.5)
    plot(x_fig_2,y4_fig_2,'-k','LineWidth',1.5)
    plot(x_fig_2,y5_fig_2,'-m','LineWidth',1.5)
    plot(x_fig_2,y6_fig_2,'-y','LineWidth',1.5)
    ylabel('ѹ��ǿ��/MPa','FontSize',10);
    legend2 = legend({'��Ч������','����������','����⼷ѹ��','���Ό��ǿ��','���⾮������ѹ��','���Ό��ѹǿ��'},'Orientation','horizontal','Location','northoutside')
    title(legend2,'��������ʱ��ͬ������洦������ֵ','FontSize',14);      %ͼ���Ϸ������ַ������⣨string��
    grid on
    hold off;
    %������ͼ
    fig1_3 = figure(13);
    set(fig1_3,'units','normalized','position',[0.32 0.15 0.35 0.8]);
    set(fig1_3,'menubar','none');
    set(fig1_3,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������氲ȫϵ���Ķ���������ͼ');
%         hold on;
    y_fig_3 = str2num(char(newK_i2(1:end)));
    x1_fig_3 = str2num(char(newK_i6(1:end)));
    x2_fig_3 = str2num(char(newK_i10(1:end)));
    x3_fig_3 = str2num(char(newK_i14(1:end)));      
    semilogx(x1_fig_3,y_fig_3,x2_fig_3,y_fig_3,x3_fig_3,y_fig_3,'LineWidth',1.5)
    axis ij;     %����ԭ��λ��λ�����Ͻ�
    set(gca,'xaxislocation','top');
%     xlabel('��������ʱ��ͬ������洦�׹���������/kN','FontSize',10);
    ylabel('����/m','FontSize',10);
    legend({'������ȫϵ��','������ȫϵ��','����ѹ��ȫϵ��'},'Orientation','horizontal','Location','southoutside')

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

    str3 = ['��С������ȫϵ����',num2str(min(x1_fig_3)),'    ','���',num2str(jshen3)];
    str2 = ['��С������ȫϵ����',num2str(min(x2_fig_3)),'    ','���',num2str(jshen2)];
    str1 = ['��С����ѹ��ȫϵ����',num2str(min(x3_fig_3)),'    ','���',num2str(jshen1)];
    str = {'��������ʱ��ͬ������氲ȫϵ���Ķ�������';'';str3;str2;str1;''};
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
h1_1=msgbox('���Ժ󣬼����С���','��ʾ');
try
    tgDB = c_Array.taoguanDB;
    %����   �������ݱ�Ϊ��0��
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
    %�жϾ��۹����ֱ��
    if size(pass_Data{1},1) ~= 2
        msgbox('���۹������Ϊֱ����', '����','error');
        logic_judge=1;
    end

    %ȡ���
    table_D = pass_Data{3};
    K_i1 = table_D(:,3);

    %����ϵ��(ȡE��F���ܶ�)
    E_i1 = pass_Data{4};
    E_i1 = E_i1(:,1);
    F_i = pass_Data{5};
    F_i1 = F_i(:,1);

    %�׹�����ز�ѹ���ݶ�
    F_i3 = F_i(:,3);

    %���ÿ�����ȫϵ��
    F_i4 = F_i(:,4);

    %���ÿ��⼷��ȫϵ��
    F_i5 = F_i(:,5);

    %���ÿ���ѹ��ȫϵ��
    F_i6 = F_i(:,6);

    %%D_n4:�⾶��D_n7�ּ���D_n6:���أ�D_n5���ھ�
    D_n4 = table_D(:,4)
    D_n5 = table_D(:,5);
    D_n6 = table_D(:,6);
    D_n7 = table_D(:,7);

    for i=1:size(K_i1)   %��������������Ƿ�Ϊ��
        if K_i1(i) == ""
            msgbox('������ҵ�������', '����','error');
            logic_judge=1;
            break
        end
    end

    for i=1:size(E_i1)   %����꾮Һ����ػ��������Ƿ�Ϊ��
        if (E_i1(i) == "" || F_i1(i) =="")
            msgbox('�����꾮Һ���ܼ���ػ�������', '����','error');
            logic_judge=1;
            break
        end
    end

    for i=1:size(D_n4)   %����⾶�����Ƿ�Ϊ��
        if D_n4(i) == ""
            msgbox('������ҵ�����⾶', '����','error');
            logic_judge=1;
            break
        end
    end

    for i=1:size(D_n5)   %����ھ������Ƿ�Ϊ��
        if D_n5(i) == ""
            msgbox('������ҵ�����ھ�', '����','error');
            logic_judge=1;
            break
        end
    end

    for i=1:size(D_n6)   %������������Ƿ�Ϊ��
        if D_n6(i) == ""
            msgbox('������ҵ��������', '����','error');
            logic_judge=1;
            break
        end
    end

    for i=1:size(D_n7)   %���ּ������Ƿ�Ϊ��
        if D_n7(i) == ""
            msgbox('������ҵ�����ּ�', '����','error');
            logic_judge=1;
            break
        end
    end

    if(logic_judge==0)  %���ݾ���ȷ
        %����ϵ��
        I_i1 = 1-(str2num(char(E_i1(:,1))) ./ str2num(char(F_i1(:,1)))); %����ϵ������
        I_i1 = cellstr(num2str(I_i1,'%.2f'));    %ת����cell����{�ַ���}
    %     newK_3 = sprintf('%.2f',newK_3) %����С������λ
        newI_i1 = I_i1;
        for j=1:size(K_i1)   %��K3������K1��K2��ͬ����+1,��n+1��
            newI_i1 = [newI_i1;I_i1];
        end
    %     newI_i1 = ['0';newI_i1];

        %�׹���뾶
        I_i2 = str2num(char(D_n4(:,1))) ./2;
        I_i2 = cellstr(num2str(I_i2,'%.2f'));    %ת����cell����{�ַ���}
        row1_I_i2 = I_i2(1,1);
        newI_i2 = strjust([row1_I_i2;I_i2],'left');

        %�׹��ڰ뾶
        I_i3 = str2num(char(D_n5(:,1)))./2;
        I_i3 = cellstr(num2str(I_i3,'%.2f'));    %ת����cell����{�ַ���}
        row1_I_i3 = I_i3(1,1);
        newI_i3 = strjust([row1_I_i3;I_i3],'left');

        %��ͷ���ƿ���ǿ��,��ͷ���ƿ���ѹǿ��,�׹ܿ���ǿ��,�ܲ�����ǿ��
        newI_i4 = {};
        newI_i5 = {};
        newI_i6 = {};
        newI_i7 = {};
        for j = 1:size(D_n4,1)
            for i=1:size(tgDB,1)  %����C���������ȷ��I_i4~I_i7
                %�⾶
                D4 = tgDB(i,2);
                DDD4 = num2str(D4{1});
                DDD4 = str2num(DDD4);
                %�ּ�
                D7 = tgDB(i,5);
                DD7 = cellstr(D7{1});
                DDD7 = num2str(DD7{1});
                %����
                D6 = str2num(char(tgDB(i,4)));
                DDD6 = num2str(D6,'%.2f');
                DDD6 = str2num(DDD6);
                %�ھ�
                D5 = str2num(char(tgDB(i,7)));
                DDD5 = num2str(D5,'%.2f');
                DDD5 = str2num(DDD5);

                %C����2���⾶����5���ھ�����4�����أ���7�иּ�
                %D_n4:�⾶��D_n7�ּ���D_n6:���أ�D_n5���ھ�
                if(((abs(DDD4-str2num(cell2mat(D_n4(j,1)))))<=0.001) & strcmp(DDD7,cell2mat(D_n7(j,1))) ...
                    & ((abs(DDD6-str2num(cell2mat(D_n6(j,1)))))<=0.001) & (abs(  DDD5-str2num(cell2mat(D_n5(j,1))))   )<=0.001)
                    I_i4 = tgDB(i,26);  %��ͷ���ƿ���ǿ��
                    newI_i4{end+1,1} = num2str(char(I_i4));
                    I_i5 = tgDB(i,20);  %��ͷ���ƿ���ѹǿ��
                    newI_i5{end+1,1} = num2str(char(I_i5));
                    I_i6 = tgDB(i,8);   %�׹ܿ���ǿ��
                    newI_i6{end+1,1} = num2str(char(I_i6));
                    I_i7 = tgDB(i,10);  %�ܲ�����ǿ��
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

        %����   �������ݱ�Ϊ��0��
        for i = 1:size(newI_i4,1)
            if isempty(str2num(char(newI_i4(i,1)))) ~= 0
                newI_i4{i,1} = '0';
            end
        end

        %�������
        newK_i1 = ['0';K_i1];
        newK_i2 = ['0';K_i1];   

        %���洦��ѹ��  0.00981*E_11*K_i2     K_i2������
        I_i8 = 0.00981 .* str2num(char(E_i1)) .* str2num(char(newK_i2));
        newI_i8 = cellstr(strjust(num2str(I_i8),'left'));

        %���洦��ѹ��  0.00981*E_11*K_i2 ������ѹ��
        I_i9 = I_i8;
        newI_i9 = cellstr(strjust(num2str(I_i9),'left'));

        %������Ч����
        K_i3 = str2num(cell2mat(I_i1)).*str2num(char(D_n6)); %���ؼ���
        K_i3 = cellstr(num2str(K_i3,'%.2f'));    %ת����cell����{�ַ���}
        row1_K_i3 = K_i3(1,1);
        newK_i3 = [row1_K_i3;K_i3];

        %����������  K_i+1,4  +  K_i+1,3  *  [K_i+1,1  -  K_i,1]  *  0.001
        K_i4 = 0;
        newK_i4 = [];
        for i=size(K_i3):-1:1 %����ݹ�,���������size(K_i3)
            K_i4 =K_i4 + str2num(cell2mat(newK_i3(i+1,1))) .* (str2num(cell2mat(newK_i1(i+1,1)))-str2num(cell2mat(newK_i1(i,1)))).*0.001;
            DB_K_i4 = cellstr(num2str(K_i4,'%.2f'));    %ת����cell����{�ַ���}
            newK_i4 = [DB_K_i4;newK_i4];
        end
        newK_i4 = [newK_i4;'0'];
        result1_1 = max(K_i4);   %��������е�����

        %�׹�����Ӧ��   1000*K_i4/[PI*(I_i2^2-I_i3^2)]
        I_i10 = 1000 .* str2num(char(newK_i4)) ./ ( pi .* (str2num(char(newI_i2)).^2 - str2num(char(newI_i3)).^2   ) );
        newI_i10 = cellstr(strjust(num2str(I_i10),'left'));

        %�׹���������ѹ��   F_13*K_i2
        I_i11 = str2num(char(F_i3)) .* str2num(char(newK_i2));
        newI_i11 = cellstr(strjust(num2str(I_i11),'left'));

        %����������  PI*0.001*(  I_i8*I_i3^2-I_i9*I_i2^2  )+SQRT[I_i4^2+3*10^(-6)*PI^2*(I_i8-I_i9)^2*I_i2^4]
        K_i5_I_i2 = str2num(char(newI_i2));
        K_i5 = pi .* 0.001 .* (  I_i8 .* (str2num(char(newI_i3)).^2) ...
            - I_i9 .* ((K_i5_I_i2).^2)  ) + sqrt(  (str2num(char(newI_i4)).^2) ... 
            + 3.*(10.^(-6)).*pi.*pi .* ((I_i8 - I_i9).^2) .* ((K_i5_I_i2).^4)  );
        newK_i5 = cellstr(strjust(num2str(K_i5),'left'));
        result1_2 = 0.9 * min(K_i5)-max(K_i4);  %��������е�����

        %������ȫϵ��  0.9*K_i5/K_i4
        rowEnd_newK_i4 = str2num(char(newK_i4(end,1))) + 0.001;  %����K_n+1,4Ϊ�㣬ȡ����������м��㣬��K_n+1,4=K_n+1,4+0.001
        deno_K_i6 = newK_i4;
        deno_K_i6{end} = num2str(rowEnd_newK_i4);    %��ĸ
    %     mole_K_i6 = K_i5;   %����
        newK_i6 = cellstr(strjust(num2str(   0.9.*K_i5./str2num(char(deno_K_i6))    ),'left')); %K_i6 = K_i5/K_i4   strjust:�ַ�������
        result1_3 = min(0.9.*K_i5./str2num(char(deno_K_i6)));  %��������е�����

        %У�˽��
        newK_i7 = {};
        for i = 1:size(newK_i6,1)
            if str2num(cell2mat(newK_i6(i,1))) > str2num(cell2mat(F_i4))
                newK_i7{end+1,1} = '����Ҫ��';
            else
                newK_i7{end+1,1} = '������Ҫ��';
            end
        end
        %��������е����ݣ���ȡУ�˽��
        y_k6 = 0.9.*K_i5./str2num(char(deno_K_i6))
        for i = 1:size(newK_i6,1)
            if abs(y_k6(i,1)-result1_3) < 0.0001
                result3_3 = newK_i7{i,1};
            end
        end


        %����⼷ѹ��   K_i8 = 0.00981*E_11*K_i2  ���ڽ��洦��ѹ��
        newK_i8 = newI_i8;

        %���Ό��ǿ��  I_i6*{  SQRT[1-0.75*((I_i,10+I_i8)/I_i7)^2]  -  0.5*[(I_i,10+I_i8)/I_i7]  }
        K_i9 = str2num(char(newI_i6)) .* (   sqrt(   1-0.75.*(...
            ((  str2num(char(newI_i10)) + str2num(char(newI_i8))  )./str2num(char(newI_i7))).^2)) ...
             - 0.5 .* ((I_i10+I_i8)./ str2num(char(newI_i7)) )      )
        newK_i9 = cellstr(strjust(num2str(K_i9),'left'));

        %������ȫϵ��  K_i9/K_i8
        deno_K_i10 = newK_i8;
        deno_K_i10{1,1} = num2str(str2num(char(newK_i8(1,1))) + 0.001);   %��һ��+0.001
        K_i10 = K_i9./ str2num(char(deno_K_i10));
        newK_i10 = cellstr(num2str(K_i10));
        result1_4 = min(K_i10);%��������е�����

        %У�˽��
        newK_i11={};
        for i = 1:size(newK_i10,1)
            if K_i10(i,1) > str2num(char(F_i5))
                newK_i11{end+1,1} = '����Ҫ��';
            else
                newK_i11{end+1,1} = '������Ҫ��';
            end
        end
        %��������е����ݣ���ȡУ�˽��
        y_k10 = str2num(char(newK_i10));
        for i = 1:size(y_k10,1)
            if abs(y_k10(i,1)-result1_4)<0.0001
                result3_4 = newK_i11{i,1};
            end
        end

        %��һ��������ѹ��   MAX(I_i,11)/EXP{1.1155*0.0001*0.55*[MAX(K_i,2)-K_i2]}-K_i8
        MAX_K_i2 = max(  str2num(char(newK_i2))  ) - str2num(char(newK_i2))
        K_i12 = max(I_i11) ./ exp(1.1155*0.0001*0.55 .* MAX_K_i2 ) - str2num(char(newK_i8));
        newK_i12 = cellstr(strjust(num2str(K_i12),'left'));

        %���Ό��ѹǿ��    I_i5*{ I_i3^2/SQRT(3*I_i2^4+I_i3^4) * ( (I_i,10+I_i9)/I_i7 )  +  SQRT[  1-3*I_i2^4/(3*I_i2^4+I_i3^4)*((I_i,10+I_i9)/I_i7)^2  ] }
        K_i13 = str2num(char(newI_i5)).*(   str2num(char(newI_i3)).^2 ./...
            sqrt(3.*str2num(char(newI_i2)).^4 + str2num(char(newI_i3)).^4) .*...
            ((I_i10+I_i9) ./ str2num(char(newI_i7))) + ...
            sqrt(  1-3.*(str2num(char(newI_i2)).^4)./...
            (3.*str2num(char(newI_i2)).^4 + str2num(char(newI_i3)).^4) .*...
            ((I_i10+I_i9)./str2num(char(newI_i7)) ).^2  )   );
        newK_i13 = cellstr(num2str(K_i13));

        %����ѹ��ȫϵ��   K_i,13/K_i,12
        newK_i14 = cellstr(strjust(num2str(K_i13./K_i12),'left'));
        result1_5 = min(K_i13./K_i12);%��������е�����

        %У�˽��
        newK_i15 = {};
        for i = 1:size(newK_i10,1)
            if str2num(char(newK_i14(i,1))) > str2num(char(F_i6))
                newK_i15{end+1,1} = '����Ҫ��';
            else
                newK_i15{end+1,1} = '������Ҫ��';
            end
        end

        %��������е����ݣ���ȡУ�˽��
        y_k14 = str2num(char(newK_i14));
        for i = 1:size(newK_i14,1)
            if abs(y_k14(i,1)-result1_5)<0.0001
                result3_5 = newK_i15{i,1};
            end
        end

        result_Data = [newK_i1,newK_i2,newK_i3,newK_i4,newK_i5,newK_i6,newK_i7,newK_i8,newK_i9,newK_i10,...
            newK_i11,newK_i12,newK_i13,newK_i14,newK_i15];   %ƴ��������
        set(handles.result1_uitable1,'Data',result_Data);   %�����

        %����Iֵ��main.m
        return_I2main = [newI_i1,newI_i2,newI_i3,newI_i4,newI_i5,newI_i6,newI_i7,newI_i8,newI_i9,newI_i10,newI_i11];
        pass_Data{6} = return_I2main;
        pass_Data{7} = result_Data;
        handles.output = pass_Data;% �����ݷ��͵� handles.output �С�

    %------------------------------------------------------------------------------------------%
        %����ͼ��
        %��һ��ͼ
        fig1_1 = figure(11);
        set(fig1_1,'units','normalized','position',[0.35 0.15 0.3 0.8]);
        set(fig1_1,'menubar','none');
        set(fig1_1,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦�׹������������ͼ');
        hold on;
        y_fig_1 = str2num(char(newK_i2));
        x_fig_1 = str2num(char(newK_i4)); 
        set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse'); %����ԭ��λ��
        plot(x_fig_1,y_fig_1,'-b','LineWidth',1.5)
        xlabel('��������ʱ��ͬ������洦�׹���������/kN','FontSize',10);
        ylabel('����/m','FontSize',10);
        grid on;
        hold off;
        %�ڶ���ͼ
        fig1_2 = figure(12);
        set(fig1_2,'units','normalized','position',[0.12 0.3 0.7 0.55]);
        set(fig1_2,'menubar','none');
        set(fig1_2,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������洦������ֵ���ͼ');
        hold on;
        x_fig_2 = y_fig_1;  %����
        y1_fig_2 = x_fig_1; %��Ч������
        y2_fig_2 = K_i5;    %����������
        y3_fig_2 = str2num(char(newK_i8));  %����⼷ѹ��
        y4_fig_2 = str2num(char(newK_i9));  %���Ό��ǿ��
        y5_fig_2 = str2num(char(newK_i12)); %�����ѹ��
        y6_fig_2 = str2num(char(newK_i13)); %���Ό��ѹǿ��
        yyaxis left;    %yyaxis left ���ǰ������������� y �������һ�ࡣ����ͼ�������Ŀ��Ϊ��ࡣ
        plot(x_fig_2,y1_fig_2,'-r','LineWidth',1.5)
        plot(x_fig_2,y2_fig_2,'-g','LineWidth',1.5)
        xlabel('����/m','FontSize',10);
        ylabel('������/kN','FontSize',10);
        yyaxis right;
        plot(x_fig_2,y3_fig_2,'-b','LineWidth',1.5)
        plot(x_fig_2,y4_fig_2,'-k','LineWidth',1.5)
        plot(x_fig_2,y5_fig_2,'-m','LineWidth',1.5)
        plot(x_fig_2,y6_fig_2,'-y','LineWidth',1.5)
        ylabel('ѹ��ǿ��/MPa','FontSize',10);
        legend2 = legend({'��Ч������','����������','����⼷ѹ��','���Ό��ǿ��','���⾮������ѹ��','���Ό��ѹǿ��'},'Orientation','horizontal','Location','northoutside')
        title(legend2,'��������ʱ��ͬ������洦������ֵ','FontSize',14);      %ͼ���Ϸ������ַ������⣨string��
        grid on
        hold off;
        %������ͼ
        fig1_3 = figure(13);
        set(fig1_3,'units','normalized','position',[0.32 0.15 0.35 0.8]);
        set(fig1_3,'menubar','none');
        set(fig1_3,'NumberTitle', 'off', 'Name', '��������ʱ��ͬ������氲ȫϵ���Ķ���������ͼ');
%         hold on;
        y_fig_3 = str2num(char(newK_i2(1:end)));
        x1_fig_3 = str2num(char(newK_i6(1:end)));
        x2_fig_3 = str2num(char(newK_i10(1:end)));
        x3_fig_3 = str2num(char(newK_i14(1:end)));      
        semilogx(x1_fig_3,y_fig_3,x2_fig_3,y_fig_3,x3_fig_3,y_fig_3,'LineWidth',1.5)
        axis ij;     %����ԭ��λ��λ�����Ͻ�
        set(gca,'xaxislocation','top');
    %     xlabel('��������ʱ��ͬ������洦�׹���������/kN','FontSize',10);
        ylabel('����/m','FontSize',10);
        legend({'������ȫϵ��','������ȫϵ��','����ѹ��ȫϵ��'},'Orientation','horizontal','Location','southoutside')

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
        
        str3 = ['��С������ȫϵ����',num2str(min(x1_fig_3)),'    ','���',num2str(jshen3)];
        str2 = ['��С������ȫϵ����',num2str(min(x2_fig_3)),'    ','���',num2str(jshen2)];
        str1 = ['��С����ѹ��ȫϵ����',num2str(min(x3_fig_3)),'    ','���',num2str(jshen1)];
        str = {'��������ʱ��ͬ������氲ȫϵ���Ķ�������';'';str3;str2;str1;''};
        title(str,'FontSize',12);
        grid on;
    end
    delete(h1_1);
catch
    delete(h1_1);
    msgbox('���������Ƿ���ȷ��', '����','error');
end
%������ uiresume ʱ����������У�ִ�� OutputFcn �����޸�֮���ֵͨ�� handles.output ���
guidata(hObject, handles);  % �� handles �ṹ���е����ݷ����ı�ʱ������ʹ�� guidata ���� handles �ṹ��
uiresume(handles.figure1)   %����ִ�б�uiwait�жϵĳ���

% --- Executes on button press in result1_pushbutton2.
function result1_pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to result1_pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear data_cell filter m  n hangshu lieshu hang  lie Filename Pathname str CloumnName dataExcel;
%pass_Data��{1}A����{2}B����{3}D����{4}E����{5}F����
global pass_Data result1_1 result1_2 result1_3 result1_4...
    result1_5 result3_3 result3_4 result3_5 fig1_1 fig1_2 fig1_3
y_A_cell = pass_Data{1};
y_B_cell = pass_Data{2};
y_D_cell = pass_Data{3};
y_E_cell = pass_Data{4};
y_F_cell = pass_Data{5};
data_cell = get(handles.result1_uitable1,'Data');    %������
[m,n] = size(data_cell);
[a1,a2] = size(y_A_cell);
[b1,b2] = size(y_B_cell);
[d1,d2] = size(y_D_cell);
[e1,e2] = size(y_E_cell);
[f1,f2] = size(y_F_cell);
if(m~=0 && n~=0 && a1~=0 && a2~=0 && b1~=0 && b2~=0 && d1~=0 && d2~=0 && e1~=0 && e2~=0 && f1~=0 && f2~=0)
    filter = {'*.docx';'*.*'};
    [Filename,Pathname] = uiputfile(filter,'���Ϊ','data.docx');  %�����ļ�����Ի���
    if (Filename==0 & Pathname==0)
        msgbox('��û�б�������!','ȷ��','error');
    else
            str=[Pathname Filename];
            %����Word�ĵ�
            filespec_user = [str];  % �趨����Word�ļ�����·��
            % �ж�Word�Ƿ��Ѿ��򿪣����Ѵ򿪣����ڴ򿪵�Word�н��в���������ʹ�Word
            try
                % ��Word�������Ѿ��򿪣���������Word
                Word = actxGetRunningServer('Word.Application');
            catch
            % ���򣬴���һ��Microsoft Word�����������ؾ��Word
                Word = actxserver('Word.Application');
            end;
            Word.Visible = 1; % ��set(Word, 'Visible', 1);

            % �������ļ����ڣ��򿪸ò����ļ��������½�һ���ļ��������棬�ļ���Ϊ����.docx
            if exist(filespec_user,'file');
                Document = Word.Documents.Open(filespec_user);
            % Document = invoke(Word.Documents,'Open',filespec_user);
            else
                Document = Word.Documents.Add;
            % Document = invoke(Word.Documents, 'Add');
                Document.SaveAs2(filespec_user);
            end

            % �趨���λ�ô�ͷ��ʼ
            Content = Document.Content;
            Selection = Word.Selection;
            Paragraphformat = Selection.ParagraphFormat;

            % �趨ҳ���С
            Document.PageSetup.TopMargin = 60; % ��λ����
            Document.PageSetup.BottomMargin = 45;
            Document.PageSetup.LeftMargin = 45;
            Document.PageSetup.RightMargin = 45;

            % Content.InsertParagraphAfter;% ����һ��
            % Content.Collapse=0; % 0Ϊ������
            Content.Start = 0;
            Content.Text = 'ֱ�������������';
            Content.Font.Size = 22 ;
            Content.Font.Bold = 4 ;
            Content.Paragraphs.Alignment = 'wdAlignParagraphCenter';% �趨�����ʽ
            Selection.Start = Content.end;% ���忪ʼ��λ��
            Selection.TypeParagraph;

            %��һ���
            Selection.Text = 'һ�������������';
            Selection.Font.Size = 14;
            Selection.Font.Bold = 1; 
            Selection.MoveDown;
            Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
            Selection.TypeParagraph;    %�����µĿն���
            
            %��һ�� ��
            Selection.Text = '1.1���۹������';
            Selection.Font.Size = 12;
            Selection.Font.Bold = 1; 
            Selection.MoveDown;
            Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
            Selection.TypeParagraph;    %�����µĿն���      
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.Font.Bold = 0; 
            %�������ݱ��
            Selection.Font.Size = 11;   %���ñ���������СΪ11
            Tables = Document.Tables.Add(Selection.Range,size(pass_Data{1},1)+1,5);    % ��data_cell+1�� �� 5��
            DTI1_1 = Document.Tables.Item(1); % ��DTI = Tables;
            DTI1_1.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
            DTI1_1.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
            DTI1_1.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
            DTI1_1.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI1_1.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
            DTI1_1.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
            % ָ������Ԫ������
            DTI1_1.Cell(1,1).Range.Text = '���';
            DTI1_1.Cell(1,2).Range.Text = '����(m)';
            DTI1_1.Cell(1,3).Range.Text = '��б��(��)';
            DTI1_1.Cell(1,4).Range.Text = '��λ��(��)';
            DTI1_1.Cell(1,5).Range.Text = '����(m)';
%             DTI1_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;

            %��д����
            for cell_word = 1:size(y_A_cell,1)
                DTI1_1.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %��� 
                DTI1_1.Cell(cell_word+1,2).Range.Text = num2str(y_A_cell{cell_word,1});      %����    
                DTI1_1.Cell(cell_word+1,3).Range.Text = num2str(y_A_cell{cell_word,2});     %��б��
                DTI1_1.Cell(cell_word+1,4).Range.Text = num2str(y_A_cell{cell_word,3});     %��λ��
                DTI1_1.Cell(cell_word+1,5).Range.Text = num2str(y_A_cell{cell_word,4});    %����
            end

            %�ڶ��� ��
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���
            Selection.Text = '1.2����ṹ����';
            Selection.Font.Size = 12;
            Selection.Font.Bold = 0; 
            Selection.MoveDown;
            Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
            Selection.TypeParagraph;    %�����µĿն���      
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.Font.Bold = 0; 
            
            %�������ݱ��
            Selection.Font.Size = 11;   %���ñ���������СΪ11
            Tables = Document.Tables.Add(Selection.Range,size(pass_Data{2},1)+1,6);    % ��data_cell+1�� �� 6��
            DTI1_2 = Document.Tables.Item(2); % ��DTI = Tables;
            DTI1_2.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
            DTI1_2.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
            DTI1_2.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
            DTI1_2.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI1_2.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
            DTI1_2.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
            % ָ������Ԫ������
            DTI1_2.Cell(1,1).Range.Text = '���';
            DTI1_2.Cell(1,2).Range.Text = '��������';
            DTI1_2.Cell(1,3).Range.Text = '����(m)';
            DTI1_2.Cell(1,4).Range.Text = '���(m)';
            DTI1_2.Cell(1,5).Range.Text = '��Ч����ֱ��(mm)';
            DTI1_2.Cell(1,6).Range.Text = 'Ħ��ϵ��';

            %��д����
            for cell_word = 1:size(y_B_cell,1)
                DTI1_2.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %��� 
                DTI1_2.Cell(cell_word+1,2).Range.Text = num2str(y_B_cell{cell_word,1});      %��������    
                DTI1_2.Cell(cell_word+1,3).Range.Text = num2str(y_B_cell{cell_word,2});     %����
                DTI1_2.Cell(cell_word+1,4).Range.Text = num2str(y_B_cell{cell_word,3});     %���
                DTI1_2.Cell(cell_word+1,5).Range.Text = num2str(y_B_cell{cell_word,4});    %��Ч����ֱ��
                DTI1_2.Cell(cell_word+1,6).Range.Text = num2str(y_B_cell{cell_word,5});    %Ħ��ϵ��
            end
            
            %������ ��
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���
            
            Selection.Text = '1.3��ҵ�������';
            Selection.Font.Size = 12;
            Selection.Font.Bold = 0; 
            Selection.MoveDown;
            Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
            Selection.TypeParagraph;    %�����µĿն���      
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.Font.Bold = 0; 
            
            %�������ݱ��
            Selection.Font.Size = 11;   %���ñ���������СΪ11
            Tables = Document.Tables.Add(Selection.Range,size(pass_Data{3},1)+1,9);    % ��data_cell+1�� �� 9��
            DTI1_3 = Document.Tables.Item(3); % ��DTI = Tables;
            DTI1_3.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
            DTI1_3.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
            DTI1_3.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
            DTI1_3.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI1_3.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
            DTI1_3.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
            % ָ������Ԫ������
            DTI1_3.Cell(1,1).Range.Text = '���';
            DTI1_3.Cell(1,2).Range.Text = '��������';
            DTI1_3.Cell(1,3).Range.Text = '����(m)';
            DTI1_3.Cell(1,4).Range.Text = '���(m)';
            DTI1_3.Cell(1,5).Range.Text = '�⾶(mm)';
            DTI1_3.Cell(1,6).Range.Text = '�ھ�(mm)';
            DTI1_3.Cell(1,7).Range.Text = '����(mm)';
            DTI1_3.Cell(1,8).Range.Text = '�ּ�';
            DTI1_3.Cell(1,9).Range.Text = '����';
            %DTI1_3.Cell(1,:).Shading.Texture = wdTextureHorizontal;
            
            %��д����
            for cell_word = 1:size(y_D_cell,1)
                DTI1_3.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %��� 
                DTI1_3.Cell(cell_word+1,2).Range.Text = num2str(y_D_cell{cell_word,1});      %��������    
                DTI1_3.Cell(cell_word+1,3).Range.Text = num2str(y_D_cell{cell_word,2});     %����
                DTI1_3.Cell(cell_word+1,4).Range.Text = num2str(y_D_cell{cell_word,3});     %���
                DTI1_3.Cell(cell_word+1,5).Range.Text = num2str(y_D_cell{cell_word,4});    %�⾶
                DTI1_3.Cell(cell_word+1,6).Range.Text = num2str(y_D_cell{cell_word,5});    %�ھ�
                DTI1_3.Cell(cell_word+1,7).Range.Text = num2str(y_D_cell{cell_word,6});    %����
                DTI1_3.Cell(cell_word+1,8).Range.Text = num2str(y_D_cell{cell_word,7});    %�ּ�
                DTI1_3.Cell(cell_word+1,9).Range.Text = num2str(y_D_cell{cell_word,8});    %����
            end
            
            %���ĸ� ��
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���
            
            Selection.Text = '1.4�꾮Һ����';
            Selection.Font.Size = 12;
            Selection.Font.Bold = 0; 
            Selection.MoveDown;
            Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
            Selection.TypeParagraph;    %�����µĿն���      
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.Font.Bold = 0; 
            
            %�������ݱ��
            Selection.Font.Size = 11;   %���ñ���������СΪ11
            Tables = Document.Tables.Add(Selection.Range,size(pass_Data{4},1)+1,4);    % ��data_cell+1�� �� 4��
            DTI1_4 = Document.Tables.Item(4); % ��DTI = Tables;
            DTI1_4.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
            DTI1_4.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
            DTI1_4.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
            DTI1_4.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI1_4.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
            DTI1_4.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
            % ָ������Ԫ������
            DTI1_4.Cell(1,1).Range.Text = '���';
            DTI1_4.Cell(1,2).Range.Text = '�ܶ�(g/cm^3)';
            DTI1_4.Cell(1,3).Range.Text = '������(mPa��s)';
            DTI1_4.Cell(1,4).Range.Text = '������(Pa)';
            %DTI1_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;
            
            %��д����
            for cell_word = 1:size(y_E_cell,1)
                DTI1_4.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %��� 
                DTI1_4.Cell(cell_word+1,2).Range.Text = num2str(y_E_cell{cell_word,1});      %�ܶ�    
                DTI1_4.Cell(cell_word+1,3).Range.Text = num2str(y_E_cell{cell_word,2});     %������
                DTI1_4.Cell(cell_word+1,4).Range.Text = num2str(y_E_cell{cell_word,3});     %������
            end
            
            %����� ��
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���
            
            Selection.Text = '1.5��ػ�������';
            Selection.Font.Size = 12;
            Selection.Font.Bold = 0; 
            Selection.MoveDown;
            Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
            Selection.TypeParagraph;    %�����µĿն���      
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.Font.Bold = 0; 
            
            %�������ݱ��
            Selection.Font.Size = 11;   %���ñ���������СΪ11
            Tables = Document.Tables.Add(Selection.Range,size(pass_Data{5},1)+1,7);    % ��data_cell+1�� �� 7��
            DTI1_5 = Document.Tables.Item(5); % ��DTI = Tables;
            DTI1_5.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
            DTI1_5.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
            DTI1_5.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
            DTI1_5.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI1_5.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
            DTI1_5.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
            % ָ������Ԫ������
            DTI1_5.Cell(1,1).Range.Text = '���';
            DTI1_5.Cell(1,2).Range.Text = '�����ֲ��ܶ�(g/cm^3)';
            DTI1_5.Cell(1,3).Range.Text = '��ѹ(kN)';
            DTI1_5.Cell(1,4).Range.Text = '�׹�����ز�ѹ���ݶ�(m)';
            DTI1_5.Cell(1,5).Range.Text = '���ÿ�����ȫϵ��';
            DTI1_5.Cell(1,6).Range.Text = '���ÿ��⼷��ȫϵ��';
            DTI1_5.Cell(1,7).Range.Text = '���ÿ���ѹ��ȫϵ��';
            %DTI1_1.Cell(1,:).Shading.Texture = wdTextureHorizontal;
            
            %��д����
            for cell_word = 1:size(y_F_cell,1)
                DTI1_5.Cell(cell_word+1,1).Range.Text = num2str(cell_word);                            %��� 
                DTI1_5.Cell(cell_word+1,2).Range.Text = num2str(y_F_cell{cell_word,1});     
                DTI1_5.Cell(cell_word+1,3).Range.Text = num2str(y_F_cell{cell_word,2});    
                DTI1_5.Cell(cell_word+1,4).Range.Text = num2str(y_F_cell{cell_word,3});   
                DTI1_5.Cell(cell_word+1,5).Range.Text = num2str(y_F_cell{cell_word,4});   
                DTI1_5.Cell(cell_word+1,6).Range.Text = num2str(y_F_cell{cell_word,5});   
                DTI1_5.Cell(cell_word+1,7).Range.Text = num2str(y_F_cell{cell_word,6});    
            end
            
            %�ڶ����
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���
            Selection.InsertBreak;   %�����ҳ��
            
            Selection.Text = '����ֱ��������������';
            Selection.Font.Size = 14;
            Selection.Font.Bold = 1; 
            Selection.MoveDown;
            Selection.ParagraphFormat.Alignment = 'wdAlignParagraphLeft';
            Selection.TypeParagraph;    %�����µĿն���
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.Font.Bold = 0; 
            %�������ݱ��
            Selection.Font.Size = 11;   %���ñ���������СΪ11
            Tables = Document.Tables.Add(Selection.Range,size(data_cell,1)+1,6);    % ��data_cell+1�� �� 6��
            DTI1_6 = Document.Tables.Item(6); % ��DTI = Tables;
            DTI1_6.Borders.OutsideLineStyle = 'wdLineStyleSingle';% ������߿�����ͣ�Dash��DashDot,DashDotDot,DashSmallGap,DashLargeGap,Dot,Double,Triple��
            DTI1_6.Borders.OutsideLineWidth = 'wdLineWidth150pt';% �����߿���025��050��075��100��150��225��300��450��600pt��
            DTI1_6.Borders.InsideLineStyle = 'wdLineStyleSingle';%�����ڱ߿������
            DTI1_6.Borders.InsideLineWidth = 'wdLineWidth075pt';
            DTI1_6.Rows.Alignment = 'wdAlignRowCenter';%�����ж��뷽ʽ
            column_width = [53.7736,85.1434,53.7736,35.0094,35.0094,76.6981,55.1887,52.9245,54.9057];% �����п���λΪ��
            row_height = [28.5849,28.5849,28.5849,28.5849,25.4717,25.4717,32.8302,312.1698,17.8302,49.2453,14.1509,18.6792]; % �����и�
            DTI1_6.Range.ParagraphFormat.Alignment = 'wdAlignParagraphCenter'; %��Ԫ�����ݾ���
            % ָ������Ԫ������
            DTI1_6.Cell(1,1).Range.Text = '�������';
            DTI1_6.Cell(1,2).Range.Text = '�����Ч������(kN)';
            DTI1_6.Cell(1,3).Range.Text = '��������(kN)';
            DTI1_6.Cell(1,4).Range.Text = '������ȫϵ��';
            DTI1_6.Cell(1,5).Range.Text = '������ȫϵ��';
            DTI1_6.Cell(1,6).Range.Text = '����ѹ��ȫϵ��';
            DTI1_6.Cell(2,1).Range.Text = '�����С';
            DTI1_6.Cell(3,1).Range.Text = '��Ӧλ��';
            DTI1_6.Cell(4,1).Range.Text = 'У�˽��';
            DTI1_6.Cell(2,2).Range.Text = num2str(result1_1);
            DTI1_6.Cell(2,3).Range.Text = num2str(result1_2);
            DTI1_6.Cell(2,4).Range.Text = num2str(result1_3);
            DTI1_6.Cell(2,5).Range.Text = num2str(result1_4);
            DTI1_6.Cell(2,6).Range.Text = num2str(result1_5);
            DTI1_6.Cell(3,2).Range.Text = '����';
            DTI1_6.Cell(3,3).Range.Text = '����';
            DTI1_6.Cell(3,4).Range.Text = '����';
            DTI1_6.Cell(3,5).Range.Text = '����';
            DTI1_6.Cell(3,6).Range.Text = '����';
            DTI1_6.Cell(4,2).Range.Text = '��';
            DTI1_6.Cell(4,3).Range.Text = '��';
            DTI1_6.Cell(4,4).Range.Text = result3_3;
            DTI1_6.Cell(4,5).Range.Text = result3_4;
            DTI1_6.Cell(4,6).Range.Text = result3_5;
            
            %����ͼƬ
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���
            
            hObject_fig1_1 = findobj(fig1_1);
            hObject_fig1_1 = hObject_fig1_1(1,1);
            
            hObject_fig1_2 = findobj(fig1_2);
            hObject_fig1_2 = hObject_fig1_2(1,1);
            
            hObject_fig1_3 = findobj(fig1_3);
            hObject_fig1_3 = hObject_fig1_3(1,1);
            
            hgexport(hObject_fig1_2, '-clipboard');
            Selection.Range.Paragraphs.Item(1).Range.Paste;
            
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���       
            hgexport(hObject_fig1_1, '-clipboard');    %��ͼ�θ��Ƶ�Microsoft? Windowsճ����
            Selection.Range.Paragraphs.Item(1).Range.PasteSpecial;   %��ͼ��ճ������ǰ�ĵ���
            
            Selection.Start = Content.end; % �趨���λ��Ϊ���
            Selection.TypeParagraph;    %�����µĿն���   
            hgexport(hObject_fig1_3, '-clipboard'); 
            Selection.Range.Paragraphs.Item(1).Range.Paste;
            Document.ActiveWindow.ActivePane.View.Type = 'wdPrintView'; % ������ͼ��ʽΪҳ��
            Document.Save; % �����ĵ�
%             Document.Close; % �ر��ĵ�
%             Word.Quit; % �˳�word������
    end
end
