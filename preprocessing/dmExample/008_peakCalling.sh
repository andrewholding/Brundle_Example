### MACS peak caller

### Run macs on the blacklisted data
mkdir ./peaks
cd peaks
control=../blacklist_filtered/SLX-8047.D705_D507.C81G5ANXX.s_1.r_1.fq.bam

for bam in ../blacklist_filtered/*bam
do
root=`basename $bam .bam`
macs2 callpeak -t $bam -c $control -f BAM -n $root -g hs
done




