# Terratest with localstack

> Work in Progress

## How it works
This repo will create a s3 bucket and test using the following technologies:
* Terraform: to create the resources
* Terratest: to write the tests
* Localstack: to mock the AWS resources

## Tests
To run the tests:   
1. `cd tests`
2. `go test -v -timeout 30m`

This will create, test and destroy all the resources.
