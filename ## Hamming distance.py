## Algorithms Exercise 3 Hamming distance

sequence_1 = 'GAGCCTACTAACGGGAT'
sequence_2 = 'CATCGTAATGACGGCCT'

position = 0
length = len(sequence_1)
count = 0

for integer in range (0, length):
    if sequence_1[integer] == sequence_2[integer]:
        count +=1
sum = count
hamming_distance = length - sum
print(hamming_distance)
