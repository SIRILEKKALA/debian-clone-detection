# Debian Clone Detection Prototype

This project is a prototype for detecting cloned vulnerable code in Debian packages.

Pipeline:

1. Extract modified code from security patches
2. Generate search tokens
3. Query Debian Code Search
4. Identify possible cloned vulnerable code
## System Architecture

The system detects cloned vulnerable code in Debian packages by
analyzing security patches and searching similar code using Debian
Code Search.

<img width="447" height="717" alt="Screenshot 2026-03-11 114800" src="https://github.com/user-attachments/assets/2b0b9ac5-ac82-44df-8c5a-c3a52aa7d326" />

## Example Usage:
Run the prototype:
python3 clone_detector.py

## Example Output:
Search Debian source for possible clones:
https://codesearch.debian.net/search?q=ngx_http_discard_request_body

This query searches Debian source repositories for code fragments similar to the vulnerable code extracted from the security patch.

## Example Workflow

The following example demonstrates how the prototype detects possible cloned vulnerable code.

### 1. Security Patch

A Debian security patch fixes a vulnerability in a package.
Example vulnerable function modified in a patch:

```c
ngx_http_discard_request_body(...)
```

### 2. Patch Parsing

The `patch_parser.py` module extracts the modified code fragment from the patch.

Example extracted snippet:

```c
ngx_http_discard_request_body(r);
```

### 3. Token Generation

The system generates search patterns based on the extracted code:

```
ngx_http_discard_request_body
```

### 4. Code Search

The search query is sent to Debian Code Search to find similar code across Debian packages.

Example query:

```
https://codesearch.debian.net/search?q=ngx_http_discard_request_body
```

### 5. Clone Detection

The system analyzes search results and reports possible vulnerable clones in other packages.


