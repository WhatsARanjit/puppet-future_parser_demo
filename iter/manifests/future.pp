class iter::future (
  $rules = [
    'RewriteCond %{http_host} !^www.puppetlabs.com [nc]',
    'RewriteRule ^(.*)$ http://www.puppetlabs.com/$1 [r=301,nc]'
  ]
) {

  $rules.each |String $rule| {
    validate_re( $rule, '^Rewrite(Rule|Cond).*', 'This rule is not valid' )
  }

  file { '/tmp/rewrite_rules.txt':
    ensure  => file,
    owner   => '0',
    group   => '0',
    mode    => '0644',
    content => template('iter/rewrite_rule.txt.erb'),
  }

}
