# Debian Clone Detection Prototype

This project is a prototype for detecting cloned vulnerable code in Debian packages.

Pipeline:

1. Extract modified code from security patches
2. Generate search tokens
3. Query Debian Code Search
4. Identify possible cloned vulnerable code

Example:

python3 clone_detector.py

Output:

Search Debian source for possible clones:
https://codesearch.debian.net/search?q=ngx_http_discard_request_body
