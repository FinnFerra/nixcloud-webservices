require ["vnd.dovecot.pipe", "copy", "imapsieve", "environment", "variables"];

if environment :matches "imap.mailbox" "*" {
  set "mailbox" "${1}";
}

if string "${mailbox}" "Trash" {
  stop;
}

if environment :matches "imap.user" "*" {
  set "username" "${1}";
}

if environment :matches "imap.email" "*" {
  set "email" "${1}";
}

pipe :copy "learn-ham.sh" [ "${username}", "${email}" ];
