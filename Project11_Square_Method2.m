%1389019170 1929374254627488900
% Method_2 (General solution for all n^2 )
format long;
for n=1389019200:-1:1010101010
    Lenth1=floor(log10(n))+1;
    t=[];  % 單位向量化 n
    s=zeros(Lenth1,2*Lenth1); % 每個單位向量乘 n 並排好位數的矩陣
    r=zeros(1,2*Lenth1); % 對於 s 的各列加總並進位的結果 (即為 n^2 )
    
    % 對 n 單位向量化
    for ii=1:Lenth1
        t(Lenth1-ii+1)=fix(n/10^(ii-1))-fix(n/10^ii)*10;
    end
    
    % 將每一個單位向量乘 n 並依照位數排序成一個(
    for p=1:Lenth1
        Lenth2=floor(log10(t(p)*n))+1;
        for ii=1:Lenth2
            s(p,Lenth1-ii+p+1)=fix(t(p)*n/10^(ii-1))-fix(t(p)*n/10^ii)*10;
        end
    end
    
    % 將各項加總並進行進位的動作
    r1=0;
    for q=2*Lenth1:-1:1        
        c=0; % q 列加總值
        for a=1:Lenth1        
            c=c+s(a,q);                       
        end
        c=c+r1;
        r1=fix(c/10); % 進位值
        r(q)=c-r1*10; % n^2 從頭數來第 q 位 ( 若 n^2 為奇數項前頭有補 0 )
    end
    
    % 判別該位置的數字是否正確
    if ((r(2)==1)&&(r(4)==2)&&(r(6)==3)&&(r(8)==4)&&(r(10)==5)&&(r(12)==6)&&(r(14)==7)&&(r(16)==8)&&(r(18)==9)&&(r(20)==0))       
       disp(['The answer is : n= ', int2str(n) , ', n^2 = ']) 
       disp(r)
       break;
    end
end