#!/usr/bin/bash 
DIRS="
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/lower_volumes_form_EOS_0.87_0.98_V_eq/127.054446/SCELPHONO_4_4_4/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/V_125_884132/SCELPHONO_4_4_4/SHRINK_1_1/2016/TEMPERAT/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/V_128_656314/SCELPHONO_4_4_4/SHRINK_1_1/2016/TEMPERAT/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/V_127_265886/SCELPHONO_4_4_4/SHRINK_1_1/2016/TEMPERAT/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/V_131_463313/SCELPHONO_4_4_4/SHRINK_1_1/2016/TEMPERAT/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/V_130_054927/SCELPHONO_4_4_4/SHRINK_1_1/2016/TEMPERAT/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/V_134_309582/SCELPHONO_4_4_4/SHRINK_1_1/2016/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/V_132_880152/SCELPHONO_4_4_4/SHRINK_1_1/2016/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/V_135_750582/SCELPHONO_4_4_4/SHRINK_1_1/2016/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/V_137_200672/SCELPHONO_4_4_4/SHRINK_1_1/2016/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/lower_volumes_form_EOS_0.87_0.98_V_eq/116.573346/SCELPHONO_4_4_4_archer_MPP/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/lower_volumes_form_EOS_0.87_0.98_V_eq/118.139505/SCELPHONO_4_4_4/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/lower_volumes_form_EOS_0.87_0.98_V_eq/119.713653/SCELPHONO_4_4_4/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/lower_volumes_form_EOS_0.87_0.98_V_eq/121.297131/SCELPHONO_4_4_4/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/lower_volumes_form_EOS_0.87_0.98_V_eq/122.894958/SCELPHONO_4_4_4/PDOS  
/work/dcarrasc/BS-A/structures_CRY14/Calcite_I/DISPERSI/lower_volumes_form_EOS_0.87_0.98_V_eq/124.510211/SCELPHONO_4_4_4/PDOS"

Scriptdir=`pwd`

for i in ${DIRS}; do
echo "###"
cd  $i
rm -Rf INTERPHESS_444_1
mkdir INTERPHESS_444_1
cp * ./INTERPHESS_444_1
cd INTERPHESS_444_1
echo cd `pwd`
sed -i '/RESTART/ {N;s/RESTART/RESTART\nINTERPHESS\n4 4 4\n1/}' *PDOS.d12 
rm -Rf *PDOS.out
RESTART_INPUT=`basename *PDOS.d12 .d12`
INPUT=`basename *PDOS.d12 _PDOS.d12` 
echo /home/gmallia/CRYSTAL17_cx1/v1/runcryMPP $RESTART_INPUT $INPUT
cd $Scriptdir
done









