require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Api::ItemsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Item. As you add validations to Item, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { name: "Item Name" }
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Api::ItemsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all items as @items" do
      item = Item.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:items)).to eq([item])
    end
  end

  describe "GET #show" do
    it "assigns the requested item as @item" do
      item = Item.create! valid_attributes
      get :show, {:id => item.to_param}, valid_session
      expect(assigns(:item)).to eq(item)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Item" do
        expect {
          post :create, {:item => valid_attributes}, valid_session
        }.to change(Item, :count).by(1)
      end

      it "assigns a newly created item as @item" do
        post :create, {:item => valid_attributes}, valid_session
        expect(assigns(:item)).to be_a(Item)
        expect(assigns(:item)).to be_persisted
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved item as @item" do
        post :create, {:item => invalid_attributes}, valid_session
        expect(assigns(:item)).to be_a_new(Item)
      end

      it "re-renders the 'new' template" do
        post :create, {:item => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested item" do
        item = Item.create! valid_attributes
        put :update, {:id => item.to_param, :item => new_attributes}, valid_session
        item.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested item as @item" do
        item = Item.create! valid_attributes
        put :update, {:id => item.to_param, :item => valid_attributes}, valid_session
        expect(assigns(:item)).to eq(item)
      end
    end

    context "with invalid params" do
      it "assigns the item as @item" do
        item = Item.create! valid_attributes
        put :update, {:id => item.to_param, :item => invalid_attributes}, valid_session
        expect(assigns(:item)).to eq(item)
      end

      it "re-renders the 'edit' template" do
        item = Item.create! valid_attributes
        put :update, {:id => item.to_param, :item => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested item" do
      item = Item.create! valid_attributes
      expect {
        delete :destroy, {:id => item.to_param}, valid_session
      }.to change(Item, :count).by(-1)
    end
  end
end
