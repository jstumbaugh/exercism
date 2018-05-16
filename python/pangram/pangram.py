import re

def is_pangram(sentence):
    clean_sentence = re.sub("[^a-z]", "", sentence.lower())

    return len(set(clean_sentence)) == 26
