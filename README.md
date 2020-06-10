# IB Gateway Health Checker Stack

An Okinta stack that continously monitors the health of IB gateway.

## What is an Okinta Stack?

An Okinta stack is a deployable unit for Alga that runs within Okinta's
infrastructure. Stacks describe all necessary information to deploy a service.

For more information about Alga, refer to the [alga-infra repository][1].

## What is this Stack?

Runs [ibgateway-health-checker][2] to monitor the health of the
[IB gateway stack][3].

## Dependencies

This stack is dependent on [ibgateway-health-checker][2] in order to monitor
the health of the [IB gateway stack][3].

## Development

### Check FCOS Config Syntax

    fcct --strict < coreos.fcc > /dev/null

[1]: https://github.com/okinta/alga-infra
[2]: https://github.com/okinta/ibgateway-health-checker
[3]: https://github.com/okinta/stack-ibgateway
