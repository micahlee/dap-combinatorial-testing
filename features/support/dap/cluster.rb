module DAP
  class Cluster
    def initialize(
      third_party_certs_enabled:,
      master_key_encryption_enabled:,
      master_key_mode:,
      auto_failover_enabled:
    )
      @third_party_certs_enabled = third_party_certs_enabled
      @master_key_encryption_enabled = master_key_encryption_enabled
      @master_key_mode = master_key_mode
      @auto_failover_enabled = auto_failover_enabled
    end

    def failover
    end

    def upgrade
    end

    def backup
    end

    def restore
    end

    def promote
    end

    def is_healthy?
      true
    end
  end
end
