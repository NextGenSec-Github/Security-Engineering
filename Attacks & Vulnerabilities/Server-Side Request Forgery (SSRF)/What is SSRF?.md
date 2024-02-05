# Server-Side Request Forgery (SSRF)

## Table of Contents

1. [Introduction](#introduction)
2. [How SSRF Works](#how-ssrf-works)
3. [Examples](#examples)
4. [Detection and Prevention](#detection-and-prevention)
5. [Impact](#impact)
6. [References](#references)

---

## 1. Introduction

Server-Side Request Forgery (SSRF) is a security vulnerability that occurs when an attacker can manipulate the server into making unintended requests on behalf of the application. These requests can target internal resources, potentially leading to unauthorized access, data leakage, or service disruption.

## 2. How SSRF Works

SSRF typically exploits the trust placed in the server to make HTTP requests to resources specified by the attacker. Commonly, SSRF involves manipulating URLs and exploiting functionality that allows the server to fetch external resources, such as making HTTP requests to other servers.

## 3. Examples

### 3.1 Basic SSRF Example

Consider a web application with an image upload feature. An attacker uploads a malicious file with a manipulated URL in the request:

```http
POST /upload HTTP/1.1
Host: example.com
Content-Type: multipart/form-data; boundary=---------------------------12345678901234567890
Content-Length: [length]

-----------------------------12345678901234567890
Content-Disposition: form-data; name="image"; filename="malicious.jpg"
Content-Type: image/jpeg

[Malicious Content]
-----------------------------12345678901234567890--
```

If the server processes this request and tries to fetch the image from the manipulated URL, SSRF occurs.

## Exploiting Internal Services
An attacker might manipulate a URL to access internal services, such as:

```http
GET http://internal-service.local/api/ sensitive-data HTTP/1.1
Host: example.com
```

Here, the attacker is attempting to access sensitive data from an internal service.

## Detection and Prevention

### Detection
1. Monitor and analyze outgoing network requests for unusual patterns.
2. Use web application firewalls (WAFs) to detect and block malicious requests.

### Prevention
1. Validate and sanitize user input, especially URLs and file uploads.
2. Employ strong access controls to limit the server's ability to make requests to external resources.
3. Utilize whitelists to restrict the allowed destinations for outgoing requests.














