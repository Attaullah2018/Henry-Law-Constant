# load "ref0855-79-34-5.gnu"
# chem = "1,1,2,2-tetrachloroethane"

set terminal postscript eps color
set title "ref = 855; chem = 1,1,2,2-tetrachloroethane; casrn = 79-34-5"
set xlabel "temperature [K]"
set ylabel "H [mol*m-3*Pa-1]"
set dummy T

# regresion from table data:
H(T) =   0.1991820E-01 * exp(  -4979.711    *(1/   298.    -1/T))

set label "" at    293.1500    ,   0.2470621E-01 point
set label "" at    303.1500    ,   0.1745802E-01 point
set label "" at    313.1500    ,   0.8309596E-02 point
set label "" at    298.1500    ,   0.1991820E-01 point ps 2 pt 6

plot [290:320] H(T)
