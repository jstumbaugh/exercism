def to_rna(dna_strand):
    return "".join(map(complement, list(dna_strand)))

def complement(letter):
    if letter == "G":
        return "C"
    elif letter == "C":
        return "G"
    elif letter == "T":
        return "A"
    elif letter == "A":
        return "U"
