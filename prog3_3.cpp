#include <stdio.h>
#include "lua.hpp"

int main(int argc, char *argv[]){
 printf("Assignment #3-3, Joseph Couri, josephmcouri@gmail.com\n");
 lua_State *L = luaL_newstate();
 luaL_openlibs(L);
 luaL_dofile(L,argv[1]);
 int error = luaL_dostring(L,"x = io.read('*l')");
 luaL_dostring(L,"print(InfixToPostfix(x))");
 lua_close(L);
return 0;
}
