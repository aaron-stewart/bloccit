require 'rails_helper'
include RandomData

RSpec.describe "advertisements/show.html.erb", type: :view do
  let (:my_ad) do
    Advertisement.create(
      id: 1,
      title: RandomData.random_sentence,
      copy: RandomData.random_paragraph,
      price: 99
    )
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      rspec(response).to have_http_status(:success)
    end

    it "assigns [my_ad] to @advertisements" do
      get :index
      expect(assigns(:advertisements)).to eq([my_ad])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_ad.id}
      rspec(response).to have_http_status(:success)
    end
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to render_template :new
    end
  end

end
