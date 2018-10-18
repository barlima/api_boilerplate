module Api
  module V1
    class IdeasController < ApplicationController
      before_action :authenticate_user

      def index
        @ideas = Idea.all
        render json: @ideas
      end
    end
  end
end