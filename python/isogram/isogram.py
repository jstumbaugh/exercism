def is_isogram(string):
    test_string = string.replace("-", "").replace(" ", "").lower()
    return len(test_string) == len(set(test_string))
