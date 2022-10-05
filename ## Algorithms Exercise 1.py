## Algorithms Exercise 1
promoter_seq = 'TATAATGCTGACTTATAGCGCTATATATATATA'
motif_seq = 'TATA'

position = 0
number = 0
length = len(promoter_seq)

for base in range (0, length-3):
    if promoter_seq[base:base+4] == motif_seq:
        print(base+1, base+4)
        number += 1
print(number)
        
