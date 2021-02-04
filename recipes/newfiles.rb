

test_from_git 'https://github.com/gayatri-sa/simple_dotnet' do
  folder_name 'simple2'
end

cookbook_file 'copy dummy file' do
  source 'dummy.txt'
  path 'C:/newfile1.txt'
  only_if { platform?('windows') }
end

dest = if platform?('windows')
         'C:/index.html'
       else
         '/root/index.html'
       end

template 'file from template' do
  source 'index.html.erb'
  path   "#{dest}"
  variables(
    title: 'Gayatri - VER 0.2.0',
    desc: 'DevOps Professionals!'
  )
end
