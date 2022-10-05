## Algorithms Exercise 2 GC Content
promoter_seq = 'TATAATGCTGACTTATAGCGCTATATATATATA'

length = len(promoter_seq)
count = 0

for integer in range (0, length):
    if promoter_seq[integer] == 'G' or promoter_seq[integer] == 'C':
        count += 1
sum = count/length *100
print(sum)
