union(){
    cube([10,10,10], center=true);
    sphere(6.5, $fn=60);
}

color([0.2,1,0])
    translate([0,15,0])
        intersection(){
            cube([10,10,10], center=true);
            sphere(6.5, $fn=60);
    }
    
color([0.2,1,1])
    translate([0,30,0])
        difference(){
            cube([10,10,10], center=true);
            sphere(6.5, $fn=60);
    }
color([1,1,0.2])
    translate([0,45,0])
    difference(){
        sphere(6.5, $fn=60);
        cube([10,10,10], center=true); 
    }

translate([0,0,15]){
    union(){
        cube([10,10,10], center=true);
        translate([5,5,5]){
            cube([10,10,10], center=true);
        }
    }
color([0.2,1,0])
    translate([0,15,0]){
        intersection(){
            cube([10,10,10], center=true);
            translate([5,5,5]){
                cube([10,10,10], center=true);
            }
        }    
    }
    
color([0.2,1,1])    
    translate([0,30,0]){
        difference(){
            cube([10,10,10], center=true);
            translate([5,5,5]){
                cube([10,10,10], center=true);
            }
        }    
    }
    
color([1,1,0.2])    
    translate([0,45,0]){
        difference(){
            translate([5,5,5]){
                cube([10,10,10], center=true);
            }
            cube([10,10,10], center=true);
        }    
    }
}