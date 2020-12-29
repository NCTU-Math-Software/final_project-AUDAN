# Project_11_平方數

# Author : AUDAN

I want to write project 11.

For project11 :

Please find a n belongs to nature numbers so that 

 n^2 = 1_2_3_4_5_6_7_8_9_0 ,  _ is an integer from 0~9.
 
And the final anscer is  n=1389019170, n^2=1929374254627488900 .


For the hard part of project11:

因為 medlab 的有效精確位只有 16 位,

而我們所要求的數字為19位數,

勢必不能直線硬拚

要另想方法計算這 19 位數字


I have 2 methods.


Method 1: 暴力解 (能於 1 分鐘內跑出結果, 但是只限定此數字)

 因為 n^2 後面結尾是 900, 所以判斷 n 後方結尾為 '70' or '30'.
 
 然後將 n 剩餘的前 7 位數
 
 以 s1 這個向量當 n 後面兩位是 ˙70' 去跑.
 
 以 s2 這個向量當 n 後面兩位是 '30' 去跑.
 
 然後以向量形式判斷在什麼位子上應該為何種數字.
 
 
Method 2: General salution (需要時間極長, 但對於所有數字都有可能找出答案 n)

 %所求數 n^2 若為奇數所求數 n^2 若為奇數項須補零在最前頭
 
 我是先把 n 轉成 1*10 的單位向量 t.
 
 再把向量 t 的每個單位向量乘 n ,並且單位化轉成一個 10*21 的矩陣  s.(依照位數放好)
 
 接著把 s 反向對角相加並且進行一些進位的動作形成一個向量 r (此時 r 即為我們所求 n^2 的 1*19 單位化向量).
 
 最後進行判斷位置是否為我們所要求的數字
 
 
 
