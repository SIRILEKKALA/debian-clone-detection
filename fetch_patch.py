import requests

# Example patch URL (just for testing)
patch_url = "https://sources.debian.org/data/main/o/openssl/1.1.1n-0+deb11u3/debian/patches/CVE-2022-0778.patch"

def download_patch(url):
    response = requests.get(url)

    if response.status_code == 200:
        with open("downloaded_patch.diff", "w") as f:
            f.write(response.text)
        print("Patch downloaded successfully.")
    else:
        print("Failed to download patch.")

if __name__ == "__main__":
    download_patch(patch_url)
