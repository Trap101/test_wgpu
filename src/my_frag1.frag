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
uniform highp sampler2D _group_0_binding_0_fs;

layout(location = 0) smooth in vec2 _vs2fs_location0;
layout(location = 0) out vec4 _fs2p_location0;

void main() {
    VertexOutput in_ = VertexOutput(gl_FragCoord, _vs2fs_location0);
    vec4 _e4 = texture(_group_0_binding_0_fs, vec2(in_.tex_coords));
    _fs2p_location0 = _e4;
    return;
}

