%k��W_i9     X_i10
function k=get_metreK(R0,A0,r0)
syms x2 R A r k
F=(sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2))*...
    (sqrt(r^2-(sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2))^2)-sqrt(R^2-(sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2))^2))+...
    2*k*(sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2))...
    +r^2*asin((sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2))/r)-R^2*asin((sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2))/R)-A;
% F=subs(G,x2,'sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2)');

%%F=sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2)*(sqrt(r^2-R^2+(R^2-r^2+k^2)^2/4/k^2)-sqrt((R^2-r^2+k^2)^2/4/k^2))+2*k*sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2)+r^2*asin((R^2-r^2+k^2)^2/4/k^2/r)-R^2*asin((R^2-r^2+k^2)^2/4/k^2/R)-A;
%%f=inline('sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2)*(sqrt(r^2-R^2+(R^2-r^2+k^2)^2/4/k^2)-sqrt((R^2-r^2+k^2)^2/4/k^2))+2*k*sqrt(R^2-(R^2-r^2+k^2)^2/4/k^2)+r^2*asin((R^2-r^2+k^2)^2/4/k^2/r)-R^2*asin((R^2-r^2+k^2)^2/4/k^2/R)-A','R','A','r','k');
ff=subs(F,R,R0);
fff=subs(ff,A,A0);
ffff=subs(fff,r,r0);
FF=inline(ffff,'k');

% fh = figure('Visible','off');
% ezplot(FF,[R0-r0 R0-r0+0.00917])
% lh=findall(gca,'type','line');   % �ӵ�ǰͼ(gca)��ȡ�����ߵ�handle
% xc=get(lh,'xdata');   % ȡ��x������
% yc=get(lh,'ydata');   % ȡ��y������
% x=xc(1);  %��cellת���ɾ���
% y=yc(1);

% k=fzero(FF,[R0-r0 R0-r0+0.00917]);
fa = R0-r0;
fb = R0-r0+0.00917;
try
    k = vpa(fzero_CAL(FF,[fa fb]));
%     k=roundn(fzero_CAL(FF,[fa fb]),-16)
catch
    k=fsolve(FF,[fa fb]);
end
% k=Cal_Twofen(FF,R0-r0,R0-r0+0.00917);
% k=fsolve(FF,k0);


