# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.4

EAPI="2"

MODULE_AUTHOR="CMOORE"


inherit perl-module

DESCRIPTION="Single interface to deal with file archives."

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="alpha amd64 amd64-fbsd arm hppa ia64 m68k mips ppc ppc64 s390 sh sparc sparc-fbsd x86 x86-fbsd   ppc-aix x86-freebsd x64-freebsd sparc64-freebsd hppa-hpux ia64-hpux x86-interix amd64-linux arm-linux ia64-linux ppc64-linux x86-linux ppc-macos x86-macos x64-macos m68k-mint x86-netbsd ppc-openbsd x86-openbsd x64-openbsd sparc-solaris sparc64-solaris x64-solaris x86-solaris x86-winnt x86-cygwin"
IUSE=""

DEPEND="dev-perl/Test-Warn
	>=dev-perl/Archive-Zip-1.300.0
	>=dev-perl/Module-Find-0.110.0
	>=dev-perl/File-MMagic-1.270.0
	>=dev-perl/MIME-Types-1.350.0
	dev-lang/perl"
