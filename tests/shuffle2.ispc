
export uniform int width() { return programCount; }

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    int32 aa = aFOO[programIndex]; 
    int32 bb = aa + programCount;
    int32 shuf = shuffle(aa, bb, 1);
    RET[programIndex] = shuf;
}

export void result(uniform float RET[]) {
    RET[programIndex] = 2;
}
