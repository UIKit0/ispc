
export uniform int width() { return programCount; }


export void f_f(uniform float RET[], uniform float aFOO[]) {
    uniform float buf[programCount];
    uniform float * varying ptr = &buf[programCount - 1 - programIndex];
    ptr[0] = programIndex;
    RET[programIndex] = buf[programIndex];
}

export void result(uniform float RET[]) {
    RET[programIndex] = programCount - 1 - programIndex;
}
