require 'rails_helper'
require 'uri'

describe 'IdeaAPI' do
  it '新しいideaを作成する。' do
    valid_params = { category_name: "アプリ", body: 'タスク管理ツール' }
    expect { post '/api/v1/ideas', params: { category_name: valid_params[:category_name], body: valid_params[:body] } }.to change(Idea, :count).by(+1)
    expect(response.status).to eq(200)
  end
  
  it 'category_nameが指定されている場合は、該当するcategoryのideasの一覧を返却する。' do
    FactoryBot.create(:category)
    FactoryBot.create_list(:idea, 10)
    url = URI.encode'/api/v1/ideas?category_name=アプリ'
    get url
    json = JSON.parse(response.body)
    expect(response.status).to eq(200)
    expect(json['data'].length).to eq(10)
  end

  it 'category_nameが指定されていない場合は、全てのideasを返却する。' do
    
  end

  it '登録されていないカテゴリーのリクエストの場合は、ステータスコード404を返却する。' do
    
  end
end
