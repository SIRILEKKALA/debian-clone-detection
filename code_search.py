import urllib.parse

def search_code(pattern):

    encoded = urllib.parse.quote(pattern)

    url = f"https://codesearch.debian.net/search?q={encoded}"

    print("\nSearch Debian source for possible clones:")
    print(url)
