#version 450
layout(location = 0) in vec3 pos;
layout(location = 1) in vec2 coord_pos;
layout(location = 0) out vec2 tex_coords;
void main(){
    gl_Position=vec4(pos,1.0);
    tex_coords = coord_pos;

}
