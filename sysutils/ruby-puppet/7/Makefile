PORTROACH=		limit:^7

VERSION=		7.20.0

RUN_DEPENDS+=		converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.10,<2 \
			databases/ruby-hiera3,${MODRUBY_FLAVOR}>=3.2.1,<4 \
			devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR}>=1,<2 \
			devel/ruby-deep_merge,${MODRUBY_FLAVOR}>=1,<2 \
			devel/ruby-fast_gettext,${MODRUBY_FLAVOR}>=1.1,<3 \
			devel/ruby-locale,${MODRUBY_FLAVOR}>=2.1,<3 \
			devel/ruby-puppet-resource_api,${MODRUBY_FLAVOR}>=1.5,<2 \
			devel/ruby-scanf,${MODRUBY_FLAVOR}>=1,<2 \
			devel/ruby-semantic_puppet,${MODRUBY_FLAVOR}>=1,<2 \
			net/ruby-msgpack,${MODRUBY_FLAVOR} \
			sysutils/ruby-facter,${MODRUBY_FLAVOR}>=2.0.1,<5

SUBST_VARS +=	MODPY_DEFAULT_VERSION_2 MODPY_DEFAULT_VERSION_3 MODRUBY_BINREV

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/puppet/provider/package/gem.rb \
		${WRKSRC}/lib/puppet/provider/package/pip.rb \
		${WRKSRC}/lib/puppet/provider/package/pip3.rb \
		${WRKSRC}/lib/puppet/reference/configuration.rb \
		${WRKSRC}/lib/puppet/util/run_mode.rb \
		${WRKSRC}/lib/puppet/defaults.rb

#do-install:
#	@cd ${WRKSRC} && ${FAKE_FLAGS} ${RUBY} install.rb \
#		--vardir=${LOCALSTATEDIR}/db/puppet/cache/ \
#		--rundir=${LOCALSTATEDIR}/run/puppetlabs/ \
#                --localedir=${TRUEPREFIX}/${MODRUBY_SITEDIR}/puppet/locales/
#	mv ${WRKINST}${SYSCONFDIR}/puppetlabs ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
#	${INSTALL_DATA} ${WRKSRC}/conf/*.conf \
#		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet/puppet/
#	# Suppress a huge number of Ruby deprecation/obsolete warnings
#	sed -i -e "s/ruby${MODRUBY_BINREV}/ruby${MODRUBY_BINREV} -W0/" ${PREFIX}/bin/puppet

.include <bsd.port.mk>
