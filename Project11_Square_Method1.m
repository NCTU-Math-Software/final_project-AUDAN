% 1389019170 1929374254627488900
% Method_1 (暴力法)
format long;
n=0;
n2=zeros(1,19);
n2(1,17)=9;
for m=13890192:-1:10101010
   % 因為 n^2 結尾為900, 所以 n 的結尾為 '70' 或 '30'
   s1=int2str(10*m^2+14*m+4);  % the case of n=abcdefg70 , for all a,b,c,d,e,f,g are some numbers from 0~9
   s2=int2str(10*m^2+6*m);     % the case of n=abcdefg30 , for all a,b,c,d,e,f,g are some numbers from 0~9
   
   % for s1 的判斷位置
   if ((s1(1)=='1')&&(s1(3)=='2')&&(s1(5)=='3')&&(s1(7)=='4')&&(s1(9)=='5')&&(s1(11)=='6')&&(s1(13)=='7')&&(s1(15)=='8'))
      n=m*100+70;     
      for ii=1:16
          n2(1,ii)=s1(ii);
      end
      disp(['The answer is : n= ', int2str(n) , ', n^2 = ',n2])
      break;
   end
   
   % for s2 的判斷位置   
   if ((s2(1)=='1')&&(s2(3)=='2')&&(s2(5)=='3')&&(s2(7)=='4')&&(s2(9)=='5')&&(s2(11)=='6')&&(s2(13)=='7')&&(s2(15)=='8'))
      n=m*100+30;
      for ii=1:16
          n2(1,ii)=s2(ii);
      end
      disp(['The answer is : n= ', int2str(n) , ', n^2 = ' ,n2])
      break;
   end
end