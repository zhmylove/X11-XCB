# Release checklist for X11::XCB

## Verification

- make distclean
- update all the documentation
- update VERSION
- update copyright years
- git status            # check all the changed files
- vim Changes           # prepare changelog
- perl Makefile.PL
- make manifest
- make dist
- make disttest

## Actual release

- make distclean
- rm \*.gz
- git add Changes
- git commit -sm 'Bump version to 0.xx'
- git tag 0.xx
- git push origin
- git push origin tag 0.xx
- perl Makefile.PL
- make manifest
- make dist
- make disttest
- upload to CPAN
- give it some time to index on MetaCPAN
- update FreeBSD port and AUR package
- if system dependencies changed, update cpan-plugin-sysdeps
