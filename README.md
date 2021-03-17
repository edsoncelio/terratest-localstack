# Terratest with localstack
![test build](https://github.com/edsoncelio/terratest-localstack/actions/workflows/main.yml/badge.svg)

> Work in Progress

## Prerequisites
* Go 1.15+
* Terraform v0.13+

## How it works
This repo will create a s3 bucket and test using the following technologies:
* Terraform: to create the resources
* Terratest: to write the tests
* Localstack: to mock the AWS resources

## Tests

> Warning: to run the tests locally, you need to setup [localstack](https://github.com/localstack/localstack)

To run the tests locally:   
1. `cd tests`
2. `go test -v -timeout 30m`

This will create, test and destroy all the resources.

## TODO
- [x] Finish the action to set up localstack and test
- [ ] Add more tests
- [ ] Remove hardcored aws region test
