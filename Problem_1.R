
(a) Create a vector with the numbers 4, 1, 1, 4 called x. 
 
x <- c(4, 1, 1, 4)
 
(b) Create a second vector called y with the numbers 1, 4. 

y <- c(1, 4)

(c) Compute the difference between x and y and explain the result. Use a comment to write the answer in the code. Comments in R start with #. 

x – y 
 # When calculating the two vectors x (4,1,1,4) and y (1,4) because of  difference in lengths the answer is (3,-3,0,0)

(d) Concatenate x and y to a new vector called s. 

s <- c(x, y)
(e) Use the rep function to repeat the whole vector s 10 times. Calculate the length of the resulting vector. 

rep ( s, 10 )
length(s)

(f) Use the rep function to repeat each element of s 3 times.

> rep ( s, each = 3)

(g) Create a sequence with all integers between 7 and 21 using
i) seq

seq(7,21,by=1)

ii) the : shortcut. 

7:21	

(h) Compute the length of the sequence using length. 

length(7:21)



