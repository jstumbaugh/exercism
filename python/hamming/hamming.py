def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("Length of input strings are different!")

    dist = 0

    for index, letter in enumerate(strand_a):
        if letter != list(strand_b)[index]:
            dist += 1

    return dist
