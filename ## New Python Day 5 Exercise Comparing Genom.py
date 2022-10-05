## Python Day 5 Exercise Comparing Genomic Intervals

#! cd '/Users/emilycarroll/Documents/University/Oxford/OBDS training programme/Python/Exercise files/Day 5/'


# Open and read the .bed files
with open("brain_dnase1_chr21.bed", mode ="r") as bed_brain:
    print("This is the brain_file:\n")

    with open('gut_dnase1_chr21.bed', mode ="r") as bed_gut:
        print("This is the gut_file:\n")


# defining rules for overlap
# either B (brain) start must be within region of A (gut)
# or A (gut) start must be be within region of B (brain)

start_b = bed_file_gut[1]
end_b = bed_file_gut[2]
start_a = bed_file_brain_list[1]
end_a = bed_file_gut[2]
chr_a = bed_file_brain_list[0]
chr_b = bed_file_gut_list[0]
        
with open("overlap.txt", mode:"wt") as overlap_bed:
    for chr_a == chr_b:
        if (start_b >= start_a and start_b <= end_a) or (start_a >= start_b and start_a <= end_b):
            # 
             overlap_bed.write()