#! /Users/christinask/Documents/HSCB_projects/IMiD_MoA_Neutropenia_project/Bioinformatic analysis/CCB /Python/Day_4/
# Open and read the sam.file
import gzip
import argparse
parser = argparse.ArgumentParser() # Create a parserparser.add_argument('-o', # Name of option 
parser.add_argument('-i', # Name of option          
                "--input",
                dest='bed_variable', # Variable name to store option (optional)
                help='input file in sam format'
                ) # Help text (optional)
parser.add_argument('-o', # Name of option 
                "--output",
                dest='outfile', # Variable name to store option (optional)
                help='to bed file', # Help text (optional)
                )
parser.add_argument("-p", #add in a number/pad to extend chr start and end
                "--pad",
                default = 0,
                dest ="padding",
                type = int
                )
args = parser.parse_args()

with open (args.bed_variable, mode="r") as test_sam:  # Create file handle  
    with gzip.open (args.outfile, mode="w") as output_bed: #Remove header from SAM file
        for index_sam, line in enumerate(test_sam):
            if not line.startswith("@"):
                line_list = line.split("\t") #line.split is a list now
                chromosome_name = line_list[2]
                if not chromosome_name == "*":
                        chr_start = int(line_list[3]) + args.padding
                        if not chr_start == "0":
                            read = line_list[9]   
                            sequence_length = len(read)
                            chr_end = chr_start + sequence_length + args.padding
                            score = line_list[4]
                            strand = "."
                            if not chr_end < 70:
                               bed_final=("\t".join([chromosome_name, str(chr_start), str(chr_end),str(index_sam), str(score), strand]) + "\n") 
                               bed_final_bytes = bed_final.encode(encoding='utf-8')  #alternatively change mode to "wt"
                               output_bed.write(bed_final_bytes)

#Run from the command line 
# python sam_2.bed.py -i test.sam -o test.bed   
# 
# mv test.bed test.bed.gz  in order to zip the test.bed file
# gunzip test.bed.gz  
# head test.bed
## https://www.digitalocean.com/community/tutorials/python-string-encode-decode
