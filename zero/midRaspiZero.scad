
$fn = 100;

use <include/PiZero.scad>

totalWidth = 40;
totalLength = 70;
baseHeight = 3;

cotoutWidth = 20;

cameraWidth = 32;
cameraCutoutTolerance = 0.4;
cameraHoleWidth = cameraWidth + cameraCutoutTolerance;

totalHeight = 8;

difference(){
    union(){
            
        cube([ totalWidth, totalLength, totalHeight]);
        cube([ totalWidth, 6, totalHeight]);
        
        cube([ totalWidth, totalLength + 1, totalHeight]);
        
        translate([ 0, -3, 0])
        cube([ 6.5, 3, totalHeight]);
        
        translate([ 33.75, -3, 0])
        cube([ 5, 3, totalHeight]);

        translate([ 0, -3, 0])
        cube([4.95, 9, totalHeight]);

        translate([ 35.05, -3, 0])
        cube([4.95, 9, totalHeight]);

        translate([ 15 + 20, 6, 0])
        cube([ 5, totalLength - 5, baseHeight]);

        translate([ 0, 6, 0])
        cube([ 5, totalLength - 5, baseHeight]);

        translate([ 0, totalLength - 3, 0])
        cube([ totalWidth, 4, baseHeight]);
        
        translate([ 20, -3, 0])
        scale([ 1, 0.5, 1])

        difference(){
            
            intersection(){
                translate([ -20, -40, 0])
                cube([ 40, 40, totalHeight]);
                cylinder( h = 10, d = 40); 
            };
            
            translate([ -13.5, -4, -1])
            cube([ 27.25, 5, totalHeight + 2]);
        };
    };
    
    
    
    translate([ 5, totalLength - 4, 0.5 * baseHeight + 0.01 + totalHeight - baseHeight])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
    
    translate([ 5, totalLength - 4, -0.01])
    cylinder( h = baseHeight + 0.02 + 9, d = 3.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 4, 0.5 * baseHeight + 0.01 + totalHeight - baseHeight])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 4, -0.01])
    cylinder( h = baseHeight + 0.02 + 10, d = 3.5);
    
    //
    
    translate([ 5, totalLength - 45, 0.5 * baseHeight + 0.01])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
    
    translate([ 5, totalLength - 45, -0.01])
    cylinder( h = baseHeight + 0.02, d = 3.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 45, baseHeight + 0.01 - 1.5])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 45, -0.01])
    cylinder( h = baseHeight + 0.02, d = 3.5);
       
    translate([ 0.5 * totalWidth, -8, 0.5 * baseHeight + 0.01 + totalHeight - baseHeight])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
       
    translate([ 0.5 * totalWidth, -8, -0.01])
    cylinder( h = baseHeight + 0.02 + 20, d = 3.5);
    
    //translate([ 9, 2 + 1.5 - 5, -0.01])
    //cube([ 22, 2.5, baseHeight + 0.02]);
    
    translate([ 20, 31.5, totalHeight - 0.1])
    rotate([ 0, 180, 90])
    union(){
        resize([ 65.4, 30.4, 0])
        PiZeroBody();
    }
    
    translate([ 20, 31.5, totalHeight + 0.1])
    rotate([ 0, 180, 90])
    union(){
        resize([ 65.4, 30.4, 0])
        PiZeroBody();
    }

    translate([ 9, -1, baseHeight])
    cube([ totalWidth - 15 - 3, totalLength - 6, 11]);
    
    //translate([ 7.5 + 10, 2.5, baseHeight])
    //cube([ totalWidth - 15, 57.5, 11]);
    
    translate([ 2, 20, baseHeight])
    cube([ totalWidth - 15, 10, 11]);
    
    translate([ -0.1, 20 - 2 - 5 - 5 - 1 - 2.5 - 0.5, baseHeight + 3.05 - 1.5 + 1.75 ])
    cube([ totalWidth - 15, 12.5, 11]);
    
    translate([ 13, 20, baseHeight])
    cube([ totalWidth - 15, 10, 11]);
    
    translate([ 9, 58, baseHeight])
    cube([ 22, 10, 11]);
    
    //translate([ 31, 2.5, 1.5])
    //cube([ 10, 28, 2]);
};