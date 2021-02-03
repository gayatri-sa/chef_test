#
# Cookbook:: test
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file 'create file' do
  content 'This is a test file'
  path 'C:/test.txt'
  only_if { platform?('windows') }
end

file 'create file-linux' do
  content 'This is a test file'
  path '/root/test.txt'
  not_if { platform?('windows') }
end
