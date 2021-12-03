struct FragmentOutput {
    [[location(0)]] fColor: vec4<f32>;
};

var<private> fColor: vec4<f32>;

fn main1() {
    fColor = vec4<f32>(f32(1));
    return;
}

[[stage(fragment)]]
fn main() -> FragmentOutput {
    main1();
    let e3: vec4<f32> = fColor;
    return FragmentOutput(e3);
}
