class Api::V1::IdeasController < ApplicationController
  def create
    category_name = params[:category_name]
    category = Category.find_or_create_by(name: category_name)
    idea = Idea.new(category_id: category.id, body: params[:body])
    if idea.valid?
      idea.save
      render json: { status: 201, data: idea }
    else
      render json: { status: 422 }
    end
  end

  def index
    category_name = params[:category_name]
    if category_name != nil
      if category = Category.find_by(name: category_name) != nil
        category_id = Category.find_by(name: category_name).id
        ideas = Idea.where(category_id: category_id)
        render json: ideas, each_serializer: IdeaSerializer, root: "data"
      else
        render json: { status: 404 }
      end
    else
      ideas = Idea.all
      render json: ideas, each_serializer: IdeaSerializer, root: "data"
    end
  end
end
