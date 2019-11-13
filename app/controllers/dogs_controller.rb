class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end


    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.new(dog_params)
        if @dog.save
            redirect_to dogs_path
        else
            flash[:error] = @dog.errors.full_messages
            # redirect_to new_dog_path
            render 'new'
        end
    end


    private

        def dog_params
            params.require(:dog).permit(:name, :fur_color, :breed, :bones, :owner)
        end

end
