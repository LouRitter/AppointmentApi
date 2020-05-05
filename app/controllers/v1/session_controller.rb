class V1::SessionController < ApplicationController
    def create 
        @user = User.where(email: params[:email]).first 
        if @user
            render :create, status: :created
        else
            head(:unauthorized)
        end
    end

    def destroy 

    end
end
