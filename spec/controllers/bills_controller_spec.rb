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

RSpec.describe BillsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Bill. As you add validations to Bill, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {date: DateTime.now, bill_type: "Dinner", amount: 25.0}
  }

  let(:invalid_attributes) {
    {date: nil, bill_type: "Dinner", amount: 25.0}
  }

  describe "GET #index" do
    it "assigns all bills as @bills" do
      bill = Bill.create! valid_attributes
      get :index, {}
      expect(assigns(:bills)).to eq([bill])
    end
  end

  describe "GET #show" do
    it "assigns the requested bill as @bill" do
      bill = Bill.create! valid_attributes
      get :show, {:id => bill.to_param}
      expect(assigns(:bill)).to eq(bill)
    end
  end

  describe "GET #new" do
    it "assigns a new bill as @bill" do
      get :new, {}
      expect(assigns(:bill)).to be_a_new(Bill)
    end
  end

  describe "GET #edit" do
    it "assigns the requested bill as @bill" do
      bill = Bill.create! valid_attributes
      get :edit, {:id => bill.to_param}
      expect(assigns(:bill)).to eq(bill)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Bill" do
        expect {
          post :create, {:bill => valid_attributes}
        }.to change(Bill, :count).by(1)
      end

      it "assigns a newly created bill as @bill" do
        post :create, {:bill => valid_attributes}
        expect(assigns(:bill)).to be_a(Bill)
        expect(assigns(:bill)).to be_persisted
      end

      it "redirects to the created bill" do
        post :create, {:bill => valid_attributes}
        expect(response).to redirect_to(Bill.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved bill as @bill" do
        post :create, {:bill => invalid_attributes}
        expect(assigns(:bill)).to be_a_new(Bill)
      end

      it "re-renders the 'new' template" do
        post :create, {:bill => invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {date: DateTime.now, bill_type: "Lunch", amount: 55.0}
      }

      it "updates the requested bill" do
        bill = Bill.create! valid_attributes
        put :update, {:id => bill.to_param, :bill => new_attributes}
        bill.reload
        expect(bill.amount).to eq 55.0
        expect(bill.bill_type).to eq "Lunch"
      end

      it "assigns the requested bill as @bill" do
        bill = Bill.create! valid_attributes
        put :update, {:id => bill.to_param, :bill => valid_attributes}
        expect(assigns(:bill)).to eq(bill)
      end

      it "redirects to the bill" do
        bill = Bill.create! valid_attributes
        put :update, {:id => bill.to_param, :bill => valid_attributes}
        expect(response).to redirect_to(bill)
      end
    end

    context "with invalid params" do
      it "assigns the bill as @bill" do
        bill = Bill.create! valid_attributes
        put :update, {:id => bill.to_param, :bill => invalid_attributes}
        expect(assigns(:bill)).to eq(bill)
      end

      it "re-renders the 'edit' template" do
        bill = Bill.create! valid_attributes
        put :update, {:id => bill.to_param, :bill => invalid_attributes}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested bill" do
      bill = Bill.create! valid_attributes
      expect {
        delete :destroy, {:id => bill.to_param}
      }.to change(Bill, :count).by(-1)
    end

    it "redirects to the bills list" do
      bill = Bill.create! valid_attributes
      delete :destroy, {:id => bill.to_param}
      expect(response).to redirect_to(bills_url)
    end
  end

end