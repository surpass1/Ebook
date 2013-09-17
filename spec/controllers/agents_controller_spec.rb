require 'spec_helper'

describe AgentsController do
	render_views
	describe "GET 'index'" do
		describe "for non registered users" do
			it "should not allow access" do
				get :index
			end
		end 

	end


end
