# final_project-AUDAN
final_project-AUDAN created by GitHub Classroom

I want to write project 11.

For project11 :

Please find a n belongs to nature numbers so that 

 n^2 = 1_2_3_4_5_6_7_8_9_0 ,  _ is an integer from 0~9.



I have 2 methods.


Method 1: 暴力解

 因為 n^2 後面結尾是 900, 所以判斷 n 後方結尾為 '70' or '30'.
 
 然後將 n 剩餘的 7 位數去跑.
 
 以 s1 當 n 後面兩位是 ˙70'.
 
 以 s2 當 n 後面兩位是 '30'.
 
 然後以向量形式判斷在什麼位子上應該為何種數字.
 
 
Method 2: General salution
 
 我是先把 n 轉成向量 t.
 
 再把向量 t 的每個向量單位乘 n 轉成一個矩陣 s.
 
 接著把 s 反向對角相加並且進行一些進位的動作形成一個向量 r.
 
 最後進行一個判斷的工作
 
 
 
