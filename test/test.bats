#!/usr/bin/env bats

function setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
}

@test "Test script invocation" {
    ./src/rssmanage
}

@test "Test help invocation using long" {
   run ./src/rssmanage --help
   assert_output --partial "Usage" 
}

@test "Test help invocation using short" {
   run ./src/rssmanage -h
   assert_output --partial "Usage" 
}

@test "Test help invocation using unknown param" {
    run ./src/rssmanage asdf
    assert_output --partial "Unknown"
}
