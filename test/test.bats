#!/usr/bin/env bats

@test "Can run the script" {
    ./src/rssmanage
}

@test "Test help invocation using long" {
   ./src/rssmanage --help
   assert_output --partial "Usage" 
}

@test "Test help invocation using short" {
   ./src/rssmanage -h
   assert_output --partial "Usage" 
}
