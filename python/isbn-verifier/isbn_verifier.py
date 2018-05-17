def verify(isbn):
    isbn_numbers = list(isbn.replace('-', ''))

    if len(isbn_numbers) != 10: return False

    total = 0
    for index, number in enumerate(isbn_numbers):
        if number.isalpha() and number == 'X' and number == isbn_numbers[-1]:
            number = 10

        elif number.isalpha():
            return False

        total += int(number) * (10 - index)

    return total % 11 == 0
