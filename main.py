from bs4 import BeautifulSoup
from writeUrlToFile import *


def main():
    with open("pot_roast.html") as f:
        contents = f.read()
        soup = BeautifulSoup(contents, "html.parser")
        ingredients = soup.find_all("li", class_="wprm-recipe-ingredient")
        for ingredient in ingredients:
            print(ingredient.text)

        instructions = soup.find_all("li", class_="wprm-recipe-instruction")
        for instruction in instructions:
            print(instruction.text)


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    main()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
