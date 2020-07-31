Given(/I am( not)? using 3rd party certs/) do |negative|
  @third_party_certs_enabled = !negative
end

Given(/master key encryption is( not)? enabled using ([\s\w]+)/) do |negative, mode|
  @master_key_encryption_enabled = !negative
  @master_key_mode = mode
end

Given(/auto-failover is( not)? configured/) do |negative|
  @auto_failover_enabled = !negative
end

Given('I have a failed over cluster') do
  expect(@auto_failover_enabled).to be(true)
  create_dap_cluster
  failover_dap
end

Given('I have a promoted cluster') do
  expect(@auto_failover_enabled).to be(false)
  create_dap_cluster
  promote_dap
end

Given('I have a upgraded cluster') do
  create_dap_cluster
  upgrade_dap
end

Given('I have a restored standalone master') do
  create_dap_standalone_master
  backup_dap
  restore_dap
end

Given('I have a restored cluster') do
  create_dap_cluster
  backup_dap
  restore_dap
end

Given('I have a upgraded standalone master') do
  create_dap_standalone_master
  upgrade_dap
end

Given('I have a clean cluster') do
  create_dap_cluster
end

Given('I have a clean standalone master') do
  create_dap_standalone_master
end

When('I failover') do
  failover_dap
end

When('I upgrade') do
  upgrade_dap
end

When('I backup and restore') do
  backup_dap
  restore_dap
end

When('I promote') do
  promote_dap
end

Then('it is healthy and operational') do
  expect(@dap.is_healthy?).to be(true)
end
