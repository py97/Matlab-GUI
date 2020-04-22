function YouDB()

% Connect to a database.
% 注意这里一定要使用数据源名才可以,不能使用数据库名

connA=database('YouDB','','') 

% Check the database status.
% ping(connA);%如果连接成功会提示返回信息
% Open cursor and execute SQL statement.
colnames={'A_i0','A_i1','A_i2','A_i3','A_i4'};
execdata1={'0','8','2','13','4'};
whereclause = ['where A_i0 = 0']
% insert(connA,'A',colnames,execdata1)
update(connA,'A',{'A_i0','A_i1','A_i2','A_i3','A_i4'},[1 2 3 4 5],'where A_i0 =''8')
% cursorA = exec(connA,'update A set A_i1="3" where A_i0="8"')
cursorA=exec(connA,'select * from A'); 

% Fetch the first 10 rows of data.

cursorA=fetch(cursorA);
Data=cursorA.Data
