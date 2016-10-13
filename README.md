# saml-test-sp
Test Spring Security based client (SP) application for SAML IDP checking

## Usage

### Update IDP metadata

Two IDPs added by default:

Shibbolet IDP: saml-test-sp/src/main/resources/metadata/idp.xml

Asimba IDP saml-test-sp/src/main/resources/metadata/asimba-idp.xml

### Generate SP Metadata

Open saml-test-sp URL -> "Metadata Administration" (User: admin, passw: admin) -> "Generate new service provider Metadata"

```
Store for the current session: Yes
Entity ID: https://hostname/saml-test-sp/saml/metadata
Entity base URL: https://hostname/saml-test-sp
Signature security profile: MetaIOP  (= trust all)
SSL/TLS security profile: MetaIOP (= trust all)
SSL/TLS hostname verification: Disable hostname verification (allow all)
```

-> "Generate Metadata"

### Add trust relationship to IDP

Default SP metadata URL:  https://hostname/saml-test-sp/saml/metadata

 
### HOWTO install saml-test-sp inside gluu-server:

Deploy saml-test-sp.war to /opt/gluu-server-2.4.4/

edit /opt/gluu-server-2.4.4/etc/apache2/sites-available/https_gluu.conf

add:

```
<Location /saml-test-sp>
        ProxyPass ajp://localhost:8009/saml-test-sp retry=5 disablereuse=On
        ProxyPassReverse ajp://localhost:8009/saml-test-sp
        Order allow,deny
        Allow from all
</Location>
```
