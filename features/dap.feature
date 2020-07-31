Feature: DAP works

  Scenario Outline:
    Given I <3rd_party_cert>
    And <mke_enabled> using <mke_mode>
    And <auto_failover_enabled> 
    And I have a <given_state> <cluster_mode>

    When I <when_operation>

    Then it is healthy and operational

Examples:
| mke_enabled | mke_mode | 3rd_party_cert |cluster_mode|auto_failover_enabled|given_state|when_operation|
| master key encryption is enabled | a key file | am using 3rd party certs | cluster | auto-failover is not configured | restored | promote |
| master key encryption is not enabled | NA | am not using 3rd party certs | cluster | auto-failover is configured | failed over | upgrade |
| master key encryption is not enabled | NA | am using 3rd party certs | cluster | auto-failover is configured | clean | failover |
| master key encryption is enabled | an HSM | am not using 3rd party certs | cluster | auto-failover is configured | clean | failover |
| master key encryption is enabled | an HSM | am not using 3rd party certs | cluster | auto-failover is not configured | clean | promote |
| master key encryption is not enabled | NA | am not using 3rd party certs | standalone master | auto-failover is not configured | restored | backup and restore |
| master key encryption is enabled | a key file | am using 3rd party certs | standalone master | auto-failover is not configured | clean | upgrade |
| master key encryption is enabled | a key file | am not using 3rd party certs | cluster | auto-failover is configured | upgraded | backup and restore |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is configured | restored | upgrade |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is configured | failed over | backup and restore |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is configured | upgraded | failover |
| master key encryption is enabled | a key file | am using 3rd party certs | cluster | auto-failover is configured | restored | backup and restore |
| master key encryption is enabled | a key file | am not using 3rd party certs | cluster | auto-failover is configured | failed over | failover |
| master key encryption is enabled | an HSM | am not using 3rd party certs | cluster | auto-failover is not configured | restored | promote |
| master key encryption is not enabled | NA | am using 3rd party certs | cluster | auto-failover is not configured | promoted | backup and restore |
| master key encryption is enabled | an HSM | am not using 3rd party certs | cluster | auto-failover is configured | failed over | failover |
| master key encryption is enabled | a key file | am not using 3rd party certs | standalone master | auto-failover is not configured | restored | upgrade |
| master key encryption is enabled | a key file | am not using 3rd party certs | cluster | auto-failover is not configured | promoted | upgrade |
| master key encryption is enabled | a key file | am using 3rd party certs | cluster | auto-failover is configured | failed over | upgrade |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is not configured | promoted | upgrade |
| master key encryption is not enabled | NA | am not using 3rd party certs | cluster | auto-failover is not configured | upgraded | promote |
| master key encryption is enabled | a key file | am not using 3rd party certs | cluster | auto-failover is configured | restored | failover |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is not configured | promoted | promote |
| master key encryption is not enabled | NA | am using 3rd party certs | cluster | auto-failover is configured | restored | upgrade |
| master key encryption is not enabled | NA | am using 3rd party certs | cluster | auto-failover is configured | failed over | failover |
| master key encryption is not enabled | NA | am not using 3rd party certs | cluster | auto-failover is configured | restored | failover |
| master key encryption is enabled | a key file | am not using 3rd party certs | cluster | auto-failover is configured | clean | failover |
| master key encryption is enabled | an HSM | am not using 3rd party certs | cluster | auto-failover is configured | failed over | upgrade |
| master key encryption is not enabled | NA | am not using 3rd party certs | cluster | auto-failover is configured | failed over | backup and restore |
| master key encryption is enabled | an HSM | am using 3rd party certs | standalone master | auto-failover is not configured | upgraded | backup and restore |
| master key encryption is enabled | a key file | am using 3rd party certs | cluster | auto-failover is not configured | clean | promote |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is configured | restored | failover |
| master key encryption is not enabled | NA | am not using 3rd party certs | standalone master | auto-failover is not configured | clean | upgrade |
| master key encryption is enabled | an HSM | am not using 3rd party certs | cluster | auto-failover is not configured | promoted | backup and restore |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is configured | clean | upgrade |
| master key encryption is not enabled | NA | am using 3rd party certs | cluster | auto-failover is configured | upgraded | failover |
| master key encryption is enabled | a key file | am using 3rd party certs | cluster | auto-failover is configured | upgraded | failover |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is configured | clean | backup and restore |
| master key encryption is enabled | a key file | am using 3rd party certs | cluster | auto-failover is not configured | promoted | backup and restore |
| master key encryption is enabled | a key file | am not using 3rd party certs | standalone master | auto-failover is not configured | clean | backup and restore |
| master key encryption is not enabled | NA | am using 3rd party certs | cluster | auto-failover is not configured | clean | promote |
| master key encryption is not enabled | NA | am not using 3rd party certs | cluster | auto-failover is not configured | promoted | upgrade |
| master key encryption is enabled | a key file | am not using 3rd party certs | cluster | auto-failover is configured | failed over | backup and restore |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is configured | restored | backup and restore |
| master key encryption is not enabled | NA | am using 3rd party certs | cluster | auto-failover is not configured | restored | promote |
| master key encryption is not enabled | NA | am not using 3rd party certs | cluster | auto-failover is configured | upgraded | backup and restore |
| master key encryption is enabled | a key file | am not using 3rd party certs | cluster | auto-failover is not configured | promoted | promote |
| master key encryption is enabled | a key file | am not using 3rd party certs | standalone master | auto-failover is not configured | upgraded | backup and restore |
| master key encryption is not enabled | NA | am using 3rd party certs | standalone master | auto-failover is not configured | clean | backup and restore |
| master key encryption is not enabled | NA | am not using 3rd party certs | standalone master | auto-failover is not configured | upgraded | backup and restore |
| master key encryption is enabled | an HSM | am using 3rd party certs | cluster | auto-failover is not configured | upgraded | promote |
| master key encryption is not enabled | NA | am using 3rd party certs | cluster | auto-failover is not configured | promoted | promote |
| master key encryption is enabled | an HSM | am not using 3rd party certs | standalone master | auto-failover is not configured | restored | upgrade |
| master key encryption is enabled | an HSM | am not using 3rd party certs | cluster | auto-failover is configured | upgraded | failover |
| master key encryption is not enabled | NA | am using 3rd party certs | standalone master | auto-failover is not configured | restored | upgrade |
| master key encryption is enabled | a key file | am using 3rd party certs | cluster | auto-failover is not configured | upgraded | promote |
| master key encryption is enabled | an HSM | am using 3rd party certs | standalone master | auto-failover is not configured | clean | backup and restore |
