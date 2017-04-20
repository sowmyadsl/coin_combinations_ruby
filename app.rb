require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb') # this line allows us to see changes in sinatra w/o re starting the server
require('./lib/coin')


get('/') do
  erb(:index)
end
get('/change') do
  @userinput = params.fetch('input-field').to_i.change
  erb(:change)
end
