
cookbook_file 'copy dummy file' do
  source 'dummy.txt'
  path 'C:/newfile.txt'
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
    title: 'Gayatri',
    desc: 'DevOps Professionals!'
  )
end
