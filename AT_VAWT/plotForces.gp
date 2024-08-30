set style data lines
set zeroaxis
set xrange [0.005: ]

width=0.01

TSR=0.02

cT = 1.0 / ( pi/TSR )
cF = 1.0 / (0.5*1.0*(1*1)*width)
cM = 1.0 / (0.5*1.0*(1*1)*0.5*width)

convT(x) = (x*cT)
convF(x) = (x*cF)
convM(x) = (x*cM)

set xlabel "Time [T]"
set ylabel "Aerodynamic coeff [-]"

plot "blade0.dat" u (convT($1)):(convF($2)) t "Fpx blade0"
pause -1

plot "blade0.dat" u (convT($1)):(convF($3)) t "Fpy blade0"
pause -1

# plot "blade0.dat" u (convT($1)):(convF($4)) t "Fpz blade0"
# pause -1

# plot "blade0.dat" u (convT($1)):(convF($5)) t "Fvx blade0"
# pause -1

# plot "blade0.dat" u (convT($1)):(convF($6)) t "Fvy blade0"
# pause -1

# plot "blade0.dat" u (convT($1)):(convF($7)) t "Fvz blade0"
# pause -1


# plot "blade0.dat" u (convT($1)):(convM($8)) t "Mpx blade0"
# pause -1

# plot "blade0.dat" u (convT($1)):(convM($9)) t "Mpy blade0"
# pause -1

plot "blade0.dat" u (convT($1)):(convM($10)) t "Mpz blade0"
pause -1

# plot "blade0.dat" u (convT($1)):(convM($11)) t "Mvx blade0"
# pause -1

# plot "blade0.dat" u (convT($1)):(convM($12)) t "Mvy blade0"
# pause -1

# plot "blade0.dat" u (convT($1)):(convM($13)) t "Mvz blade0"
# pause -1

plot "rotor.dat" u (convT($1)):(convF($2)) t "Fpx rotor"
pause -1

plot "rotor.dat" u (convT($1)):(convM($9)) t "Mpy rotor"
pause -1

plot "rotor.dat" u (convT($1)):(convM($10)) t "Mpz rotor"
pause -1

plot "rotor.dat" u (convT($1)):(convM($13)) t "Mvz rotor"
pause -1



# set term emf enh "Times-NewRoman" 24
# set output "tmp1.emf"
# rep
# set term x11
# pause -1
