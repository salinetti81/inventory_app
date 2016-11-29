class LandingsController < ApplicationController
   before_action :authenticate_user!, only: :secure
    def index
    end

    def secure
      id = current_user.id
        user = User.find(id)

        puts "============"
        p user
        puts "============"
    end

end