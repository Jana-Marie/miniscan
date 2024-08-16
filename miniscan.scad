$fn=100;

if($preview){
    translate([0,0, 0])color("LightSteelBlue")bottom();
    translate([0,0,10+5])panel();
    translate([0,0,10+10])color("LightBlue")top();
    translate([0,0,13+15])color("DarkGoldenrod")mm35_bottom();
    translate([0,0,16+20])color("RosyBrown")mm35_top();
    //translate([0,0,15.9])mm35_film();

}else{
    $fn=12;
    mm35_top();
}

module mm35_film(){
    difference(){
        union(){
            color("Sienna")cube([120,35,0.2],center=true);
        }union(){
        
        }
    }
}

module mm35_bottom(){
    difference(){
        union(){
            //body
            translate([0,0,3/2])cube([100,60,3],center=true);
            //screwholes
            for(i=[0:3:3]){
                hull(){
                    for(j=[-1:2:1]){
                        translate([i*31.3333-50+3,j*33,0])cylinder(d=8,h=3);
                    }
                }
            }
        }union(){
            //slide
            translate([0,0,0.3/2+3-0.2])cube([200,35,0.3],center=true);
            translate([0,0,1/2+3-0.9])cube([200,29,1],center=true);
            translate([0,0,3/2])cube([60,29,3],center=true);
            //advance
            for(i=[-1:2:1],j=[-1:2:1]){
                    translate([i*40,1.5+29/2*j+1.5*j,9])rotate([90,0,0])cylinder(d=15,h=3);
                }
            //screwholes
            for(i=[0:3:3]){
                for(j=[-1:2:1]){
                    translate([i*31.3333-50+3,j*33,0])cylinder(d=4.5,h=10);
                }
            }
        }
    }
}

module mm35_top(){
    difference(){
        union(){
            //body
            translate([0,0,3/2])cube([100,60,3],center=true);
            //advance
            for(i=[-1:2:1],j=[-1:2:1]){
                hull(){
                    translate([i*40,1.5+29/2*j+4.5*j,9-3])rotate([90,0,0])cylinder(d=15,h=3);
                    translate([i*40,29/2*j+4.5*j,1/2])cube([15,3,1],center=true);
                }
            }
            //screwholes
            for(i=[0:3:3]){
                hull(){
                    for(j=[-1:2:1]){
                        translate([i*31.3333-50+3,j*33,0])cylinder(d=8,h=3);
                    }
                }
            }
        }union(){
            //viewprt
            translate([0,0,3/2-0.1])cube([60,29,3.4],center=true);
            //cut
            translate([0,0,-20/2-0.1])cube([200,200,20.2],center=true);
            //advance
            for(i=[-1:2:1],j=[-1:2:1]){
                    translate([i*40,1.5+29/2*j+1.5*j,9])rotate([90,0,0])cylinder(d=21,h=3);
                    translate([i*40,4.5+29/2*j+1.5*j,9-3])rotate([90,0,0])cylinder(d=2,h=9);
                }
            //screwholes
            for(i=[0:3:3]){
                for(j=[-1:2:1]){
                    translate([i*31.3333-50+3,j*33,0])cylinder(d=4.5,h=10);
                }
            }
        }
    }
}

/*********************/

module bottom(){
    difference(){
        union(){
            //body
            translate([0,0,10/2])cube([100,60,10],center=true);
            //screwholes
            for(i=[0:1:3]){
                hull(){
                    for(j=[-1:2:1]){
                        translate([i*31.3333-50+3,j*33,0])cylinder(d=8,h=10);
                    }
                }
            }
        }union(){
            //pcb
            translate([-32,0,6/2-0.1])cube([40,29,6],center=true);
            //magnets
            for(i=[-1:1:1],j=[-1:2:1]){
                translate([i*30,j*23,3/2+0.5])cube([12.5,16,3],center=true);
            }
            //screwholes
            for(i=[0:1:3]){
                for(j=[-1:2:1]){
                    translate([i*31.3333-50+3,j*33,0])cylinder(d=3.2,h=10);
                }
            }
        }
    }
}

module top(){
    difference(){
        union(){
            //body
            translate([0,0,3/2])cube([100,60,3],center=true);
            //screwholes
            for(i=[0:1:3]){
                hull(){
                    for(j=[-1:2:1]){
                        translate([i*31.3333-50+3,j*33,0])cylinder(d=8,h=3);
                    }
                }
            }
        }union(){
            // screen
            translate([0,0,1.4/2])cube([96.5,54.6,1.4],center=true);
            translate([0,0,1.1/2])cube([120,30,1.1],center=true);
            translate([1,0,2/2-1])cube([90,50,6],center=true);
            //screwholes
            for(i=[0:1:3]){
                for(j=[-1:2:1]){
                    translate([i*31.3333-50+3,j*33,0])cylinder(d=4.5,h=10);
                }
            }
        }
    }
}

module panel(){
    difference(){
        union(){
            color("darkslategray")translate([0,0,1.1/2])cube([96.5,54.6,1.1],center=true);
            translate([1,0,1.1/2])cube([90,50,1.1],center=true);
        }union(){
        
        }
    }
}
