class PetsController < ApplicationController

  get '/pets' do
    @pets = Pet.all
    erb :'/pets/index'
  end

  get '/pets/new' do
    @owners = Owner.all
    erb :'/pets/new'
  end

  post '/pets' do
    pet = Pet.create(params[:pet])
    if !params[:owner][:name].empty?
      Owner.create(name: params[:owner][:name])
    end
    pet.save
    redirect to "pets/#{@pet.id}"
  end

  get '/pets/:id' do
    @owners = Owner.find(params[:id])
    erb :'/pets/show'
  end

  post '/pets/:id' do

    redirect to "pets/#{@pet.id}"
  end
end
