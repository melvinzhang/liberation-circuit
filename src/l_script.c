#include <luajit-2.1/lua.h>
#include <luajit-2.1/lauxlib.h>
#include <luajit-2.1/lualib.h>
#include "l_script.h"

int do_script(const char *fn) {
    fprintf(stdout, "Running script %s\n", fn);
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    int status = luaL_dofile(L, fn);
    if (status) {
        fprintf(stderr, "Error: %s\n", lua_tostring(L, -1));
        return 1;
    }
    lua_close(L);
    return 0;
}
