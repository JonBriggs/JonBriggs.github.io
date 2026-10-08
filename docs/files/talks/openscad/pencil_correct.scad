//PENCIL
pencil_length = 40;
pencil_radius = 2;

pencil(length=pencil_length,radius=pencil_radius);



 
module pencil_tip(length=10, radius=3){
  hull() {
    rotate([0,90,0]){
    linear_extrude(0.1) {
        circle(r=radius, $fn=6);
    }
    }
    translate([-length,0,0])
    sphere(0.1);    
  }
}

module pencil_body(length=20, radius=3){
    rotate([0,90,0])
        cylinder(h=length,r1=radius,r2=radius, $fn=6);
    }
module eraser(length=5, radius=4) {
    rotate([0,90,0])
      union(){
        cylinder(h=length,r1=radius-0.1,r2=radius-0.1, $fn=60);
        cylinder(h=length / 2,r1=radius,r2=radius, $fn=60);
      }
 }

module pencil(length=10,radius=3){
    
    union(){
    pencil_tip(radius=radius);
    pencil_body(length=length,radius=radius);
    translate([length,0,0])
        eraser(radius=radius);
    }
    }