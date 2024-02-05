# What is CORS?

## Introduction

Cross-Origin Resource Sharing (CORS) is a security feature implemented by web browsers that allows or restricts web applications running at one origin (domain) to make requests for resources from a different origin. CORS is crucial for maintaining the security and integrity of web applications while enabling cross-origin communication.

## Key Concepts

### 1. Same-Origin Policy

- **Description:** The Same-Origin Policy is a security measure implemented by browsers that restricts web pages from making requests to a different domain than the one that served the web page.

### 2. Cross-Origin Requests

- **Description:** Cross-Origin Requests occur when a web page requests a resource (e.g., an API endpoint or an image) from a domain different from the one that served the web page.

### 3. Cross-Origin Resource Sharing (CORS)

- **Description:** CORS is a mechanism that allows servers to specify which origins are permitted to access their resources. It is implemented through HTTP headers exchanged between the browser and the server.

## How CORS Works

### 1. Preflight Request

- **Description:** Before making certain types of requests, such as those with custom headers or methods other than simple GET or POST, the browser sends a preflight request to the server to check if the actual request is safe to send.

- **Example:**
```http
OPTIONS /api/data
Origin: https://example.com
Access-Control-Request-Method: POST
Access-Control-Request-Headers: Content-Type, Authorization
```

### 2. CORS Headers

- **Description:** Servers include CORS-specific headers in their responses to inform browsers about the permissions granted for cross-origin requests.

- **Example:**

