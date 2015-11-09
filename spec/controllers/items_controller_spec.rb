require 'rails_helper'
include RandomData

RSpec.describe ItemsController, type: :controller do
  # let(:my_user) { User.create!(user_name: RandomData.random_word, email: RandomData.random_email, password: RandomData.random_sentence)}
  let (:my_item) { Item.create!(name: RandomData.random_sentence) }




  describe "POST create" do

    it "increases the number of items by 1" do
      expect{ post :create, {item: {name: RandomData.random_sentence}}}.to change(Item,:count).by(1)
    end

#     it "assigns the new item to @item" do
#       item :create, item: {name: RandomData.random_sentence}
#       expect(assigns(:item)).to eq Item.last
#     end
#   end
#
#   context "signed-in user" do
#     before do
#       create_session(my_user)
#     end
#     describe "GET show" do
#       it "returns http success" do
#         get :show, user_id: my_user.id, id: my_item.id
#         expect(response).to have_http_status(:success)
#       end
#
#       it "renders the #show view " do
#         get :show, user_id: my_user.id, id: my_item.id
#         expect(response).to render_template :show
#       end
#
#       it "assigns my_item to @item" do
#         get :show, user_id: my_user.id, id: my_item.id
#         expect(assigns(:item)).to eq(my_item)
#       end
#     end
#
#     describe "ITEM create" do
#       it "increases the number of Item by 1" do
#         expect{item :create, user_id: my_user.id, item: {name: RandomData.random_sentence}}.to change(Item, :count).by(1)
#       end
#
#       it "assigns the new item to @item" do
#         item :create, item_id: my_item.id, item: {name: RandomData.random_sentence}
#         expect(assigns(:item)).to eq Item.last
#       end
#     end
  end
#
#
end
