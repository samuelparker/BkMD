# get '/symptoms' do
#   @categories = Category.all
#   erb :'sypmtoms/index'
# end

get '/symptoms' do
  @categories = Category.all
  erb :'symptoms/index'
end