class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :category, :body, :created_at

  def category
    Category.find(object.category.id).name
  end

  def created_at
    Time.parse(object.created_at.to_s).to_i
  end
end
