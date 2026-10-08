
pencil(length=10,eraserl=5,tipl=4);

module pencil(length=8,eraserl=3,tipl=4){
    union(){
        pencil_eraser(length=eraserl);
        pencil_shaft(length=length);
        pencil_tip(length=tipl);
        }
    
    }

module pencil_eraser(length=4){
    
    }
module pencil_shaft(length=4){
    linear_extrude(height=100){
        circle(r=5, $fn=6);
    }
    }
module pencil_tip(length=4){
    
    }

//Simple Pencil
//translate([0,0,100]){
//  cylinder(10,5,5);
//}
//hull(){
//  linear_extrude(h=20){
//    circle(r=5, $fn=6);
//  }
//  translate([0,0,-10]){
//    sphere(r=0.3);
//  }
//}