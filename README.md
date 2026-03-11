# Debian Clone Detection Prototype

This project is a prototype tool for detecting **cloned vulnerable code** in Debian packages.

The system analyzes **Debian security patches (CVE fixes)**, extracts the modified code fragments, and searches for similar code across Debian source packages using **Debian Code Search**. This helps identify potential cases where vulnerable code may have been copied into other packages.

---

## Pipeline

The detection pipeline consists of the following steps:

1. Extract modified code from Debian security patches
2. Generate search patterns from the extracted code
3. Query Debian Code Search for similar code
4. Identify potential cloned vulnerable code

---

## System Architecture

The system detects cloned vulnerable code by analyzing security patches and searching for similar code across Debian packages.
<img width="447" height="717" alt="architecture" src="https://github.com/user-attachments/assets/2f595b7a-d85a-4c73-a9b8-c754c56018a6" />

---

## Example Usage

Run the prototype:

```
python3 clone_detector.py
```

---

## Example Output

```
Search Debian source for possible clones:
https://codesearch.debian.net/search?q=ngx_http_discard_request_body
```

This query searches Debian source repositories for code fragments similar to the vulnerable code extracted from the security patch.

---

## Example Workflow

The following example demonstrates how the prototype detects possible cloned vulnerable code.

### 1. Security Patch

A Debian security patch fixes a vulnerability in a package.
Example vulnerable function modified in a patch:

```
ngx_http_discard_request_body(...)
```

### 2. Patch Parsing

The `patch_parser.py` module extracts the modified code fragment from the patch.

Example extracted snippet:

```
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
