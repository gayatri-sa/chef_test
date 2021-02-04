
property :repo_name, String, name_property: true
property :folder_name, String, default: ''
property :webserver, String, default: 'apache'

action :create do
  if platform?('windows') 
     root_folder = 'C:/inetpub/wwwroot/'
  elsif new_resource.webserver == 'nginx'
     root_folder = '/usr/share/nginx/html/'
  else
     #root_folder = '/var/www/html'
     root_folder = '/tmp/'
  end
  
  folder = "#{root_folder}#{new_resource.folder_name}"
  git 'get repo' do
    repository new_resource.repo_name
    destination "#{folder}"
  end

end
