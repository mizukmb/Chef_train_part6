default['nodejs']['versions'] = "v0.10.26"
default['nodejs']['dirname']  = "node-#{default['nodejs']['versions']}"
default['nodejs']['filename'] = "#{default['nodejs']['dirname']}.tar.gz"
default['nodejs']['remote_uri'] = "http://nodejs.org/dist/#{default['nodejs']['versions']}/#{default['nodejs']['filename']}"
