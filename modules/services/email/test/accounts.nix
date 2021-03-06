{
  alice = {
    domain = "example.org";
    server = "mx.example.org";
    plainPasswd = "testpw1";
    password = "{SSHA256}LDxblDvyoK+wWl1sX+TWntbfkvQ+jATEadp0Q1yfqlNLo2SZ";
    aliases = [ "anotheralice@example.net" ];
  };
  bob = {
    domain = "example.net";
    server = "mx.example.org";
    plainPasswd = "testpw2";
    password = "{SHA256}8NSRIfBpISneREB06+Z/4h9io5c9+9zEEe1abG6gFCQ=";
  };
  foo = {
    domain = "example.com";
    server = "mx.example.com";
    plainPasswd = "testpw3";
    password = "{PBKDF2}$1$NbF7gIsr3MBE6Ice$5000$07072413c01782d9eb2e5d"
             + "919f2c402b8e924c2e";
  };
  # NOTE: This account has a quota set, so be sure to *never* send any email to
  #       it in tests other than the quota test.
  bar = {
    domain = "example.com";
    server = "mx.example.com";
    plainPasswd = "testpw4";
    password = "{PLAIN}testpw4";
    quota = "10k";
  };
  spameater = {
    domain = "catchall.example";
    server = "mx.example.com";
    plainPasswd = "testpw5";
    password = "{PLAIN}testpw5";
    catchallFor = [ "catchall.example" ];
  };
}
