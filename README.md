# Cosmosdb account

Terraform module to create a CosmosDB account in Azure with set of databases and users. Database allows for custom configuration and enforces SSL for security reasons.

Supported databases are at the moment only mongodb

## Limitations

TODO

## Usage

TODO
```terraform
```

## Diagnostics

Diagnostics settings can be sent to either storage account, event hub or Log Analytics workspace. The variable `diagnostics.destination` is the id of receiver, ie. storage account id, event namespace authorization rule id or log analytics resource id. Depending on what id is it will detect where to send. Unless using event namespace the `eventhub_name` is not required, just set to `null` for storage account and log analytics workspace.

Setting `all` in logs and metrics will send all possible diagnostics to destination. If not using `all` type name of categories to send.
