# CS320-Assignment-3
I ran all three programs in Linux Mint. In the desktop there is a folder called lua (not necessary, but I used it for organization).
Inside the lua folder are the three programs plus the lua-5.3.4 folder which I got from the lua website. Inside the lua-5.3.4/src
folder is a file called liblua.a which I also got from the lua website.To compile prog3_1.cpp I open up the terminal and type in 
"g++ prog3_1.cpp -o prog3_1 -I lua-5.3.4/src -L lua-5.3.4/src -l lua -l m -l dl". Then I type in "./prog3_1" followed by the lua
file I want to run. The program then runs that file in lua. To run prog3_2.lua I type in "lua" in the terminal to start lua. Then
I type "dofile('prog3_2.lua')". Then I type print(InfixToPostfix(...)) where ... is an infix function and it prints it as a postfix
function. To run prog3_3.cpp I type "g++ prog3_3.cpp -o prog3_3 -I lua-5.3.4/src -L lua-5.3.4/src -l lua -l m -l dl" in the terminal.
Then I type "./prog3_3 prog3_2.lua" and it takes an input. I type in an infix function and it prints it as a postfix function.