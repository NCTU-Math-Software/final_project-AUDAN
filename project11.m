%1389019170 1929374254627488900
%Method_1 (暴力法)
format long;
m=0;
for n=13890192:-1:10101010
   s1=int2str(10*n^2+14*n+4);  % the case of n=abcdefg70 , for all a,b,c,d,e,f,g are some numbers from 0~9
   s2=int2str(10*n^2+6*n);     % the case of n=abcdefg70 , for all a,b,c,d,e,f,g are some numbers from 0~9
   if ((s1(1)=='1')&&(s1(3)=='2')&&(s1(5)=='3')&&(s1(7)=='4')&&(s1(9)=='5')&&(s1(11)=='6')&&(s1(13)=='7')&&(s1(15)=='8'))
      m=n*100+70;     
      s1(17)=9;      s1(18)=0;      s1(19)=0;
      disp(['The answer is : n= ', m , ' n^2 = ',s1])
      break;
   end
   if ((s2(1)=='1')&&(s2(3)=='2')&&(s2(5)=='3')&&(s2(7)=='4')&&(s2(9)=='5')&&(s2(11)=='6')&&(s2(13)=='7')&&(s2(15)=='8'))
      m=n*100+30;         
      s1(17)=9;      s1(18)=0;      s1(19)=0;
      disp(['The answer is : n= ', m , ' n^2 = ',s1])
      break;
   end
end
disp(m)
%{%1389019170 1929374254627488900
%Method_2 (General solution)
format long;
for n=1389019200:-1:1010101010
    k=floor(log10(n))+1;
    t=[];
    s=zeros(k,2*k-1);
    r=zeros(1,2*k-1);
    for ii=1:k
        t(k-ii+1)=fix(n/10^(ii-1))-fix(n/10^ii)*10;
    end
    for p=1:k
        L=floor(log10(t(p)*n))+1;
        for ii=1:L
            s(p,k-ii+p)=fix(t(p)*n/10^(ii-1))-fix(t(p)*n/10^ii)*10;
        end
    end
    
    r1=0;
    for q=2*k-1:-1:1
        c=0;
        for a=1:k        
            c=c+s(a,q);                       
        end
        r1=fix(c/10);
        r(q)=c-r1*10;
    end
    if ((r(1)=='1')&&(r(3)=='2')&&(r(5)=='3')&&(r(7)=='4')&&(r(9)=='5')&&(r(11)=='6')&&(r(13)=='7')&&(r(15)=='8')&&(r(17)=='9')&&(r(19)=='0'))       
       disp(['The answer is : n= ', n , ' n^2 = ',r]) 
       break;
    end
end
disp(n)%}
