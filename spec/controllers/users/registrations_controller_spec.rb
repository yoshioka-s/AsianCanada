require 'rails_helper'

RSpec.describe Users::RegistrationsController, type: :controller do
  let(:user_params) { {username: 'test', email: 'test@picknwork.com', password: 'test1234', password_confirmation: 'test1234'} }


  describe 'GET #new' do
    it 'renders new view' do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    it 'redirects to root_path' do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      post :create, {user: user_params}
      expect(response).to redirect_to root_path
    end
    it 'creates a new user' do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      expect {
        post :create, {user: user_params}
      }.to change(User, :count).by 1
      expect(User.last.email).to eql('test@picknwork.com')
      expect(User.last.username).to eql('test')
    end
    it 'sends confirmation email' do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      expect {
        post :create, {user: user_params}
      }.to change{ActionMailer::Base.deliveries.size}.by 1
    end
  end
end
