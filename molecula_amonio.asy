import three;
import graph3;
import geometry;
//import solids;
size(400);
// Configuración de la cámara
currentprojection=orthographic(3,2,2,up=Z);
currentlight=light((1,0,1),(-1.5,0,-1));

real r=.5, theta=120pi/180, phi=120pi/180;

real aS=.5;
//draw(Label("$x$",EndPoint),-aS*X--aS*X,black,Arrow3);
//draw(Label("$y$",EndPoint),-aS*Y--aS*Y,black,Arrow3);
draw(Label("\Huge{$z$}",EndPoint),-.5*aS*Z--1.5*aS*Z,black,Arrow3);

// Definición de los átomos
triple N = (0,0,0);
triple H1 = (0,0,.75r);
triple H2 = (r*sin(theta)*cos(phi),r*sin(theta)*sin(phi),r*cos(theta));
triple H3 = (r*sin(theta)*cos(2*phi),r*sin(theta)*sin(2*phi),r*cos(theta));
triple H4 = (r*sin(theta)*cos(3*phi),r*sin(theta)*sin(3*phi),r*cos(theta));

// Dibujar átomos
draw(shift(N)*scale(.15,.15,.15)*unitsphere,material(gray+opacity(1),shininess=0.3));
draw(shift(H1)*scale(.1,.1,.1)*unitsphere,material(cyan,shininess=0.3));
draw(shift(H2)*scale(.1,.1,.1)*unitsphere,material(cyan,shininess=0.3));
draw(shift(H3)*scale(.1,.1,.1)*unitsphere,material(cyan,shininess=0.3));
draw(shift(H4)*scale(.1,.1,.1)*unitsphere,material(cyan,shininess=0.3));

// Dibujar enlaces entre átomos
triple v=O;
real h=.5;

surface cylinder=shift(v)*align(unit(H1))*scale(.1r,.1r,.75h)*unitcylinder;
draw(cylinder,red,render(merge=true));

surface cylinder=shift(v)*align(unit(H2))*scale(.1r,.1r,h)*unitcylinder;
draw(cylinder,red,render(merge=true));

surface cylinder=shift(v)*align(unit(H3))*scale(.1r,.1r,h)*unitcylinder;
draw(cylinder,red,render(merge=true));

surface cylinder=shift(v)*align(unit(H4))*scale(.1r,.1r,h)*unitcylinder;
draw(cylinder,red,render(merge=true));
