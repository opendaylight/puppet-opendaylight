# == Class opendaylight::params
#
# This class manages the default params for the ODL class.
#
class opendaylight::params {
  # NB: If you update the default values here, you'll also need to update:
  #   spec/spec_helper_acceptance.rb's install_odl helper fn
  #   spec/classes/opendaylight_spec.rb tests that use default Karaf features
  # Else, both the Beaker and RSpec tests will fail
  $default_features = ['standard', 'wrap', 'ssh']
  $extra_features = []
  $odl_rest_port = '8181'
  $odl_bind_ip = '0.0.0.0'
  $rpm_repo = 'https://nexus.opendaylight.org/content/repositories/opendaylight-neon-epel-7-$basearch-devel'
  $deb_repo = 'ppa:odl-team/nitrogen'
  $log_levels = {}
  $enable_ha = false
  $ha_node_ips = []
  $ha_node_index = 0
  $ha_db_modules = { 'default' => false }
  $vpp_routing_node = ''
  $java_opts = ''
  $manage_repositories = true
  $username = 'admin'
  $password = 'admin'
  $log_max_size = '500MB'
  $log_max_rollover = 4
  $log_rollover_fileindex = 'min'
  $log_pattern = '%d{ISO8601} | %-5p | %-16t | %-60c{6} | %m%n'
  $enable_paxosgi_logger = false
  $snat_mechanism = 'controller'
  $enable_tls = false
  $tls_keystore_password = undef
  $tls_key_file = undef
  $tls_cert_file = undef
  $tls_ca_cert_file = undef
  $tls_trusted_certs = []
  $log_mechanism = 'file'
  $inherit_dscp_marking = false
  $stats_polling_enabled = false
  $inactivity_probe = undef
}
