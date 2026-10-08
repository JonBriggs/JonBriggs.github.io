
pyramid(2,40,60);
translate([60,0,0])
  pyramid(1,30,70);


module pyramid(stepheight, stairs, stairwidth) {
stairReduction = stairwidth / stairs;
union() {
  for(i=[0:stairs]) {
      translate([0,0,i*stepheight])
        cube([stairwidth - i*stairReduction, stairwidth - i*stairReduction, stepheight], center=true);
  }    
}
};