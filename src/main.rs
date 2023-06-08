use shader_learning::run;

fn main() {
    pollster::block_on(run());
}
// fn assign<T>(input: &mut T, val: T) {
//
//     *input = val;
// }
//
// fn main() {
//     let mut hello: &'static str = "hello";
//     {
//         let world = String::from("world");
//         assign(&mut hello, &world);
//     }
//     println!("{hello}"); // use after free 😿
// }
