# DAP Combinatorial Testing

Testing DAP scenarios generated using [pairwise independent combinatorial testing (PICT)](https://github.com/microsoft/pict).

Test scenarios are generated from the model in [dap_testing.pict](./dap_testing.pict),
and are executed using Cucumber.

## Generate Test Scenarios

Test scenarios are generated in the Gherkin examples table format using the
`./test_cases` command:

```sh-session
$ ./test_cases
| Master Key Encryption | Master Key Encryption Mode | 3rd Party Certs | Cluster | Auto-failover | Given | When |
| master key encryption is enabled | a key file | am using 3rd party certs | cluster | auto-failover is not configured | restored | promote |
| master key encryption is not enabled | NA | am not using 3rd party certs | cluster | auto-failover is configured | failed over | upgrade |
| master key encryption is not enabled | NA | am using 3rd party certs | cluster | auto-failover is configured | clean | failover |
| master key encryption is enabled | an HSM | am not using 3rd party certs | cluster | auto-failover is configured | clean | failover |
...
```

These can then be copied into the examples table in [features/dap.feature](./features/dap.feature).

## Run Test Scenarios

The test scenarios can be executed with the `./run` command:

```sh-session
$ ./run
Feature: DAP works

  Scenario Outline:                           # features/dap.feature:3
    Given I <3rd_party_cert>                  # features/dap.feature:4
    And <mke_enabled> using <mke_mode>        # features/dap.feature:5
    And <auto_failover_enabled>               # features/dap.feature:6
    And I have a <given_state> <cluster_mode> # features/dap.feature:7
    When I <when_operation>                   # features/dap.feature:9
    Then it is healthy and operational        # features/dap.feature:11

    Examples:
      | mke_enabled | mke_mode | 3rd_party_cert |cluster_mode|auto_failover_enabled|given_state|when_operation|
      | master key encryption is enabled | a key file | am using 3rd party certs | cluster | auto-failover is not configured | restored | promote |
      | master key encryption is not enabled | NA | am not using 3rd party certs | cluster | auto-failover is configured | failed over | upgrade |
...
57 scenarios (57 passed)
342 steps (342 passed)
0m0.143s
```

## Test Development Environment

Running `./dev` will start a bash session in the Cucumber test environment for
adding/updating Gems, etc.
