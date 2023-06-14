#version 450
void main(){
    vec3 pos[3] = vec3[3]( vec3(0.7, 0.7,1.0),
                           vec3(-0.7, 0.7,1.0),
                           vec3(0.0, -0.7,1.0) );
    float x = float(1-int(gl_VertexIndex))*0.5;
    float y = float(int(gl_VertexIndex)*2-1)*0.2+(int(gl_VertexIndex)*0.1);
    gl_Position = vec4(x,y,0.0, 1.0);

}
