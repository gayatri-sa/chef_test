
cookbook_file 'copy dummy file' do
  source 'dummy.txt'
  path 'C:/newfile.txt'
end

template 'file from template' do
  source 'index.html.erb'
  path 'C:/index.html'
  variables(
    title: 'Gayatri',
    desc: 'DevOps Professionals!'
  ) 
end
