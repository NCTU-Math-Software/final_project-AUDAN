%1389019170 1929374254627488900
% Method_2 (General solution for all n^2 )
format long;
for n=1389019200:-1:1010101010
    Lenth1=floor(log10(n))+1;
    t=[];  % ���V�q�� n
    s=zeros(Lenth1,2*Lenth1); % �C�ӳ��V�q�� n �ñƦn��ƪ��x�}
    r=zeros(1,2*Lenth1); % ��� s ���U�C�[�`�öi�쪺���G (�Y�� n^2 )
    
    % �� n ���V�q��
    for ii=1:Lenth1
        t(Lenth1-ii+1)=fix(n/10^(ii-1))-fix(n/10^ii)*10;
    end
    
    % �N�C�@�ӳ��V�q�� n �è̷Ӧ�ƱƧǦ��@��(
    for p=1:Lenth1
        Lenth2=floor(log10(t(p)*n))+1;
        for ii=1:Lenth2
            s(p,Lenth1-ii+p+1)=fix(t(p)*n/10^(ii-1))-fix(t(p)*n/10^ii)*10;
        end
    end
    
    % �N�U���[�`�öi��i�쪺�ʧ@
    r1=0;
    for q=2*Lenth1:-1:1        
        c=0; % q �C�[�`��
        for a=1:Lenth1        
            c=c+s(a,q);                       
        end
        c=c+r1;
        r1=fix(c/10); % �i���
        r(q)=c-r1*10; % n^2 �q�Y�ƨӲ� q �� ( �Y n^2 ���_�ƶ��e�Y���� 0 )
    end
    
    % �P�O�Ӧ�m���Ʀr�O�_���T
    if ((r(2)==1)&&(r(4)==2)&&(r(6)==3)&&(r(8)==4)&&(r(10)==5)&&(r(12)==6)&&(r(14)==7)&&(r(16)==8)&&(r(18)==9)&&(r(20)==0))       
       disp(['The answer is : n= ', int2str(n) , ', n^2 = ']) 
       disp(r)
       break;
    end
end