# saml-test-sp
Test Spring Security based client (SP) application for SAML IDP checking

# Usage

1. Update IDP metadata:

Two IDPs added by default:
Shibbolet IDP: saml-test-sp/src/main/resources/metadata/idp.xml
Asimba IDP saml-test-sp/src/main/resources/metadata/asimba-idp.xml

2. Generate SP Metadata:

Open saml-test-sp URL, login to "Metadata Administration" (User: admin, passw: admin), click to "generate Metadata".

Default SP metadata URL: 
https://hostname/saml-test-sp/saml/metadata

HOWTO install saml-test-sp inside gluu-server:


