
export uniform int width() { return programCount; }



struct Foo {
    float f;
};

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex];
    Foo foo[17];
    uniform int i;
    cfor (i = 0; i < 17; ++i)
        foo[i].f = i*a;
    RET[programIndex] = foo[(int)a].f;
}

export void result(uniform float RET[]) { RET[programIndex] = (programIndex+1)*(programIndex+1); }
