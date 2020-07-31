module DAPWorld
  def verify_dap_is_healthy
    @dap.is_healthy?
  end

  def failover_dap
    @dap.failover
  end

  def upgrade_dap
    @dap.upgrade
  end

  def backup_dap
    @dap.backup
  end

  def restore_dap
    @dap.restore
  end

  def promote_dap
    @dap.promote
  end

  def create_dap_cluster
    @dap = DAP::Cluster.new(
      third_party_certs_enabled: @third_party_certs_enabled,
      master_key_encryption_enabled: @master_key_encryption_enabled,
      master_key_mode: @master_key_mode,
      auto_failover_enabled: @auto_failover_enabled
    )
  end

  def create_dap_standalone_master
    @dap = DAP::StandaloneMaster.new(
      third_party_certs_enabled: @third_party_certs_enabled,
      master_key_encryption_enabled: @master_key_encryption_enabled,
      master_key_mode: @master_key_mode
    )
  end
end

World(DAPWorld)
