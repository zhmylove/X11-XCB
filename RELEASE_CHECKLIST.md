# Release checklist for X11::XCB

## Verification

- `make distclean`
- update all the documentation
- update VERSION in lib/X11/XCB.pm
- update copyright years in README.md and lib/X11/XCB.pm
- `git status`            # check all the changed files
- `vim Changes`           # prepare changelog
- `perl Makefile.PL`
- `make manifest`
- `make dist`
- `make disttest`
- `./i3test.sh ../i3/ |bash` and ensure there are no failed tests

## Actual release

- `make distclean`
- `rm *.gz`
- `git add Changes`
- `git commit -sm 'Bump version to 0.xx'`
- `git tag 0.xx`
- `git push origin`
- `git push origin tag 0.xx`
- `perl Makefile.PL`
- `make manifest`
- `make dist`
- `make disttest`
- upload to CPAN
- make a release on GitHub
- give it some time to index on MetaCPAN
- update FreeBSD port and AUR package
- if system dependencies changed, update [cpan-plugin-sysdeps](https://github.com/eserte/cpan-plugin-sysdeps)
