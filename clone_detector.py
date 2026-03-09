import patch_parser
import code_search

PATCH_FILE = "example_patch.diff"

# Step 1: extract lines
removed_lines = patch_parser.extract_removed_lines(PATCH_FILE)

print("\nExtracted vulnerable lines:\n")

for line in removed_lines:
    print(line)

# Step 2: generate regex patterns
patterns = patch_parser.generate_regex_patterns(removed_lines)

print("\nGenerated regex patterns:\n")

for p in patterns:
    print(p)

print("\nSearching Debian archive...\n")

# Step 3: search Debian code
for pattern in patterns[:5]:
    code_search.search_code(pattern)
