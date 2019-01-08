echo(version=version());
baseWidth = 17.5;
footWidth = baseWidth +2*2;
vertexWidth = 14;
notchWidth = 7;

bridgeHeight = 3;
armHeight = 16;
armDepth = 1.8;

footHeight = 2;
footDepth = 6.8;

armPoints = [
    [0,0], [baseWidth/2, 0],
    [vertexWidth/2, armHeight], [notchWidth/2, armHeight],
    [notchWidth/2, bridgeHeight], [0, bridgeHeight]
];

footPoints = [
    [0, 0], [footWidth/2, 0],
    [footWidth/2-1, footHeight], [0, footHeight]
];


color("red")
union() {
  linear_extrude(height = armDepth) {
   polygon(points=armPoints);
   mirror() polygon(points=armPoints);
  }
  linear_extrude(height = footDepth) {
   polygon(points=footPoints);
   mirror() polygon(points=footPoints);
  }
 }
