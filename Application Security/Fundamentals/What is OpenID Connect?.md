# What is OpenID Connect?

## Introduction

OpenID Connect (OIDC) is an identity layer built on top of the OAuth 2.0 protocol. It provides a standardized way for clients to obtain identity information about end-users, including authentication and authorization data. OpenID Connect is commonly used for single sign-on (SSO) and identity federation.

## Key Concepts

### 1. Identity Provider (OP)

- **Description:** The entity responsible for authenticating the user and providing identity information to clients. It is often referred to as the OpenID Connect Provider (OP).

### 2. Relying Party (RP)

- **Description:** The client application that relies on the identity provider for user authentication and information. It is also known as the OpenID Connect Relying Party (RP).

### 3. Claims

- **Description:** Pieces of information about an end-user provided by the identity provider, such as user ID, name, email, and other attributes.

## OpenID Connect Components

### 1. Authorization Endpoint

- **Description:** The endpoint where the user is authenticated, and the client requests authorization. It typically results in the issuance of an authorization code.

- **Example URL:** `https://idp.example.com/authorize`

### 2. Token Endpoint

- **Description:** The endpoint where the client exchanges the authorization code for an ID token and possibly an access token.

- **Example URL:** `https://idp.example.com/token`

### 3. UserInfo Endpoint

- **Description:** An endpoint where the client can obtain additional claims about the authenticated user.

- **Example URL:** `https://idp.example.com/userinfo`

### 4. ID Token

- **Description:** A JSON Web Token (JWT) containing claims about the authentication of the user. It is signed by the identity provider.

### 5. Discovery Endpoint

- **Description:** An endpoint where clients can dynamically discover OpenID Connect provider information, such as supported endpoints and capabilities.

- **Example URL:** `https://idp.example.com/.well-known/openid-configuration`

## OpenID Connect Flows

### 1. Authorization Code Flow

- **Description:** Similar to OAuth 2.0 Authorization Code Flow, but with the addition of an ID token.

- **Example Steps:**
  1. User is redirected to the authorization endpoint.
  2. User logs in and grants permission.
  3. Authorization server redirects user back to the client with an authorization code and ID token.
  4. Client exchanges the code for an access token and uses the ID token.

### 2. Implicit Flow

- **Description:** Deprecated in favor of Authorization Code Flow with PKCE (Proof Key for Code Exchange).

- **Example Steps:**
  1. User is redirected to the authorization endpoint.
  2. User logs in and grants permission.
  3. Authorization server redirects user back to the client with an ID token and possibly an access token.

### 3. Hybrid Flow

- **Description:** A combination of Authorization Code Flow and Implicit Flow. It provides both an authorization code and ID token in the authorization response.

- **Example Steps:**
  1. User is redirected to the authorization endpoint.
  2. User logs in and grants permission.
  3. Authorization server redirects user back to the client with an authorization code, ID token, and possibly an access token.

## OpenID Connect Scopes

- **Description:** Scopes define the requested permissions and the set of claims that should be included in the ID token.

- **Example Scopes:**
  - `openid` - Indicates that OpenID Connect authentication is requested.
  - `profile` - Requests standard profile claims like name and picture.
  - `email` - Requests the user's email address.

## ID Token Claims

### 1. `sub` (Subject)

- **Description:** A unique identifier for the authenticated user.

### 2. `iss` (Issuer)

- **Description:** The issuer of the ID token, typically the URL of the identity provider.

### 3. `aud` (Audience)

- **Description:** The audience for which the ID token is intended, usually the client ID of the relying party.

### 4. `exp` (Expiration Time)

- **Description:** The expiration time of the ID token.

### 5. `iat` (Issued At)

- **Description:** The time at which the ID token was issued.

## OpenID Connect and OAuth 2.0

- **Description:** OpenID Connect is built on top of OAuth 2.0, providing additional authentication and identity features.

- **Example:** OAuth 2.0 is used for obtaining access tokens, while OpenID Connect extends it to include ID tokens for user authentication.

## Security Considerations

- **Description:** Security considerations for OpenID Connect include proper token validation, secure storage of tokens, and implementing secure communication channels.

## Conclusion

OpenID Connect plays a vital role in modern authentication and authorization systems, providing a standardized and secure way for applications to authenticate users and obtain identity information.
****
