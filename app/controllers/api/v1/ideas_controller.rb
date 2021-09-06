module Api
  module V1
    class IdeasController < ApplicationController

      def create
        category_name = params[:category_name]
        category = Category.find_or_create_by(name: category_name)
        idea = Idea.new(category_id: category.id, body: params[:body])
        if idea.save
          render json: { status: 201, data: idea }
        else
          render json: { status: 422 }
        end
      end

      def index
        ideas = Idea.order(created_at: :desc)
        render json: { data: ideas }
      end
    end
  end
end
