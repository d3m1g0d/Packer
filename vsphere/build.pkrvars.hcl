# Build account variables used for all builds.
# @author Adrian Heissler

/*
    DESCRIPTION:
    Build account variables used for all builds.
    - Variables are passed to and used by guest operating system configuration files (e.g., ks.cfg, autounattend.xml).
    - Variables are passed to and used by configuration scripts.
*/

// Default Account Credentials
build_username           = "packer"
build_password           = "VMware123!"
build_password_encrypted = "$6$KR+PETJU$ObD1znFNMfay5JADp.OsRu1Qub8V775qSQVSs3nN44uwN44le10i16HmMwLK8VD4KEZgf0DRnFo9Uv9sqfveM0"
// Create the encrypted password using openssl as follows:
// MYPASSWD="VMware123!"
// SALT=$(openssl rand -base64 6)
// MYPASSWORD_ENC=$(echo -n "$MYPASSWD" | openssl passwd -6 -stdin -salt $SALT)
// echo $MYPASSWORD_ENC