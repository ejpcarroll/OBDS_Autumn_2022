## Consensus Motif

## consensus_sequence = 'CAGATGGC'
## sequence_1 = 'CATATGGG'
## sequence_2 = 'GATCTGGT'
## sequence_3 = 'CATATGAT'
## sequence_4 = 'CTTCCGGC'
## sequence_5 = 'CATGAGGC'
## sequence_6 = 'CATCTCGC'
## sequence_7 = 'CAAATGGC'
## sequence_8 = 'CATATGGC'

position = 0

import copy

## input list of strings
test_sequences = ['CATATGGG', 'GATCTGGT', 'CATATGAT', 'CTTCCGGC', 'CATGAGGC', 'CATCTCGC', 'CAAATGGC', 'CATATGGC']

## create a dictionary
motif_profile = {}
for position in range (0, length(test_sequences[0])):
    base_counts = {'A':0, 'T':0, 'G':0, 'C':0}
    for idx, motif in enumerate(test_sequences):
        base = motif[position]
        if  base == 'A':
            base_counts['A'] +=1
        base = motif[position]
        if  base == 'T':
            base_counts['T'] +=1  
        base = motif[position]
        if  base == 'G':
            base_counts['G'] +=1  
       base = motif[position]
        if  base == 'C':
            base_counts['C'] +=1
    motif_profile[pos] = copy.deepcopy(base_counts)

print(motif_profile)

## create consensus sequene

consensus_sequence = []

for pos in motif_profil.values():
    max_count = max(pos.values())
    for base, value in pos.items():
        if value == max_count:
            consensus_sequence.append(base)

print(consensus_sequence)
print(''.join(consensus_sequence))
