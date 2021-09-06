require 'rails_helper'

describe 'IdeaAPI' do
  it '新しいideaを作成する' do
    valid_params = { category_name: "アプリ", body: 'タスク管理ツール' }
    expect { post '/api/v1/ideas', params: { category_name: valid_params[:category_name], body: valid_params[:body] } }.to change(Idea, :count).by(+1)
    expect(response.status).to eq(200)
  end
end
