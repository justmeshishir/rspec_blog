require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    describe "GET#index" do
        it "renders the index template" do
            get :index
            expect(response).to render_template :index 
        end
    end
    
    describe "GET#new" do
        it "renders the new template" do
            get :new
            expect(response).to render_template :new
        end
    end
    
    describe "POST#create" do
        context "with valid attributes" do
            it "creates a new post" do
                expect{
                    post :create, post: FactoryGirl.attributes_for(:post)
                }.to change(Post, :count).by(1)
            end

            it "redirects to root path" do
            
            end
        end
        
        context "with invalid attributes" do
            it "doesnot creates a new post" do
            
            end

            it "redirects to new template" do
            
            end
        end
    end
    
    describe "GET#show" do
        it "render the show template" do
            post = FactoryGirl.create(:post)
            get :show, id: post.id
            expect(response).to render_template :show
        end
    end
end
