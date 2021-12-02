import requests


def write_url_to_file(url: str, file_name: str):
    page = requests.get(url)
    f = open(file_name, "w")
    f.write(page.text)
    f.close()
