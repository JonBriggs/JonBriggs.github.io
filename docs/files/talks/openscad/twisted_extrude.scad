
//linear_extrude(height = fanwidth, center = true, convexity = 10, twist = -fanrot, slices = 20, scale = 1.0)
linear_extrude(height = 30, center=false, twist=360, slices=100, convexity=10)
   square([2,10], center=true);