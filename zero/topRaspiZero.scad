
$fn = 100;

totalWidth = 40;
totalLength = 70;
baseHeight = 6.5;

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
    
    
    
    translate([ 5, totalLength - 4, 0.5 * baseHeight + 0.01])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
    
    translate([ 5, totalLength - 4, -0.01])
    cylinder( h = baseHeight + 0.02, d = 3.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 4, 0.5 * baseHeight + 0.01])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
    
    translate([ 1 * totalWidth - 5, totalLength - 4, -0.01])
    cylinder( h = baseHeight + 0.02, d = 3.5);
       
    translate([ 0.5 * totalWidth, -8, 0.5 * baseHeight + 0.01])
    cylinder( h = 0.5 * baseHeight, d1 = 3.5, d2 = 5.5);
       
    translate([ 0.5 * totalWidth, -8, -0.01])
    cylinder( h = baseHeight + 0.02, d = 3.5);
    
    translate([ 6, 4 + 1.5, -0.01])
    cube([ 28, 52.0, baseHeight + 0.02]);
    
    translate([ -0.1, 20 - 2 - 5 - 5 - 1 - 2.5 - 0.5, -0.1])
    cube([ 6.11, 12.5, 3.6 + 1.75]);
    
    difference(){
        
        translate([ 3, -5, -0.1])
        cube([ totalWidth - 6, totalLength + 3, 3.5]);
        
        translate([ 0, totalLength - 7, 0])
        cube([ 8, 8, 4]);
        
        translate([ totalWidth - 8, totalLength - 7, 0])
        cube([ 8, 8, 4]);
        
        translate([ totalWidth - 9, -6, 0])
        cube([ 8, 10, 4]);
        
        translate([ 1, -6, 0])
        cube([ 8, 10, 4]);
    }
};
        
        