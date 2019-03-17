%% DESCRIPTION OF THE PROBLEM
%In an attempt to reduce the stresses in the UHMWPE component, a 2 mm thick metal backing
%was added to the UHMWPE component. The height of the plastic component is reduced to 8
%mm such that the total height stays constant at 10 mm. Assume the loading scenario where the
%load is applied as a single point load at 12.5 mm from the medial side. Take ECoCr = 210 GPa.
%Determine the maximum stress in the metal part as well as in the UHMWPE part.

%% SOLUTION
%calculate the maximum stress in the metal part and in the UHMWPE part 

h_zero=30;
h_uhmwpe=8; % in mm
h_metal=2;
w=5; % in mm
L=50; % in mm
E_f=800;%modulus of the foundation in Mpa
E_b_metal=210000; % modulus of the metal part of the beam in Mpa
E_b_uhmwpe=1720; % modulus of the plastic part of the beam in Mpa
t=h_zero/2; %in mm
p=1000; % in N
k=0;
I_metal=0;
I_uhmwpe=0;
landa_metal=0;
landa_uhmwpe=0;
M_metal=0;
M_uhmwpe=0;
sigma_metal=0;
sigma_uhmwpe=0;
xinterval=[0 50];
a=12.5;
b=37.5;

%calculate the stress for metal part
k=((E_f)*(w))/h_zero;
I_metal=(w*(h^(3)))/12;
landa_metal=(k/(4*(E_b_metal)*(I_metal)))^(1/4);



