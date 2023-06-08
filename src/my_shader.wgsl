struct VertexOutput {
    @location(0) frag_color: vec3<f32>,
    @builtin(position) member: vec4<f32>,
}

var<private> frag_color: vec3<f32>;
var<private> gl_Position: vec4<f32>;
var<private> gl_VertexIndex: u32;

fn main_1() {
    var pos: array<vec2<f32>,3u>;

    pos = array<vec2<f32>,3u>(vec2<f32>(-(0.699999988079071), 0.699999988079071), vec2<f32>(0.699999988079071, 0.699999988079071), vec2<f32>(0.0, -(0.699999988079071)));
    let _e16 = gl_VertexIndex;
    let _e19 = pos[u32(_e16)];
    gl_Position = vec4<f32>(_e19.x, _e19.y, 0.0, 1.0);
    frag_color = vec3<f32>(1.0, 1.0, 0.0);
    return;
}

@vertex 
fn main(@builtin(vertex_index) param: u32) -> VertexOutput {
    gl_VertexIndex = param;
    main_1();
    let _e5 = frag_color;
    let _e7 = gl_Position;
    return VertexOutput(_e5, _e7);
}
 