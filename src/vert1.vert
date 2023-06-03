#version 450
layout(location = 0) in vec3 pos;
layout(location = 1) in vec3 color;
layout(location = 0) out vec3 frag_color;
void main(){
    vec2 pos[3] = vec2[3]( vec2(-0.7, 0.7),
                           vec2(0.7, 0.7),
                           vec2(0.0, -0.7) );
    gl_Position = vec4( pos[uint(gl_VertexIndex)], 0.0, 1.0 );
    // gl_Position=vec4(pos,1.0);
    frag_color = color;
}