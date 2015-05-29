require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
:adapter => 'sqlite3',
:database => 'dev.db'
)

# ActiveRecord::Base.default_timezone= :local

class Prenom < ActiveRecord::Base
end

get '/' do
	@bdd = Prenom.all #variable pour stocker les données 

   erb :index

end

get '/inscription' do 
     
     erb :form
end


post '/inscription' do
    @client = Prenom.new(params[:formulaire]) #Prenom nom de l'objet stocke les données affichées dans la variable client définie avec le formulaire 
    @client.save #permet de les sauvegarder
    redirect '/'

end

put '/' do
end

delete '/' do
end
