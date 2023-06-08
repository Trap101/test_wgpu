#version 310 es

precision highp float;
precision highp int;

struct VertexInput {
    vec3 position;
    vec2 tex_coords;
};
struct VertexOutput {
    vec4 clip_position;
    vec2 tex_coords;
};
layout(location = 0) in vec3 _p2vs_location0;
layout(location = 1) in vec2 _p2vs_location1;
layout(location = 0) smooth out vec2 _vs2fs_location0;

void main() {
    VertexInput model = VertexInput(_p2vs_location0, _p2vs_location1);
    VertexOutput out_ = VertexOutput(vec4(0.0), vec2(0.0));
    out_.tex_coords = model.tex_coords;
    out_.clip_position = vec4(model.position, 1.0);
    VertexOutput _e8 = out_;
    gl_Position = _e8.clip_position;
    _vs2fs_location0 = _e8.tex_coords;
    gl_Position.yz = vec2(-gl_Position.y, gl_Position.z * 2.0 - gl_Position.w);
    return;
}

