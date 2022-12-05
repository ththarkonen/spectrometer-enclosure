
$fn = 100;

difference(){

    union(){
        
        cube([ 20, 34, 15]);
        
        translate([ 2.75, 17.9, 15])
        cube([ 14.7, 16.1, 4.2]);
    };
    
    translate([ 10, 17.9, -1])
    cylinder( h = 22, d = 12.65);
    
    translate([ 10, 17.9, -0.01])
    cylinder( h = 1, d1 = 15, d2 = 12.65);
    
    translate([ 10, 17.9, 14.01])
    cylinder( h = 1, d1 = 12.65, d2 = 15);
    
    translate([ 10, 17.9, 15])
    cylinder( h = 20, d = 15);
};