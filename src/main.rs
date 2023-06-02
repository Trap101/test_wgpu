use shader_learning::run;
trait c{
    fn print(&self);
}
struct a{
    s:String
}
impl c for a{
    fn print(&self) {
        println!("{}",self.s)
    }
} 
fn main(){
    let f=a{s:String::from("bs")};
    c::print(&f);
    println!("helll world");
    pollster::block_on(run());
}