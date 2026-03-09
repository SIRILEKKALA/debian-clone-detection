import re

def extract_removed_lines(patch_file):
    removed_lines = []

    with open(patch_file, "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            # skip patch metadata
            if line.startswith("---") or line.startswith("+++") or line.startswith("@@"):
                continue

            # capture removed lines
            if line.startswith("-"):
                code = line[1:].strip()

                # ignore empty lines
                if code:
                    removed_lines.append(code)

    return removed_lines


def generate_regex_patterns(lines):
    patterns = []

    for line in lines:
        # escape special regex characters
        escaped = re.escape(line)

        # allow flexible whitespace
        pattern = re.sub(r"\s+", r"\\s+", escaped)

        patterns.append(pattern)

    return patterns


if __name__ == "__main__":

    patch_file = "example_patch.diff"

    removed = extract_removed_lines(patch_file)

    print("Removed vulnerable lines:\n")

    for r in removed:
        print(r)

    print("\nGenerated regex patterns:\n")

    patterns = generate_regex_patterns(removed)

    for p in patterns:
        print(p)
