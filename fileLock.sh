*First, re-initialize the export
# exportfs -rva
# showmount -e

* open read-only, lock shared
# perl -e 'use Fcntl qw/:flock/; open($x,"< foo"); flock($x,LOCK_SH) || die $!'

* open read-write or write-only, lock exclusive
# perl -e 'use Fcntl qw/:flock/; open($x,"> foo"); flock($x,LOCK_EX) || die $!'
