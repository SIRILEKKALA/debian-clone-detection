import re

def extract_removed_lines(patch_file):
    removed = []

    with open(patch_file, "r") as f:
        for line in f:
            if line.startswith("-") and not line.startswith("---"):
                removed.append(line[1:].strip())

    return removed


def generate_regex(lines):
    patterns = []
    for l in lines:
        pattern = re.escape(l)
        patterns.append(pattern)

    return patterns


if __name__ == "__main__":
    patch = "example_patch.diff"

    removed = extract_removed_lines(patch)

    print("Removed lines:")
    for r in removed:
        print(r)

    print("\nGenerated regex patterns:")
    for p in generate_regex(removed):
        print(p)
