def clean_strings(text: str) -> str:
    # replace unicode vulgar fractions with decimal representation
    # text = text.replace(' ½', ".5")
    # text = text.replace(' ¼', ".25")
    # text = text.replace(' ¾', ".75")

    # remove checkboxes
    text = text.replace('▢', '')
    # text = text.replace('(', '\\(')
    # text = text.replace(')', '\\)')
    # text = text.replace(',', '\\,')
    # text = text.replace('-', '\\-')

    # remove unnecessary whitespace
    text = text.strip()

    # text = "(" + text + ")"

    return text
