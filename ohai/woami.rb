
Ohai.plugin(:WhoAmI) do
  provides 'whoami'
  
  collect_data(:default) do
    whoami 'I am me'
  end
end
