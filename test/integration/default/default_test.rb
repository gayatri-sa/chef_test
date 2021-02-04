# InSpec test for recipe test::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe file('/root/test.txt') do
  it { should exist }
end

