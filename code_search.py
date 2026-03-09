import requests

def search_code(pattern):

    url = "https://codesearch.debian.net/search"

    params = {
        "q": pattern
    }

    response = requests.get(url, params=params)

    if response.status_code == 200:
        print("Search successful\n")
        print(response.text[:1000])  # show first part of results
    else:
        print("Search failed:", response.status_code)


if __name__ == "__main__":

    pattern = "strcpy"

    search_code(pattern)
