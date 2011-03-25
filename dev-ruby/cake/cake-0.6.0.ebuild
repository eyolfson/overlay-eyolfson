# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

USE_RUBY="ruby18 ree18 jruby"

RUBY_FAKEGEM_TASK_TEST="-f rakefile.rb test"

RUBY_FAKEGEM_TASK_DOC="-f rakefile.rb rdoc"

RUBY_FAKEGEM_DOCDIR="docs"
#RUBY_FAKEGEM_EXTRADOC="README"

inherit ruby-fakegem

DESCRIPTION="CAKE!!! its a lie."
HOMEPAGE="blank"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
