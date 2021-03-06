def clean_strings_ingredients(text: str) -> str:
    # replace unicode vulgar fractions with decimal representation
    # text = text.replace(' ½', ".5")
    # text = text.replace(' ¼', ".25")
    # text = text.replace(' ¾', ".75")

    # remove checkboxes
    text = text.replace('▢', '')
    # text = text.replace('(', '\\(')
    # text = text.replace(')', '\\)')
    # text = text.replace(',', '\\,')
    text = text.replace(' - ', ' <hyphen> ')
    text = text.replace(' or ', ' <or> ')

    # remove unnecessary whitespace
    text = text.strip()
    text = "<ing> " + text

    # text = "(" + text + ")"

    return text


def clean_strings_instructions(text: str) -> str:
    # replace unicode vulgar fractions with decimal representation
    # text = text.replace(' ½', ".5")
    # text = text.replace(' ¼', ".25")
    # text = text.replace(' ¾', ".75")

    # remove checkboxes
    # text = text.replace('▢', '')
    # text = text.replace('(', '\\(')
    # text = text.replace(')', '\\)')
    # text = text.replace(',', '\\,')
    # text = text.replace(' - ', ' <hyphen> ')
    # text = text.replace(' or ', ' <or> ')
    text = text.replace(':', ' <colon>')
    text = text.replace('.', ' <period>')

    # remove unnecessary whitespace
    text = text.strip()
    # text = "<ing> " + text

    # text = "(" + text + ")"

    return text
