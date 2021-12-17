from bs4 import BeautifulSoup
from util import *


def main():
    with open("pot_roast.html") as f:
        contents = f.read()
        soup = BeautifulSoup(contents, "html.parser")
        ingredients = soup.find_all("li", class_="wprm-recipe-ingredient")
        for ingredient in ingredients:
            print(clean_strings_ingredients(ingredient.text))
            #print(ingredient.text)


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    main()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
