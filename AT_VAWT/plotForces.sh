cd postProcessing
ls -rt blade0/*/forces.dat | xargs cat | sed -e "s/[(|)]/\ /g" > blade0.dat
ls -rt blade1/*/forces.dat | xargs cat | sed -e "s/[(|)]/\ /g" > blade1.dat
ls -rt blade2/*/forces.dat | xargs cat | sed -e "s/[(|)]/\ /g" > blade2.dat
ls -rt rotor/*/forces.dat  | xargs cat | sed -e "s/[(|)]/\ /g" > rotor.dat
gnuplot ../plotForces.gp
cd ..


