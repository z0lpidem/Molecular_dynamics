#Created by z0lpidem. Contact: lucas.adriano.nascimento@gmail.com
#This script was created to help with searching for specific atoms in CMS files for mass centre distance calculations.

#CRD4 MBS
#Residues: Glu743-OE1, Asn745-OD1, Glu751-OE1, Asn765-OD1, Asn765-OE1, Asp766-O, Asp766-OE1 + Ca I (Ca800)

MainCa=$(grep -E "CA  " 2cho_merged-out.cms | cut -c3-6 | head -n1)
#This searches for all lines containing "CA  ", which is the name Calcium ions are given;
#it also cuts down the line to the first four characteres, which are its atomic number on the CMS file
atomnum1="atom.num $MainCa" #This variable will print the atomic number found right now in the ASL format

Glu743=$(grep -E "743 E" 2cho_merged-out.cms | grep -E OE1 | cut -c3-6 | head -n1)
atomnum2="atom.num $Glu743"
eval "$SCHRODINGER/run trj_asl_distance.py "2cho_merged-out.cms" "2cho_merged_trj/" -asl1 \"$atomnum1\" -asl2 \"$atomnum2\" -com > 2cho_Glu743_MainCa.tsv"

Asn745=$(grep -E "745 N" 2cho_merged-out.cms | grep -E OD1 | cut -c3-6 | head -n1)
atomnum2="atom.num $Asn745"
eval "$SCHRODINGER/run trj_asl_distance.py "2cho_merged-out.cms" "2cho_merged_trj/" -asl1 \"$atomnum1\" -asl2 \"$atomnum2\" -com > 2cho_Asp745_MainCa.tsv"

Glu751=$(grep -E "751 E" 2cho_merged-out.cms | grep -E OE1 | cut -c3-6 | head -n1)
atomnum2="atom.num $Glu751"
eval "$SCHRODINGER/run trj_asl_distance.py "2cho_merged-out.cms" "2cho_merged_trj/" -asl1 \"$atomnum1\" -asl2 \"$atomnum2\" -com > 2cho_Glu751_MainCa.tsv"

Asn765=$(grep -E "765 N" 2cho_merged-out.cms | grep -E OD1 | cut -c3-6 | head -n1)
atomnum2="atom.num $Asn765"
eval "$SCHRODINGER/run trj_asl_distance.py "2cho_merged-out.cms" "2cho_merged_trj/" -asl1 \"$atomnum1\" -asl2 \"$atomnum2\" -com > 2cho_Asn765_MainCa.tsv"

Asn765=$(grep -E "765 N" 2cho_merged-out.cms | grep -E O | cut -c3-6 | head -n1)
atomnum2="atom.num $Asn765"
eval "$SCHRODINGER/run trj_asl_distance.py "2cho_merged-out.cms" "2cho_merged_trj/" -asl1 \"$atomnum1\" -asl2 \"$atomnum2\" -com > 2cho_Asn765_BB_MainCa.tsv"

Asp766=$(grep -E "766 D" 2cho_merged-out.cms | grep -E O | cut -c3-6 | head -n1)
atomnum2="atom.num $Asp766"
eval "$SCHRODINGER/run trj_asl_distance.py "2cho_merged-out.cms" "2cho_merged_trj/" -asl1 \"$atomnum1\" -asl2 \"$atomnum2\" -com > 2cho_Asp766_BB_MainCa.tsv"

Asp766=$(grep -E "766 D" 2cho_merged-out.cms | grep -E OD1 | cut -c3-6 | head -n1)
atomnum2="atom.num $Asp766"
eval "$SCHRODINGER/run trj_asl_distance.py "2cho_merged-out.cms" "2cho_merged_trj/" -asl1 \"$atomnum1\" -asl2 \"$atomnum2\" -com > 2cho_Asp766_MainCa.tsv"




