$fn = 100;

use <include/prism.scad>

totalWidth = 40;
totalLength = 70;
baseHeight = 5;

cotoutWidth = 20;

cameraWidth = 32;
cameraCutoutTolerance = 0.4;
cameraHoleWidth = cameraWidth + cameraCutoutTolerance;

difference(){
    
    union(){
        
        cube([ totalWidth, totalLength, baseHeight]);
        cube([ totalWidth, 6, 12]);
        
        translate([ 0, -3, 0])
        cube([ totalWidth, 3, 12]);

        translate([ 0, -3, 0])
        cube([4.95, 9, 32.1 + baseHeight]);

        translate([ 35.05, -3, 0])
        cube([4.95, 9, 32.1 + baseHeight]);

        translate([ 10, 11 + 7, 0])
        rotate([ 0, 0, 180])
        prism( 10, 12, 12);

        translate([ 15 + 25, 11 + 7, 0])
        rotate([ 0, 0, 180])
        prism( 10, 12, 12);

        translate([ 15 + 20, 6, 0])
        cube([ 5, totalLength - 5, 32.1 + baseHeight]);

        translate([ 0, 6, 0])
        cube([ 5, totalLength - 5, 32.1 + baseHeight]);
    
        translate([ 0, totalLength - 3, 0])
        cube([ totalWidth, 4, 32.1 + baseHeight]);
    
        translate([ 5, totalLength - 4, baseHeight])
        cylinder( h = 32.1, d = 9);
    
        translate([ totalWidth - 5, totalLength - 4, baseHeight])
        cylinder( h = 32.1, d = 9);
    
        translate([ 5, totalLength - 45, baseHeight])
        cylinder( h = 32.1, d = 9);
    
        translate([ totalWidth - 5, totalLength - 45, baseHeight])
        cylinder( h = 32.1, d = 9);

        difference(){

            translate([ 20, -3, 0])
            scale([ 1, 0.5, 1])

            intersection(){
                translate([ -20, -40, 0])
                cube([ 40, 40, 32.1 + baseHeight]);
                cylinder( h = 32.1 + baseHeight, d = 40); 
            };
            
            translate([ 0.5 * totalWidth, -8, 5])
            cylinder( h = 50, d = 3.5);
            
            translate([ 0.5 * totalWidth, -5, 34])
            cube([ 5.7, 5.7 + 8 , 3], center = true);
        };
    };
        
    translate([ 0, -5, 0])
    {
        translate([ 3.80, 2, 5])
        cube([ cameraHoleWidth, 1.9, 34]);
        
        translate([ 3.80, 1.01, 5.0])
        prism( cameraHoleWidth, 1, 4);
        
        rotate([ 0, 0, 180])
        translate([ -36.2, -4.89, 5])
        prism( cameraHoleWidth, 1, 4);
            
        translate([ 10, 2, 5])
        cube([ cotoutWidth, cotoutWidth, 21]);
            
        translate([ 5, 0, 12])
        cube([ 30, cotoutWidth, 30]);
    }
        
    translate([ 0.5 * totalWidth - 9.95, 51, 3])
    cube([ 20.1, 15.1, 3]);
        
    rotate([ 90, 0, 0])
    translate([ 0.5 * totalWidth, 21, -totalLength - 10])
    cylinder( h = 20, d = 15);
    
    translate([ 0.5 * totalWidth - 7.5, totalLength - 5, 21])
    cube([ 15, 10, 20]);
    
    translate([ 5, totalLength - 4, 5])
    cylinder( h = 50, d = 3.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 4, 5])
    cylinder( h = 50, d = 3.5);
    
    translate([ totalWidth - 10 + 0.7 + 0.9, totalLength - 8 + 0.9, 34 + 0])
    rotate([ 0, 0, 45])
    cube([ 5.7 + 10, 5.7, 3], center = true);
    
    translate([ 10 - 0.7 - 0.9, totalLength - 8 + 0.9, 34])
    rotate([ 0, 0, -45])
    cube([ 5.7 + 10, 5.7, 3], center = true);
    
    //
    
    translate([ 5, totalLength - 45, 5])
    cylinder( h = 50, d = 3.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 45, 5])
    cylinder( h = 50, d = 3.5);
    
    translate([ totalWidth - 10 + 0.7, totalLength - 45, 34])
    cube([ 5.7 + 10, 5.7, 3], center = true);
    
    translate([ 10 - 0.7, totalLength - 45, 34])
    cube([ 5.7 + 10, 5.7, 3], center = true);
};