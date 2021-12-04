from bs4 import BeautifulSoup
from writeUrlToFile import *


def main():
    with open("pot_roast.html") as f:
        contents = f.read()
        soup = BeautifulSoup(contents, "html.parser")
        ingredients = soup.find_all("li", class_="wprm-recipe-ingredient")
        for ingredient in ingredients:
            # convert unicode vulgar fractions into floating point numbers
            print(clean_strings(ingredient.text))

        instructions = soup.find_all("li", class_="wprm-recipe-instruction")
        for instruction in instructions:
            print(instruction.text)


def clean_strings(text: str) -> str:
    # replace unicode vulgar fractions with decimal representation
    text = text.replace(' ½', ".5")
    text = text.replace(' ¼', ".25")
    text = text.replace(' ¾', ".75")

    # remove checkboxes
    text = text.replace('▢', '')

    # remove unnecessary whitespace
    text = text.strip()

    return text


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    main()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
