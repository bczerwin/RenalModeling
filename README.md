# RenalModeling

-------------------HumanRenalModel-------------------
This includes all the files necessary to simulate GFR (glomerular filtration rate) and UO (urine output rate) for a human kidney based on the scaling of several parameters.

Scripts beginning with 'ex_' are example simulations that can be done with this code.

An implementation of this code can be seen here:
https://ieeexplore.ieee.org/document/9250502

Feel free to contact me:
bjc2157@columbia.edu

Nomenclature----------
Inputs and Outputs...
MAP - Mean arterial pressure [mmHg]
Na - Blood sodium levels [mmol]
GFR - Glomerular filtration rate [mL/min]
UO - Urine output rate [mL/min]

Nodes...
B - Bowman's space
P - Proximal tubule
N - Thin descending limb of Henle
K - Thick ascending limb of Henle
D - Distal tubule
A - Afferent arteriole
G - Glomerulus
E - Efferent arteriole
R - Renal vein
V - Venous blood
U - Ureters

Variables...
P_X - Fluid pressure at node X [mmHg]
Q_XY - Fluid flow between nodes X and Y [mL/s]
C_X - Sodium concentration at node X [mmol]
J_XY - Sodium flow between nodes X and Y [mmol/s]

Parameters...
Rh_XY - Hydraulic resistance between nodes X and Y
rhX - Fluid reabsorption function/fraction at node X
rsX - Sodium reabsorption function/fraction at node X
fb - Feedback modulation gains
ScalFac - number of nephrons (n)
