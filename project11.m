%1389019170 1929374254627488900
format long;
for n=1.0101*10^8:1389019171
    n1=floor(n^2/10);
    
    if n^2-n1*10 ~= 9
        continue 
    end
    n2=floor(n1/100);
    if floor(n1/10)-n2*10 ~= 8
        continue
    end
    n3=floor(n2/100);
    if floor(n2/10)-n3*10 ~= 7
        continue
    end
    n4=floor(n3/100);
    if floor(n3/10)-n4*10 ~= 6
        continue
    end
    n5=floor(n4/100);
    if floor(n4/10)-n5*10 ~= 5
        continue
    end
    n6=floor(n5/100);
    if floor(n5/10)-n6*10 ~= 4
        continue
    end
    n7=floor(n6/100);
    if floor(n6/10)-n7*10 ~= 3
        continue
    end
    n8=floor(n7/100);
    if floor(n7/10)-n8*10 ~= 2
        continue
    end
    n9=floor(n8/100);
    if floor(n8/10)-n9*10 ~= 1
        continue
    end                                     
    n=n*10;
    break   
end                                                                       
disp(n)