# What is OAuth 2.0?

## Introduction

OAuth 2.0 (Open Authorization 2.0) is an open standard protocol that allows secure authorization and delegated access to resources on behalf of a user. It is widely used for enabling third-party applications to access user data from various services without exposing user credentials.

## Key Concepts

### 1. Authorization

- **Description:** OAuth 2.0 provides a framework for obtaining authorization from a resource owner (user) to access resources.

### 2. Tokens

- **Description:** Instead of sharing credentials, OAuth 2.0 uses tokens for authentication and authorization. The two main types of tokens are Access Tokens and Refresh Tokens.

### 3. Grant Types

- **Description:** OAuth 2.0 defines several grant types that define the way applications obtain authorization. Common grant types include Authorization Code, Implicit, Resource Owner Password Credentials, and Client Credentials.

## OAuth 2.0 Roles

### 1. Resource Owner

- **Description:** The entity that can grant access to a protected resource. Typically, this is the end-user.

### 2. Client

- **Description:** The application making requests for access to protected resources after obtaining authorization from the resource owner.

### 3. Authorization Server

- **Description:** The server that authenticates the resource owner and issues access tokens after getting proper authorization.

### 4. Resource Server

- **Description:** The server hosting the protected resources that the client wants to access, using the access token.

### 5. Redirect URI

- **Description:** The URI to which the authorization server redirects the user-agent (browser) after the resource owner grants/denies permission.

## OAuth 2.0 Flows

### 1. Authorization Code Flow

- **Description:** The most common flow where the client obtains an authorization code and exchanges it for an access token.

- **Example Steps:**
  1. User is redirected to the authorization server.
  2. User logs in and grants permission.
  3. Authorization server redirects user back to the client with an authorization code.
  4. Client exchanges the code for an access token.

### 2. Implicit Flow

- **Description:** Simplified flow for clients implemented in a browser using a scripting language such as JavaScript.

- **Example Steps:**
  1. User is redirected to the authorization server.
  2. User logs in and grants permission.
  3. Authorization server redirects user back to the client with an access token.

### 3. Resource Owner Password Credentials (ROPC) Flow

- **Description:** The client collects the user's credentials and uses them to obtain an access token.

- **Example Steps:**
  1. User provides credentials to the client.
  2. Client sends credentials to the authorization server.
  3. Authorization server responds with an access token.

### 4. Client Credentials Flow

- **Description:** The client uses its own credentials to obtain an access token.

- **Example Steps:**
  1. Client sends its credentials to the authorization server.
  2. Authorization server responds with an access token.

## OAuth 2.0 Scopes

- **Description:** Scopes define the specific permissions or access levels granted by the resource owner to the client.

- **Example:** 
  - `read` - Read-only access.
  - `write` - Write access.
  - `openid` - Indicates that the client is requesting OpenID Connect authentication.

## OAuth 2.0 Tokens

### 1. Access Token

- **Description:** A token representing the authorization granted to the client. It is used to access protected resources.

### 2. Refresh Token

- **Description:** A token that can be used to obtain a new access token without requiring the user to re-authenticate.

## Security Considerations

### 1. Token Storage

- **Description:** Clients must securely store tokens and follow best practices to prevent unauthorized access.

### 2. Token Expiration

- **Description:** Access tokens and refresh tokens have expiration times. Clients should handle token expiration gracefully.

## Conclusion

OAuth 2.0 is a widely adopted protocol that provides a flexible framework for secure authorization, enabling seamless integration of third-party applications with various services while maintaining user privacy and security.
