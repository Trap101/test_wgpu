struct FragmentOutput {
    @location(2) outColor: vec4<f32>,
}

var<private> frag_color_1: vec3<f32>;
var<private> outColor: vec4<f32>;

fn main_1() {
    let _e2 = frag_color_1;
    outColor = vec4<f32>(_e2.x, _e2.y, _e2.z, 1.0);
    return;
}

@fragment 
fn main(@location(0) frag_color: vec3<f32>) -> FragmentOutput {
    frag_color_1 = frag_color;
    main_1();
    let _e7 = outColor;
    return FragmentOutput(_e7);
}
