
$fn = 100;

use <prism.scad>

totalWidth = 40;
totalLength = 70;
baseHeight = 3;

cotoutWidth = 20;

cameraWidth = 32;
cameraCutoutTolerance = 0.4;
cameraHoleWidth = cameraWidth + cameraCutoutTolerance;

difference(){
    union(){
            
        cube([ totalWidth, totalLength, baseHeight]);
        cube([ totalWidth, 6, baseHeight]);
        
        translate([ 0, -3, 0])
        cube([ totalWidth, 3, baseHeight]);

        translate([ 0, -3, 0])
        cube([4.95, 9, baseHeight]);

        translate([ 35.05, -3, 0])
        cube([4.95, 9, baseHeight]);

        translate([ 15 + 20, 6, 0])
        cube([ 5, totalLength - 5, baseHeight]);

        translate([ 0, 6, 0])
        cube([ 5, totalLength - 5, baseHeight]);

        translate([ 0, totalLength - 3, 0])
        cube([ totalWidth, 4, baseHeight]);
        
        translate([ 20, -3, 0])
        scale([ 1, 0.5, 1])

        intersection(){
            translate([ -20, -40, 0])
            cube([ 40, 40, baseHeight]);
            cylinder( h = baseHeight, d = 40); 
        };
    };
    
    
    
    translate([ 5, totalLength - 11, 0.5 * baseHeight + 0.01])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
    
    translate([ 5, totalLength - 11, -0.01])
    cylinder( h = baseHeight + 0.02, d = 3.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 11, 0.5 * baseHeight + 0.01])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 11, -0.01])
    cylinder( h = baseHeight + 0.02, d = 3.5);
       
    translate([ 0.5 * totalWidth, -8, 0.5 * baseHeight + 0.01])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
       
    translate([ 0.5 * totalWidth, -8, -0.01])
    cylinder( h = baseHeight + 0.02, d = 3.5);
    
    translate([ 9, 2 + 1.5, -0.01])
    cube([ 22, 2.5, baseHeight + 0.02]);
};